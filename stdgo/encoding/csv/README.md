# Module: `stdgo.encoding.csv`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [class Csv](<#class-csv>)

  - [`function newReader(_r:stdgo._internal.io.Reader):stdgo.encoding.csv.Reader`](<#csv-function-newreader>)

  - [`function newWriter(_w:stdgo._internal.io.Writer):stdgo.encoding.csv.Writer`](<#csv-function-newwriter>)

- [abstract ParseError](<#abstract-parseerror>)

- [abstract Reader](<#abstract-reader>)

- [abstract T\_position](<#abstract-t_position>)

- [abstract Writer](<#abstract-writer>)

# Variables


```haxe
import stdgo.encoding.csv.Csv
```


```haxe
var errBareQuote:stdgo.Error
```


```haxe
var errFieldCount:stdgo.Error
```


```haxe
var errQuote:stdgo.Error
```


```haxe
var errTrailingComma:stdgo.Error
```


# Classes


```haxe
import stdgo.encoding.csv.*
```


## class Csv


```
Package csv reads and writes comma-separated values (CSV) files.
    There are many kinds of CSV files; this package supports the format
    described in RFC 4180.
```

A csv file contains zero or more records of one or more fields per record.
Each record is separated by the newline character. The final record may
optionally be followed by a newline character.  

```
    	field1,field2,field3
```

White space is considered part of a field.  


Carriage returns before newline characters are silently removed.  


Blank lines are ignored. A line with only whitespace characters \(excluding
the ending newline character\) is not considered a blank line.  


Fields which start and stop with the quote character " are called
quoted\-fields. The beginning and ending quote are not part of the
field.  


The source:  

```
    	normal string,"quoted-field"
```

results in the fields  

```
    	{`normal string`, `quoted-field`}
```

Within a quoted\-field a quote character followed by a second quote
character is considered a single quote.  

```
    	"the ""word"" is true","a ""quoted-field"""
```

results in  

```
    	{`the "word" is true`, `a "quoted-field"`}
```

Newlines and commas may be included in a quoted\-field  

```
    	"Multi-line
    	field","comma is ,"
```

results in  

```
    	{`Multi-line
    	field`, `comma is ,`}
```
### Csv function newReader


```haxe
function newReader(_r:stdgo._internal.io.Reader):stdgo.encoding.csv.Reader
```



NewReader returns a new Reader that reads from r.  

[\(view code\)](<./Csv.hx#L321>)


### Csv function newWriter


```haxe
function newWriter(_w:stdgo._internal.io.Writer):stdgo.encoding.csv.Writer
```



NewWriter returns a new Writer that writes to w.  

[\(view code\)](<./Csv.hx#L327>)


# Abstracts


## abstract ParseError


[\(view file containing code\)](<./Csv.hx>)


## abstract Reader


[\(view file containing code\)](<./Csv.hx>)


## abstract T\_position


[\(view file containing code\)](<./Csv.hx>)


## abstract Writer


[\(view file containing code\)](<./Csv.hx>)


