# Module: `stdgo.testing.internal`

[(view library index)](../../stdgo.md)


# Overview



Package testdeps provides access to dependencies needed by test execution.  


This package is imported by the generated main package, which passes
TestDeps into testing.Main. This allows tests to use packages at run time
without making those packages direct dependencies of package testing.
Direct dependencies of package testing are harder to write tests for.  

# Index


- [Variables](<#variables>)

- [class Testdeps](<#class-testdeps>)

- [abstract TestDeps](<#abstract-testdeps>)

- [abstract T\_testLog](<#abstract-t_testlog>)

# Variables


```haxe
import stdgo.testing.internal.Testdeps
```


```haxe
var importPath:String
```


# Classes


```haxe
import stdgo.testing.internal.*
```


## class Testdeps


# Abstracts


## abstract TestDeps


[\(view file containing code\)](<./Testdeps.hx>)


## abstract T\_testLog


[\(view file containing code\)](<./Testdeps.hx>)


