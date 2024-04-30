# Module: `stdgo.internal.poll`

[(view library index)](../../stdgo.md)


# Overview


```
Package poll supports non-blocking I/O on file descriptors with polling.
    This supports I/O operations that block only a goroutine, not a thread.
    This is used by the net and os packages.
    It uses a poller built into the runtime, with support from the
    runtime scheduler.
```
# Index


- [Variables](<#variables>)

- [`function acceptFunc()`](<#function-acceptfunc>)

- [`function closeFunc()`](<#function-closefunc>)

- [`function dupCloseOnExec(fd:Int):stdgo.Tuple3<Int, String, stdgo.Error>`](<#function-dupcloseonexec>)

- [`function get_acceptFunc():()`](<#function-get_acceptfunc>)

- [`function get_closeFunc():()`](<#function-get_closefunc>)

- [`function get_errDeadlineExceeded():stdgo.Error`](<#function-get_errdeadlineexceeded>)

- [`function get_errFileClosing():stdgo.Error`](<#function-get_errfileclosing>)

- [`function get_errNetClosing():stdgo._internal.internal.poll.T_errNetClosing`](<#function-get_errnetclosing>)

- [`function get_errNoDeadline():stdgo.Error`](<#function-get_errnodeadline>)

- [`function get_errNotPollable():stdgo.Error`](<#function-get_errnotpollable>)

- [`function get_testHookDidWritev():()`](<#function-get_testhookdidwritev>)

- [`function isPollDescriptor(fd:stdgo.GoUIntptr):Bool`](<#function-ispolldescriptor>)

- [`function set_acceptFunc(v:()):()`](<#function-set_acceptfunc>)

- [`function set_closeFunc(v:()):()`](<#function-set_closefunc>)

- [`function set_errDeadlineExceeded(v:stdgo.Error):stdgo.Error`](<#function-set_errdeadlineexceeded>)

- [`function set_errFileClosing(v:stdgo.Error):stdgo.Error`](<#function-set_errfileclosing>)

- [`function set_errNetClosing(v:stdgo._internal.internal.poll.T_errNetClosing):stdgo._internal.internal.poll.T_errNetClosing`](<#function-set_errnetclosing>)

- [`function set_errNoDeadline(v:stdgo.Error):stdgo.Error`](<#function-set_errnodeadline>)

- [`function set_errNotPollable(v:stdgo.Error):stdgo.Error`](<#function-set_errnotpollable>)

- [`function set_testHookDidWritev(v:()):()`](<#function-set_testhookdidwritev>)

- [`function testHookDidWritev()`](<#function-testhookdidwritev>)

- [typedef DeadlineExceededError](<#typedef-deadlineexceedederror>)

- [typedef DeadlineExceededError\_asInterface](<#typedef-deadlineexceedederror_asinterface>)

- [typedef DeadlineExceededError\_static\_extension](<#typedef-deadlineexceedederror_static_extension>)

- [typedef FD](<#typedef-fd>)

- [typedef FD\_asInterface](<#typedef-fd_asinterface>)

- [typedef FD\_static\_extension](<#typedef-fd_static_extension>)

- [typedef SysFile](<#typedef-sysfile>)

- [typedef SysFile\_asInterface](<#typedef-sysfile_asinterface>)

- [typedef SysFile\_static\_extension](<#typedef-sysfile_static_extension>)

- [typedef T\_errNetClosing](<#typedef-t_errnetclosing>)

- [typedef T\_errNetClosing\_asInterface](<#typedef-t_errnetclosing_asinterface>)

- [typedef T\_errNetClosing\_static\_extension](<#typedef-t_errnetclosing_static_extension>)

- [typedef T\_fdMutex](<#typedef-t_fdmutex>)

- [typedef T\_fdMutex\_asInterface](<#typedef-t_fdmutex_asinterface>)

- [typedef T\_fdMutex\_static\_extension](<#typedef-t_fdmutex_static_extension>)

- [typedef T\_pollDesc](<#typedef-t_polldesc>)

- [typedef T\_pollDesc\_asInterface](<#typedef-t_polldesc_asinterface>)

- [typedef T\_pollDesc\_static\_extension](<#typedef-t_polldesc_static_extension>)

# Variables


```haxe
import stdgo.internal.poll.Poll
```


```haxe
var errDeadlineExceeded:stdgo.Error
```


```haxe
var errFileClosing:stdgo.Error
```


```haxe
var errNetClosing:stdgo._internal.internal.poll.T_errNetClosing
```


```haxe
var errNoDeadline:stdgo.Error
```


```haxe
var errNotPollable:stdgo.Error
```


# Functions


```haxe
import stdgo.internal.poll.Poll
```


## function acceptFunc


```haxe
function acceptFunc()
```


[\(view code\)](<./Poll.hx>)


## function closeFunc


```haxe
function closeFunc()
```


[\(view code\)](<./Poll.hx>)


## function dupCloseOnExec


```haxe
function dupCloseOnExec(fd:Int):stdgo.Tuple3<Int, String, stdgo.Error>
```



DupCloseOnExec dups fd and marks it close\-on\-exec.  

[\(view code\)](<./Poll.hx#L48>)


## function get\_acceptFunc


```haxe
function get_acceptFunc():()
```


[\(view code\)](<./Poll.hx#L32>)


## function get\_closeFunc


```haxe
function get_closeFunc():()
```


[\(view code\)](<./Poll.hx#L29>)


## function get\_errDeadlineExceeded


```haxe
function get_errDeadlineExceeded():stdgo.Error
```


[\(view code\)](<./Poll.hx#L20>)


## function get\_errFileClosing


```haxe
function get_errFileClosing():stdgo.Error
```


[\(view code\)](<./Poll.hx#L14>)


## function get\_errNetClosing


```haxe
function get_errNetClosing():stdgo._internal.internal.poll.T_errNetClosing
```


[\(view code\)](<./Poll.hx#L11>)


## function get\_errNoDeadline


```haxe
function get_errNoDeadline():stdgo.Error
```


[\(view code\)](<./Poll.hx#L17>)


## function get\_errNotPollable


```haxe
function get_errNotPollable():stdgo.Error
```


[\(view code\)](<./Poll.hx#L23>)


## function get\_testHookDidWritev


```haxe
function get_testHookDidWritev():()
```


[\(view code\)](<./Poll.hx#L26>)


## function isPollDescriptor


```haxe
function isPollDescriptor(fd:stdgo.GoUIntptr):Bool
```


```
IsPollDescriptor reports whether fd is the descriptor being used by the poller.
    This is only used for testing.
```
[\(view code\)](<./Poll.hx#L44>)


## function set\_acceptFunc


```haxe
function set_acceptFunc(v:()):()
```


[\(view code\)](<./Poll.hx#L33>)


## function set\_closeFunc


```haxe
function set_closeFunc(v:()):()
```


[\(view code\)](<./Poll.hx#L30>)


## function set\_errDeadlineExceeded


```haxe
function set_errDeadlineExceeded(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Poll.hx#L21>)


## function set\_errFileClosing


```haxe
function set_errFileClosing(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Poll.hx#L15>)


## function set\_errNetClosing


```haxe
function set_errNetClosing(v:stdgo._internal.internal.poll.T_errNetClosing):stdgo._internal.internal.poll.T_errNetClosing
```


[\(view code\)](<./Poll.hx#L12>)


## function set\_errNoDeadline


```haxe
function set_errNoDeadline(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Poll.hx#L18>)


## function set\_errNotPollable


```haxe
function set_errNotPollable(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Poll.hx#L24>)


## function set\_testHookDidWritev


```haxe
function set_testHookDidWritev(v:()):()
```


[\(view code\)](<./Poll.hx#L27>)


## function testHookDidWritev


```haxe
function testHookDidWritev()
```


[\(view code\)](<./Poll.hx>)


# Typedefs


```haxe
import stdgo.internal.poll.*
```


## typedef DeadlineExceededError


```haxe
typedef DeadlineExceededError = Dynamic;
```


## typedef DeadlineExceededError\_asInterface


```haxe
typedef DeadlineExceededError_asInterface = Dynamic;
```


## typedef DeadlineExceededError\_static\_extension


```haxe
typedef DeadlineExceededError_static_extension = Dynamic;
```


## typedef FD


```haxe
typedef FD = Dynamic;
```


## typedef FD\_asInterface


```haxe
typedef FD_asInterface = Dynamic;
```


## typedef FD\_static\_extension


```haxe
typedef FD_static_extension = Dynamic;
```


## typedef SysFile


```haxe
typedef SysFile = Dynamic;
```


## typedef SysFile\_asInterface


```haxe
typedef SysFile_asInterface = Dynamic;
```


## typedef SysFile\_static\_extension


```haxe
typedef SysFile_static_extension = Dynamic;
```


## typedef T\_errNetClosing


```haxe
typedef T_errNetClosing = Dynamic;
```


## typedef T\_errNetClosing\_asInterface


```haxe
typedef T_errNetClosing_asInterface = Dynamic;
```


## typedef T\_errNetClosing\_static\_extension


```haxe
typedef T_errNetClosing_static_extension = Dynamic;
```


## typedef T\_fdMutex


```haxe
typedef T_fdMutex = Dynamic;
```


## typedef T\_fdMutex\_asInterface


```haxe
typedef T_fdMutex_asInterface = Dynamic;
```


## typedef T\_fdMutex\_static\_extension


```haxe
typedef T_fdMutex_static_extension = Dynamic;
```


## typedef T\_pollDesc


```haxe
typedef T_pollDesc = Dynamic;
```


## typedef T\_pollDesc\_asInterface


```haxe
typedef T_pollDesc_asInterface = Dynamic;
```


## typedef T\_pollDesc\_static\_extension


```haxe
typedef T_pollDesc_static_extension = Dynamic;
```


