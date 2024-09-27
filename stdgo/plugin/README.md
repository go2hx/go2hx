# Module: `stdgo.plugin`

[(view library index)](../stdgo.md)


# Overview


# Index


- [class Plugin](<#class-plugin>)

  - [`function open(_path:String):stdgo.Tuple<stdgo.plugin.Plugin_, stdgo.Error>`](<#plugin-function-open>)

- [typedef Symbol](<#typedef-symbol>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [abstract Plugin\_](<#abstract-plugin_>)

# Classes


```haxe
import
```


## class Plugin



Package plugin implements loading and symbol resolution of Go plugins.  


A plugin is a Go main package with exported functions and variables that
has been built with:  

```
    	go build -buildmode=plugin
```

When a plugin is first opened, the init functions of all packages not
already part of the program are called. The main function is not run.
A plugin is only initialized once, and cannot be closed.  

### Warnings



The ability to dynamically load parts of an application during
execution, perhaps based on user\-defined configuration, may be a
useful building block in some designs. In particular, because
applications and dynamically loaded functions can share data
structures directly, plugins may enable very high\-performance
integration of separate parts.  


However, the plugin mechanism has many significant drawbacks that
should be considered carefully during the design. For example:  

```
      - Plugins are currently supported only on Linux, FreeBSD, and
        macOS, making them unsuitable for applications intended to be
        portable.
```
```
      - Applications that use plugins may require careful configuration
        to ensure that the various parts of the program be made available
        in the correct location in the file system (or container image).
        By contrast, deploying an application consisting of a single static
        executable is straightforward.
```
```
      - Reasoning about program initialization is more difficult when
        some packages may not be initialized until long after the
        application has started running.
```
```
      - Bugs in applications that load plugins could be exploited by
        an attacker to load dangerous or untrusted libraries.
```
```
      - Runtime crashes are likely to occur unless all parts of the
        program (the application and all its plugins) are compiled
        using exactly the same version of the toolchain, the same build
        tags, and the same values of certain flags and environment
        variables.
```
```
      - Similar crashing problems are likely to arise unless all common
        dependencies of the application and its plugins are built from
        exactly the same source code.
```
```
      - Together, these restrictions mean that, in practice, the
        application and its plugins must all be built together by a
        single person or component of a system. In that case, it may
        be simpler for that person or component to generate Go source
        files that blank-import the desired set of plugins and then
        compile a static executable in the usual way.
```

For these reasons, many users decide that traditional interprocess
communication \(IPC\) mechanisms such as sockets, pipes, remote
procedure call \(RPC\), shared memory mappings, or file system
operations may be more suitable despite the performance overheads.  

### Plugin function open


```haxe
function open(_path:String):stdgo.Tuple<stdgo.plugin.Plugin_, stdgo.Error>
```


```
Open opens a Go plugin.
        If a path has already been opened, then the existing *Plugin is returned.
        It is safe for concurrent use by multiple goroutines.
```
[\(view code\)](<./Plugin.hx#L113>)


# Typedefs


```haxe
import
```


## typedef Symbol


```haxe
typedef Symbol = stdgo._internal.plugin.Symbol;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.plugin.T__struct_0;
```


# Abstracts


## abstract Plugin\_


[\(view file containing code\)](<./Plugin.hx>)

