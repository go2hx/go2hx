# Module: `stdgo.container.list`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class List](<#class-list>)

  - [`function new_():stdgo.container.list.List_`](<#list-function-new_>)

- [abstract Element](<#abstract-element>)

- [abstract List\_](<#abstract-list_>)

# Classes


```haxe
import
```


## class List



Package list implements a doubly linked list.  


To iterate over a list \(where l is a \*List\):  

```
    	for e := l.Front(); e != nil; e = e.Next() {
 do something with e.Value
}
```
### List function new\_


```haxe
function new_():stdgo.container.list.List_
```



New returns an initialized list.  

[\(view code\)](<./List.hx#L131>)


# Abstracts


## abstract Element


[\(view file containing code\)](<./List.hx>)


## abstract List\_


[\(view file containing code\)](<./List.hx>)


