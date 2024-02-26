# Module: `stdgo.testing.internal.testdeps`

[(view library index)](../../../stdgo.md)


# Overview



Package testdeps provides access to dependencies needed by test execution.  


This package is imported by the generated main package, which passes
TestDeps into testing.Main. This allows tests to use packages at run time
without making those packages direct dependencies of package testing.
Direct dependencies of package testing are harder to write tests for.  

# Index


- [Variables](<#variables>)

- [`function get_importPath():String`](<#function-get_importpath>)

- [`function set_importPath(v:String):String`](<#function-set_importpath>)

- [typedef T\_testLog](<#typedef-t_testlog>)

- [typedef T\_testLog\_asInterface](<#typedef-t_testlog_asinterface>)

- [typedef T\_testLog\_static\_extension](<#typedef-t_testlog_static_extension>)

- [typedef TestDeps](<#typedef-testdeps>)

- [typedef TestDeps\_asInterface](<#typedef-testdeps_asinterface>)

- [typedef TestDeps\_static\_extension](<#typedef-testdeps_static_extension>)

# Variables


```haxe
import stdgo.testing.internal.testdeps.Testdeps
```


```haxe
var importPath:String
```


# Functions


```haxe
import stdgo.testing.internal.testdeps.Testdeps
```


## function get\_importPath


```haxe
function get_importPath():String
```


[\(view code\)](<./Testdeps.hx#L12>)


## function set\_importPath


```haxe
function set_importPath(v:String):String
```


[\(view code\)](<./Testdeps.hx#L13>)


# Typedefs


```haxe
import stdgo.testing.internal.testdeps.*
```


## typedef T\_testLog


```haxe
typedef T_testLog = Dynamic;
```


## typedef T\_testLog\_asInterface


```haxe
typedef T_testLog_asInterface = Dynamic;
```


## typedef T\_testLog\_static\_extension


```haxe
typedef T_testLog_static_extension = Dynamic;
```


## typedef TestDeps


```haxe
typedef TestDeps = Dynamic;
```


## typedef TestDeps\_asInterface


```haxe
typedef TestDeps_asInterface = Dynamic;
```


## typedef TestDeps\_static\_extension


```haxe
typedef TestDeps_static_extension = Dynamic;
```


