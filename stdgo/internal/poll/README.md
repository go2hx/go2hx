# Module: `stdgo.internal.poll`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function acceptFunc()`](<#function-acceptfunc>)

- [`function closeFunc()`](<#function-closefunc>)

- [`function testHookDidWritev()`](<#function-testhookdidwritev>)

- [class Poll](<#class-poll>)

  - [`function dupCloseOnExec(fd:Int):stdgo.Tuple3<Int, String, stdgo.Error>`](<#poll-function-dupcloseonexec>)

  - [`function isPollDescriptor(fd:stdgo.GoUIntptr):Bool`](<#poll-function-ispolldescriptor>)

- [abstract T\_errNetClosing](<#abstract-t_errnetclosing>)

- [abstract DeadlineExceededError](<#abstract-deadlineexceedederror>)

- [abstract T\_fdMutex](<#abstract-t_fdmutex>)

- [abstract T\_pollDesc](<#abstract-t_polldesc>)

- [abstract FD](<#abstract-fd>)

- [abstract SysFile](<#abstract-sysfile>)

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


## function testHookDidWritev


```haxe
function testHookDidWritev()
```


[\(view code\)](<./Poll.hx>)


# Classes


```haxe
import stdgo.internal.poll.*
```


## class Poll


```
Package poll supports non-blocking I/O on file descriptors with polling.
    This supports I/O operations that block only a goroutine, not a thread.
    This is used by the net and os packages.
    It uses a poller built into the runtime, with support from the
    runtime scheduler.
```
### Poll function dupCloseOnExec


```haxe
function dupCloseOnExec(fd:Int):stdgo.Tuple3<Int, String, stdgo.Error>
```



DupCloseOnExec dups fd and marks it close\-on\-exec.  

[\(view code\)](<./Poll.hx#L503>)


### Poll function isPollDescriptor


```haxe
function isPollDescriptor(fd:stdgo.GoUIntptr):Bool
```


```
IsPollDescriptor reports whether fd is the descriptor being used by the poller.
        This is only used for testing.
```
[\(view code\)](<./Poll.hx#L497>)


# Abstracts


## abstract T\_errNetClosing


[\(view file containing code\)](<./Poll.hx>)


## abstract DeadlineExceededError


[\(view file containing code\)](<./Poll.hx>)


## abstract T\_fdMutex


[\(view file containing code\)](<./Poll.hx>)


## abstract T\_pollDesc


[\(view file containing code\)](<./Poll.hx>)


## abstract FD


[\(view file containing code\)](<./Poll.hx>)


## abstract SysFile


[\(view file containing code\)](<./Poll.hx>)


