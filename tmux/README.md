
# Tmux tips 

tmux config file location is ~/.tumx.conf, you can make a soft link with ln.

## Shortcut Reference Now a Ctrl-b (`) options reference:

#### Basics

    ? get help
#### Session management

    s list sessions
    $ rename the current session
    d detach from the current session

#### Windows

    c create a new window
    , rename the current window
    w list windows
    % split horizontally
    " split vertically
    z maximaze the current pane(z again to back normal)
    n change to the next window
    p change to the previous window
    0 to 9 select windows 0 through 9

#### Panes

    % create a horizontal pane
    " create a vertical pane
    h move to the left pane. *
    j move to the pane below *
    l move to the right pane *
    k move to the pane above *
    k move to the pane above *
    q show pane numbers
    o toggle between panes
    } swap with next pane
    { swap with previous pane
    ! break the pane out of the window
    x kill the current pane

#### Miscellaneous

    t show the time in current pane
