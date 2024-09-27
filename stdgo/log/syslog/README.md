# Module: `stdgo.log.syslog`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Syslog](<#class-syslog>)

  - [`function dial(_network:String, _raddr:String, _priority:stdgo.log.syslog.Priority, _tag:String):stdgo.Tuple<stdgo.log.syslog.Writer, stdgo.Error>`](<#syslog-function-dial>)

  - [`function newLogger(_p:stdgo.log.syslog.Priority, _logFlag:Int):stdgo.Tuple<stdgo._internal.log.Logger, stdgo.Error>`](<#syslog-function-newlogger>)

  - [`function new_(_priority:stdgo.log.syslog.Priority, _tag:String):stdgo.Tuple<stdgo.log.syslog.Writer, stdgo.Error>`](<#syslog-function-new_>)

- [typedef Priority](<#typedef-priority>)

- [typedef T\_serverConn](<#typedef-t_serverconn>)

- [abstract Writer](<#abstract-writer>)

- [abstract T\_netConn](<#abstract-t_netconn>)

# Constants


```haxe
import stdgo.log.syslog.Syslog
```


```haxe
final log_ALERT:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_ALERT.log_ALERT
```


```haxe
final log_AUTH:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_AUTH.log_AUTH
```


```haxe
final log_AUTHPRIV:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_AUTHPRIV.log_AUTHPRIV
```


```haxe
final log_CRIT:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_CRIT.log_CRIT
```


```haxe
final log_CRON:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_CRON.log_CRON
```


```haxe
final log_DAEMON:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_DAEMON.log_DAEMON
```


```haxe
final log_DEBUG:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_DEBUG.log_DEBUG
```


```haxe
final log_EMERG:stdgo.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_EMERG.log_EMERG
```


```haxe
final log_ERR:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_ERR.log_ERR
```


```haxe
final log_FTP:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_FTP.log_FTP
```


```haxe
final log_INFO:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_INFO.log_INFO
```


```haxe
final log_KERN:stdgo.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_KERN.log_KERN
```


```haxe
final log_LOCAL0:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_LOCAL0.log_LOCAL0
```


```haxe
final log_LOCAL1:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_LOCAL1.log_LOCAL1
```


```haxe
final log_LOCAL2:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_LOCAL2.log_LOCAL2
```


```haxe
final log_LOCAL3:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_LOCAL3.log_LOCAL3
```


```haxe
final log_LOCAL4:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_LOCAL4.log_LOCAL4
```


```haxe
final log_LOCAL5:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_LOCAL5.log_LOCAL5
```


```haxe
final log_LOCAL6:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_LOCAL6.log_LOCAL6
```


```haxe
final log_LOCAL7:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_LOCAL7.log_LOCAL7
```


```haxe
final log_LPR:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_LPR.log_LPR
```


```haxe
final log_MAIL:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_MAIL.log_MAIL
```


```haxe
final log_NEWS:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_NEWS.log_NEWS
```


```haxe
final log_NOTICE:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_NOTICE.log_NOTICE
```


```haxe
final log_SYSLOG:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_SYSLOG.log_SYSLOG
```


```haxe
final log_USER:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_USER.log_USER
```


```haxe
final log_UUCP:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_UUCP.log_UUCP
```


```haxe
final log_WARNING:stdgo._internal.log.syslog.Priority = stdgo._internal.log.syslog.Syslog_log_WARNING.log_WARNING
```


# Classes


```haxe
import stdgo.log.syslog.*
```


## class Syslog


```
Package syslog provides a simple interface to the system log
    service. It can send messages to the syslog daemon using UNIX
    domain sockets, UDP or TCP.
```

Only one call to Dial is necessary. On write failures,
the syslog client will attempt to reconnect to the server
and write again.  


The syslog package is frozen and is not accepting new features.
Some external packages provide more functionality. See:  

```
    	https://godoc.org/?q=syslog
```
### Syslog function dial


```haxe
function dial(_network:String, _raddr:String, _priority:stdgo.log.syslog.Priority, _tag:String):stdgo.Tuple<stdgo.log.syslog.Writer, stdgo.Error>
```


```
Dial establishes a connection to a log daemon by connecting to
        address raddr on the specified network. Each write to the returned
        writer sends a log message with the facility and severity
        (from priority) and tag. If tag is empty, the os.Args[0] is used.
        If network is empty, Dial will connect to the local syslog server.
        Otherwise, see the documentation for net.Dial for valid values
        of network and raddr.
```
[\(view code\)](<./Syslog.hx#L199>)


### Syslog function newLogger


```haxe
function newLogger(_p:stdgo.log.syslog.Priority, _logFlag:Int):stdgo.Tuple<stdgo._internal.log.Logger, stdgo.Error>
```


```
NewLogger creates a log.Logger whose output is written to the
        system log service with the specified priority, a combination of
        the syslog facility and severity. The logFlag argument is the flag
        set passed through to log.New to create the Logger.
```
[\(view code\)](<./Syslog.hx#L211>)


### Syslog function new\_


```haxe
function new_(_priority:stdgo.log.syslog.Priority, _tag:String):stdgo.Tuple<stdgo.log.syslog.Writer, stdgo.Error>
```


```
New establishes a new connection to the system log daemon. Each
        write to the returned writer sends a log message with the given
        priority (a combination of the syslog facility and severity) and
        prefix tag. If tag is empty, the os.Args[0] is used.
```
[\(view code\)](<./Syslog.hx#L184>)


# Typedefs


```haxe
import stdgo.log.syslog.*
```


## typedef Priority


```haxe
typedef Priority = stdgo._internal.log.syslog.Priority;
```


## typedef T\_serverConn


```haxe
typedef T_serverConn = stdgo._internal.log.syslog.T_serverConn;
```


# Abstracts


## abstract Writer


[\(view file containing code\)](<./Syslog.hx>)


## abstract T\_netConn


[\(view file containing code\)](<./Syslog.hx>)


