#!/usr/bin/env python

import logging
import logging.handlers
import logging.config



def initlog(level=None):

    if level is None:
        level = logging.DEBUG if __debug__ else logging.INFO

    class MyFormatter(logging.Formatter):
        def format(self, record):
            dformatter = '%(levelname)s: [%(asctime)s] - %(pathname)s %(lineno)d - %(message)s'
            formatter = '%(levelname)s: [%(asctime)s] - %(message)s'
            if record.levelno <= logging.DEBUG:
                self._fmt = dformatter
            else:
                self._fmt = formatter
            return super(MyFormatter, self).format(record)

    config = {
        "version": 1,
        "disable_existing_loggers": True,
        "formatters": {
            "custom": {
                '()': MyFormatter
            },
            "simple": {
                "format": "%(asctime)s - %(name)s - %(levelname)s - %(message)s"
            },
            "verbose": {
                "format": "%(asctime)s - %(levelname)s - %(module)s %(lineno)d - %(message)s"
            }
        },
        "handlers": {
            "console": {
                "class": "logging.StreamHandler",
                "level": "DEBUG",
                "formatter": "custom",
                "stream": "ext://sys.stdout"
            },
            "file_handler": {
                "class": "logging.handlers.RotatingFileHandler",
                "level": "DEBUG",
                "formatter": "custom",
                "filename": "app.log",
                "maxBytes": 10*1000**3,  # 10M
                "backupCount": 5,
                "encoding": "utf8"
            }
        },
        'root': {
            'level': level,
            'handlers': ['file_handler']
        },
        "loggers": {
            "myloger": {
                "level": level,
                "handlers": [
                    "console"
                ],
            }
        },
    }

    logging.config.dictConfig(config)


initlog()
logging.debug('debug 1')
logger = logging.getLogger("myloger")
logger.debug('test d')

