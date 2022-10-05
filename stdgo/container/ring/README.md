# Module: `stdgo.container.ring`

[(view library index)](../../stdgo.md)


# Overview


 


# Index


- [`function new_(_n:stdgo.GoInt):stdgo.container.ring.Ring`](<#function-new_>)

- [class Ring](<#class-ring>)

  - [`function new(?_next:stdgo.Ref<stdgo.container.ring.Ring>, ?_prev:stdgo.Ref<stdgo.container.ring.Ring>, ?value:stdgo.AnyInterface):Void`](<#ring-function-new>)

  - [`function _init():stdgo.container.ring.Ring`](<#ring-function-_init>)

  - [`function do_( _f:()):Void`](<#ring-function-do_>)

  - [`function len():stdgo.GoInt`](<#ring-function-len>)

  - [`function link( _s:stdgo.container.ring.Ring):stdgo.container.ring.Ring`](<#ring-function-link>)

  - [`function move( _n:stdgo.GoInt):stdgo.container.ring.Ring`](<#ring-function-move>)

  - [`function next():stdgo.container.ring.Ring`](<#ring-function-next>)

  - [`function prev():stdgo.container.ring.Ring`](<#ring-function-prev>)

  - [`function unlink( _n:stdgo.GoInt):stdgo.container.ring.Ring`](<#ring-function-unlink>)

- [class Ring\_static\_extension](<#class-ring_static_extension>)

  - [`function _init():stdgo.container.ring.Ring`](<#ring_static_extension-function-_init>)

  - [`function do_( _f:()):Void`](<#ring_staticextension-function-do>)

  - [`function len():stdgo.GoInt`](<#ring_static_extension-function-len>)

  - [`function link( _s:stdgo.container.ring.Ring):stdgo.container.ring.Ring`](<#ring_static_extension-function-link>)

  - [`function move( _n:stdgo.GoInt):stdgo.container.ring.Ring`](<#ring_static_extension-function-move>)

  - [`function next():stdgo.container.ring.Ring`](<#ring_static_extension-function-next>)

  - [`function prev():stdgo.container.ring.Ring`](<#ring_static_extension-function-prev>)

  - [`function unlink( _n:stdgo.GoInt):stdgo.container.ring.Ring`](<#ring_static_extension-function-unlink>)

- [class Ring\_wrapper](<#class-ring_wrapper>)

  - [`function _init():stdgo.container.ring.Ring`](<#ring_wrapper-function-_init>)

  - [`function do_()`](<#ringwrapper-function-do>)

  - [`function len():stdgo.GoInt`](<#ring_wrapper-function-len>)

  - [`function link()`](<#ring_wrapper-function-link>)

  - [`function move()`](<#ring_wrapper-function-move>)

  - [`function new(__self__:stdgo.container.ring.Ring):Void`](<#ring_wrapper-function-new>)

  - [`function next():stdgo.container.ring.Ring`](<#ring_wrapper-function-next>)

  - [`function prev():stdgo.container.ring.Ring`](<#ring_wrapper-function-prev>)

  - [`function unlink()`](<#ring_wrapper-function-unlink>)

# Functions


```haxe
import stdgo.container.ring.Ring
```


## function new\_


```haxe
function new_(_n:stdgo.GoInt):stdgo.container.ring.Ring
```


New creates a ring of n elements. 


[\(view code\)](<./Ring.hx#L28>)


# Classes


```haxe
import stdgo.container.ring.*
```


## class Ring


 


```haxe
var _next:stdgo.Ref<stdgo.container.ring.Ring>
```


```haxe
var _prev:stdgo.Ref<stdgo.container.ring.Ring>
```


```haxe
var value:stdgo.AnyInterface
```


### Ring function new


```haxe
function new(?_next:stdgo.Ref<stdgo.container.ring.Ring>, ?_prev:stdgo.Ref<stdgo.container.ring.Ring>, ?value:stdgo.AnyInterface):Void
```


 


[\(view code\)](<./Ring.hx#L15>)


### Ring function \_init


```haxe
function _init():stdgo.container.ring.Ring
```


 


[\(view code\)](<./Ring.hx#L166>)


### Ring function do\_


```haxe
function do_( _f:()):Void
```


Do calls function f on each element of the ring, in forward order. The behavior of Do is undefined if f changes \*r. 


[\(view code\)](<./Ring.hx#L51>)


### Ring function len


```haxe
function len():stdgo.GoInt
```


Len computes the number of elements in ring r. It executes in time proportional to the number of elements.  


[\(view code\)](<./Ring.hx#L68>)


### Ring function link


```haxe
function link( _s:stdgo.container.ring.Ring):stdgo.container.ring.Ring
```


Link connects ring r with ring s such that r.Next\(\) becomes s and returns the original value for r.Next\(\). r must not be empty.  If r and s point to the same ring, linking them removes the elements between r and s from the ring. The removed elements form a subring and the result is a reference to that subring \(if no elements were removed, the result is still the original value for r.Next\(\), and not nil\).  If r and s point to different rings, linking them creates a single ring with the elements of s inserted after r. The result points to the element following the last element of s after insertion.  


[\(view code\)](<./Ring.hx#L113>)


### Ring function move


```haxe
function move( _n:stdgo.GoInt):stdgo.container.ring.Ring
```


Move moves n % r.Len\(\) elements backward \(n \< 0\) or forward \(n \>= 0\) in the ring and returns that ring element. r must not be empty.  


[\(view code\)](<./Ring.hx#L130>)


### Ring function next


```haxe
function next():stdgo.container.ring.Ring
```


Next returns the next ring element. r must not be empty. 


[\(view code\)](<./Ring.hx#L159>)


### Ring function prev


```haxe
function prev():stdgo.container.ring.Ring
```


Prev returns the previous ring element. r must not be empty. 


[\(view code\)](<./Ring.hx#L149>)


### Ring function unlink


```haxe
function unlink( _n:stdgo.GoInt):stdgo.container.ring.Ring
```


Unlink removes n % r.Len\(\) elements from the ring r, starting at r.Next\(\). If n % r.Len\(\) == 0, r remains unchanged. The result is the removed subring. r must not be empty.  


[\(view code\)](<./Ring.hx#L88>)


## class Ring\_static\_extension


 


### Ring\_static\_extension function \_init


```haxe
function _init():stdgo.container.ring.Ring
```


 


[\(view code\)](<./Ring.hx#L166>)


### Ring\_static\_extension function do\_


```haxe
function do_( _f:()):Void
```


Do calls function f on each element of the ring, in forward order. The behavior of Do is undefined if f changes \*r. 


[\(view code\)](<./Ring.hx#L51>)


### Ring\_static\_extension function len


```haxe
function len():stdgo.GoInt
```


Len computes the number of elements in ring r. It executes in time proportional to the number of elements.  


[\(view code\)](<./Ring.hx#L68>)


### Ring\_static\_extension function link


```haxe
function link( _s:stdgo.container.ring.Ring):stdgo.container.ring.Ring
```


Link connects ring r with ring s such that r.Next\(\) becomes s and returns the original value for r.Next\(\). r must not be empty.  If r and s point to the same ring, linking them removes the elements between r and s from the ring. The removed elements form a subring and the result is a reference to that subring \(if no elements were removed, the result is still the original value for r.Next\(\), and not nil\).  If r and s point to different rings, linking them creates a single ring with the elements of s inserted after r. The result points to the element following the last element of s after insertion.  


[\(view code\)](<./Ring.hx#L113>)


### Ring\_static\_extension function move


```haxe
function move( _n:stdgo.GoInt):stdgo.container.ring.Ring
```


Move moves n % r.Len\(\) elements backward \(n \< 0\) or forward \(n \>= 0\) in the ring and returns that ring element. r must not be empty.  


[\(view code\)](<./Ring.hx#L130>)


### Ring\_static\_extension function next


```haxe
function next():stdgo.container.ring.Ring
```


Next returns the next ring element. r must not be empty. 


[\(view code\)](<./Ring.hx#L159>)


### Ring\_static\_extension function prev


```haxe
function prev():stdgo.container.ring.Ring
```


Prev returns the previous ring element. r must not be empty. 


[\(view code\)](<./Ring.hx#L149>)


### Ring\_static\_extension function unlink


```haxe
function unlink( _n:stdgo.GoInt):stdgo.container.ring.Ring
```


Unlink removes n % r.Len\(\) elements from the ring r, starting at r.Next\(\). If n % r.Len\(\) == 0, r remains unchanged. The result is the removed subring. r must not be empty.  


[\(view code\)](<./Ring.hx#L88>)


## class Ring\_wrapper


 


### Ring\_wrapper function \_init


```haxe
function _init():stdgo.container.ring.Ring
```


 


### Ring\_wrapper function do\_


```haxe
function do_()
```


Do calls function f on each element of the ring, in forward order. The behavior of Do is undefined if f changes \*r. 


### Ring\_wrapper function len


```haxe
function len():stdgo.GoInt
```


Len computes the number of elements in ring r. It executes in time proportional to the number of elements.  


### Ring\_wrapper function link


```haxe
function link()
```


Link connects ring r with ring s such that r.Next\(\) becomes s and returns the original value for r.Next\(\). r must not be empty.  If r and s point to the same ring, linking them removes the elements between r and s from the ring. The removed elements form a subring and the result is a reference to that subring \(if no elements were removed, the result is still the original value for r.Next\(\), and not nil\).  If r and s point to different rings, linking them creates a single ring with the elements of s inserted after r. The result points to the element following the last element of s after insertion.  


### Ring\_wrapper function move


```haxe
function move()
```


Move moves n % r.Len\(\) elements backward \(n \< 0\) or forward \(n \>= 0\) in the ring and returns that ring element. r must not be empty.  


### Ring\_wrapper function new


```haxe
function new(__self__:stdgo.container.ring.Ring):Void
```


 


[\(view code\)](<./Ring.hx#L233>)


### Ring\_wrapper function next


```haxe
function next():stdgo.container.ring.Ring
```


Next returns the next ring element. r must not be empty. 


### Ring\_wrapper function prev


```haxe
function prev():stdgo.container.ring.Ring
```


Prev returns the previous ring element. r must not be empty. 


### Ring\_wrapper function unlink


```haxe
function unlink()
```


Unlink removes n % r.Len\(\) elements from the ring r, starting at r.Next\(\). If n % r.Len\(\) == 0, r remains unchanged. The result is the removed subring. r must not be empty.  


