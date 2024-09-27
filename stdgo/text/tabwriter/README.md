# Module: `stdgo.text.tabwriter`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Tabwriter](<#class-tabwriter>)

  - [`function newWriter(_output:stdgo._internal.io.Writer, _minwidth:Int, _tabwidth:Int, _padding:Int, _padchar:UInt, _flags:UInt):stdgo.text.tabwriter.Writer`](<#tabwriter-function-newwriter>)

- [abstract T\_cell](<#abstract-t_cell>)

- [abstract Writer](<#abstract-writer>)

- [abstract T\_osError](<#abstract-t_oserror>)

# Constants


```haxe
import stdgo.text.tabwriter.Tabwriter
```


```haxe
final alignRight:stdgo.GoUInt = stdgo._internal.text.tabwriter.Tabwriter_alignRight.alignRight
```


```haxe
final debug:stdgo.GoUInt = stdgo._internal.text.tabwriter.Tabwriter_debug.debug
```


```haxe
final discardEmptyColumns:stdgo.GoUInt = stdgo._internal.text.tabwriter.Tabwriter_discardEmptyColumns.discardEmptyColumns
```


```haxe
final escape:Int = stdgo._internal.text.tabwriter.Tabwriter_escape.escape
```


```haxe
final filterHTML:UInt = stdgo._internal.text.tabwriter.Tabwriter_filterHTML.filterHTML
```


```haxe
final stripEscape:stdgo.GoUInt = stdgo._internal.text.tabwriter.Tabwriter_stripEscape.stripEscape
```


```haxe
final tabIndent:stdgo.GoUInt = stdgo._internal.text.tabwriter.Tabwriter_tabIndent.tabIndent
```


# Classes


```haxe
import stdgo.text.tabwriter.*
```


## class Tabwriter


```
Package tabwriter implements a write filter (tabwriter.Writer) that
    translates tabbed columns in input into properly aligned text.
```

The package is using the Elastic Tabstops algorithm described at
http://nickgravgaard.com/elastictabstops/index.html.  


The text/tabwriter package is frozen and is not accepting new features.  

### Tabwriter function newWriter


```haxe
function newWriter(_output:stdgo._internal.io.Writer, _minwidth:Int, _tabwidth:Int, _padding:Int, _padchar:UInt, _flags:UInt):stdgo.text.tabwriter.Writer
```


```
NewWriter allocates and initializes a new tabwriter.Writer.
        The parameters are the same as for the Init function.
```
[\(view code\)](<./Tabwriter.hx#L212>)


# Abstracts


## abstract T\_cell


[\(view file containing code\)](<./Tabwriter.hx>)


## abstract Writer


[\(view file containing code\)](<./Tabwriter.hx>)


## abstract T\_osError


[\(view file containing code\)](<./Tabwriter.hx>)


