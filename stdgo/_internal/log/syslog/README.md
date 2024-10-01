# Module: `stdgo._internal.log.syslog`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [`function _unixSyslog():{
	_1:stdgo.Error;
	_0:stdgo._internal.log.syslog.T_serverConn;
}`](<#function-_unixsyslog>)

- [`function dial(_network:stdgo.GoString, _raddr:stdgo.GoString, _priority:stdgo._internal.log.syslog.Priority, _tag:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.log.syslog.Writer>;
}`](<#function-dial>)

- [`function newLogger(_p:stdgo._internal.log.syslog.Priority, _logFlag:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.log.Logger>;
}`](<#function-newlogger>)

- [`function new_(_priority:stdgo._internal.log.syslog.Priority, _tag:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.log.syslog.Writer>;
}`](<#function-new_>)

- [class T\_netConn](<#class-t_netconn>)

  - [`function new(?_local:Bool, ?_conn:Null<stdgo._internal.net.Conn>):Void`](<#t_netconn-function-new>)

- [class Writer](<#class-writer>)

  - [`function new(?_priority:Null<stdgo._internal.log.syslog.Priority>, ?_tag:stdgo.GoString, ?_hostname:stdgo.GoString, ?_network:stdgo.GoString, ?_raddr:stdgo.GoString, ?_mu:stdgo._internal.sync.Mutex, ?_conn:Null<stdgo._internal.log.syslog.T_serverConn>):Void`](<#writer-function-new>)

- [typedef Priority](<#typedef-priority>)

- [typedef T\_serverConn](<#typedef-t_serverconn>)

# Constants


```haxe
import stdgo._internal.log.syslog.Syslog_new_
```


```haxe
final __0:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final __1:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final __2:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final __3:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final _facilityMask:stdgo.GoUInt64 = ((248i64 : stdgo.GoUInt64))
```


```haxe
final _severityMask:stdgo.GoUInt64 = ((7i64 : stdgo.GoUInt64))
```


```haxe
final log_ALERT:stdgo._internal.log.syslog.Priority = ((7 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_AUTH:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_AUTHPRIV:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_CRIT:stdgo._internal.log.syslog.Priority = ((7 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_CRON:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_DAEMON:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_DEBUG:stdgo._internal.log.syslog.Priority = ((7 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_EMERG:stdgo._internal.log.syslog.Priority = ((7 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_ERR:stdgo._internal.log.syslog.Priority = ((7 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_FTP:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_INFO:stdgo._internal.log.syslog.Priority = ((7 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_KERN:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_LOCAL0:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_LOCAL1:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_LOCAL2:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_LOCAL3:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_LOCAL4:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_LOCAL5:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_LOCAL6:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_LOCAL7:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_LPR:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_MAIL:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_NEWS:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_NOTICE:stdgo._internal.log.syslog.Priority = ((7 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_SYSLOG:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_USER:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_UUCP:stdgo._internal.log.syslog.Priority = ((184 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


```haxe
final log_WARNING:stdgo._internal.log.syslog.Priority = ((7 : stdgo._internal.log.syslog.Syslog_Priority.Priority))
```


# Functions


```haxe
import stdgo._internal.log.syslog.Syslog_new_
```


## function \_unixSyslog


```haxe
function _unixSyslog():{
	_1:stdgo.Error;
	_0:stdgo._internal.log.syslog.T_serverConn;
}
```


[\(view code\)](<./Syslog_new_.hx#L2>)


## function dial


```haxe
function dial(_network:stdgo.GoString, _raddr:stdgo.GoString, _priority:stdgo._internal.log.syslog.Priority, _tag:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.log.syslog.Writer>;
}
```


[\(view code\)](<./Syslog_new_.hx#L2>)


## function newLogger


```haxe
function newLogger(_p:stdgo._internal.log.syslog.Priority, _logFlag:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.log.Logger>;
}
```


[\(view code\)](<./Syslog_new_.hx#L2>)


## function new\_


```haxe
function new_(_priority:stdgo._internal.log.syslog.Priority, _tag:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.log.syslog.Writer>;
}
```


[\(view code\)](<./Syslog_new_.hx#L2>)


# Classes


```haxe
import stdgo._internal.log.syslog.*
```


## class T\_netConn


```haxe
var _conn:stdgo._internal.net.Conn
```


```haxe
var _local:Bool
```


### T\_netConn function new


```haxe
function new(?_local:Bool, ?_conn:Null<stdgo._internal.net.Conn>):Void
```


[\(view code\)](<./Syslog_T_netConn.hx#L5>)


## class Writer


```haxe
var _conn:stdgo._internal.log.syslog.T_serverConn
```


```haxe
var _hostname:stdgo.GoString
```


```haxe
var _mu:stdgo._internal.sync.Mutex
```


```haxe
var _network:stdgo.GoString
```


```haxe
var _priority:stdgo._internal.log.syslog.Priority
```


```haxe
var _raddr:stdgo.GoString
```


```haxe
var _tag:stdgo.GoString
```


### Writer function new


```haxe
function new(?_priority:Null<stdgo._internal.log.syslog.Priority>, ?_tag:stdgo.GoString, ?_hostname:stdgo.GoString, ?_network:stdgo.GoString, ?_raddr:stdgo.GoString, ?_mu:stdgo._internal.sync.Mutex, ?_conn:Null<stdgo._internal.log.syslog.T_serverConn>):Void
```


[\(view code\)](<./Syslog_Writer.hx#L10>)


# Typedefs


```haxe
import stdgo._internal.log.syslog.*
```


## typedef Priority


```haxe
typedef Priority = stdgo.GoInt;
```


## typedef T\_serverConn


```haxe
typedef T_serverConn = {
	public function _writeString(_p:stdgo._internal.log.syslog.Priority, _hostname:stdgo.GoString, _tag:stdgo.GoString, _s:stdgo.GoString, _nl:stdgo.GoString):stdgo.Error;
	public function _close():stdgo.Error;
};
```


