# Module: `stdgo.internal.cpu`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [class Cpu](<#class-cpu>)

  - [`function initialize(_env:String):Void`](<#cpu-function-initialize>)

  - [`function name():String`](<#cpu-function-name>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_3](<#typedef-t__struct_3>)

- [typedef T\_\_struct\_4](<#typedef-t__struct_4>)

- [typedef T\_\_struct\_5](<#typedef-t__struct_5>)

- [abstract CacheLinePad](<#abstract-cachelinepad>)

- [abstract T\_option](<#abstract-t_option>)

# Constants


```haxe
import stdgo.internal.cpu.Cpu
```


```haxe
final cacheLinePadSize:haxe.UInt64 = stdgo._internal.internal.cpu.Cpu_cacheLinePadSize.cacheLinePadSize
```


# Variables


```haxe
import stdgo.internal.cpu.Cpu
```


```haxe
var arm:stdgo._internal.internal.cpu.T__struct_1
```


```haxe
var arm64:stdgo._internal.internal.cpu.T__struct_2
```


```haxe
var cacheLineSize:stdgo.GoUIntptr
```


```haxe
var debugOptions:Bool
```


```haxe
var mips64x:stdgo._internal.internal.cpu.T__struct_3
```


```haxe
var options:Array<stdgo.internal.cpu.T_option>
```


```haxe
var ppc64:stdgo._internal.internal.cpu.T__struct_4
```


```haxe
var s390x:stdgo._internal.internal.cpu.T__struct_5
```


```haxe
var x86:stdgo._internal.internal.cpu.T__struct_0
```


# Classes


```haxe
import stdgo.internal.cpu.*
```


## class Cpu


```
{
    	gotoNext = 264140
    	_ = gotoNext == 264140
    	_ = 0
    	fieldBreak = false
    	gotoNext = 264148
    	_ = gotoNext == 264148
    	if !fieldBreak && (env != "") {
    		gotoNext = 264162
    		_ = gotoNext == 264162
    		field_264166 = ""
    		i_264180 = indexByte(env, 44)
    		if i_264180 < 0 {
    			gotoNext = 264216
    			_ = gotoNext == 264216
    			field_264166, env = env, ""
    			gotoNext = 264294
    		} else {
    			gotoNext = 264251
    			_ = gotoNext == 264251
    			field_264166, env = env[:i_264180], env[i_264180+1:]
    			gotoNext = 264294
}
    		_ = gotoNext == 264294
    		if len(field_264166) < 4 || field_264166[:4] != "cpu." {
    			gotoNext = 264335
    			_ = gotoNext == 264335
    			_ = 0
    			gotoNext = 264148
    			gotoNext = 264355
    		} else {
    			gotoNext = 264355
}
    		_ = gotoNext == 264355
    		i_264180 = indexByte(field_264166, 61)
    		if i_264180 < 0 {
    			gotoNext = 264392
    			_ = gotoNext == 264392
    			print("GODEBUG: no value specified for \"", field_264166, "\"\n")
    			_ = 0
    			gotoNext = 264148
    			gotoNext = 264474
    		} else {
    			gotoNext = 264474
}
    		_ = gotoNext == 264474
    		key_264474, value_264479 = field_264166[4:i_264180], field_264166[i_264180+1:]
    		_ = 0
    		gotoNext = 264554
    		_ = gotoNext == 264554
    		switch value_264479 {
    		case "on":
    			gotoNext = 264571
    			_ = gotoNext == 264571
    			enable_264540 = true
    			gotoNext = 264755
    		case "off":
    			gotoNext = 264601
    			_ = gotoNext == 264601
    			enable_264540 = false
    			gotoNext = 264755
    		default:
    			gotoNext = 264633
    			_ = gotoNext == 264633
    			print("GODEBUG: value \"", value_264479, "\" not supported for cpu option \"", key_264474, "\"\n")
    			gotoNext = 264148
    			gotoNext = 264755
}
    		_ = gotoNext == 264755
    		if key_264474 == "all" {
    			gotoNext = 264771
    			_ = gotoNext == 264771
    			if 0 < len(options) {
    				gotoNext = 264866
    				_ = gotoNext == 264866
    				i_264780 = 0
    				gotoNext = 264867
    				_ = gotoNext == 264867
    				if i_264780 < len(options) {
    					gotoNext = 264799
    					_ = gotoNext == 264799
    					options[i_264780].Specified = true
    					options[i_264780].Enable = enable_264540
    					i_264780++
    					gotoNext = 264867
    				} else {
    					gotoNext = 264872
}
    				gotoNext = 264872
    			} else {
    				gotoNext = 264872
}
    			_ = gotoNext == 264872
    			gotoNext = 264148
    			gotoNext = 264894
    		} else {
    			gotoNext = 264894
}
    		_ = gotoNext == 264894
    		if 0 < len(options) {
    			gotoNext = 265038
    			_ = gotoNext == 265038
    			i_264898 = 0
    			gotoNext = 265039
    			_ = gotoNext == 265039
    			if i_264898 < len(options) {
    				gotoNext = 264917
    				_ = gotoNext == 264917
    				if options[i_264898].Name == key_264474 {
    					gotoNext = 264948
    					_ = gotoNext == 264948
    					options[i_264898].Specified = true
    					options[i_264898].Enable = enable_264540
    					gotoNext = 264148
    					gotoNext = 264898
    				} else {
    					gotoNext = 264898
}
    				_ = gotoNext == 264898
    				i_264898++
    				gotoNext = 265039
    			} else {
    				gotoNext = 265044
}
    			gotoNext = 265044
    		} else {
    			gotoNext = 265044
}
    		_ = gotoNext == 265044
    		print("GODEBUG: unknown cpu feature \"", key_264474, "\"\n")
    		gotoNext = 264148
    	} else {
    		gotoNext = 265103
}
    	_ = gotoNext == 265103
    	if 0 < len(options) {
    		gotoNext = 265316
    		_ = gotoNext == 265316
    		i_265115_0, o_265110 = 0, options[0]
    		gotoNext = 265317
    		_ = gotoNext == 265317
    		if i_265115_0 < len(options) {
    			gotoNext = 265129
    			_ = gotoNext == 265129
    			o_265110 = options[i_265115_0]
    			if !o_265110.Specified {
    				gotoNext = 265149
    				_ = gotoNext == 265149
    				i_265115_0++
    				gotoNext = 265317
    				gotoNext = 265170
    			} else {
    				gotoNext = 265170
}
    			_ = gotoNext == 265170
    			if o_265110.Enable && !*o_265110.Feature {
    				gotoNext = 265197
    				_ = gotoNext == 265197
    				print("GODEBUG: can not enable \"", o_265110.Name, "\", missing CPU support\n")
    				i_265115_0++
    				gotoNext = 265317
    				gotoNext = 265294
    			} else {
    				gotoNext = 265294
}
    			_ = gotoNext == 265294
    			*o_265110.Feature = o_265110.Enable
    			i_265115_0++
    			gotoNext = 265317
    		} else {
    			gotoNext = 265319
}
    		gotoNext = 265319
    	} else {
    		gotoNext = 265319
}
    	_ = gotoNext == 265319
    	gotoNext = -1
    }
```
### Cpu function initialize


```haxe
function initialize(_env:String):Void
```


```
Initialize examines the processor and sets the relevant variables above.
        This is called by the runtime package early in program initialization,
        before normal init functions are run. env is set by runtime if the OS supports
        cpu feature options in GODEBUG.
```
[\(view code\)](<./Cpu.hx#L309>)


### Cpu function name


```haxe
function name():String
```


```
Name returns the CPU name given by the vendor
        if it can be read directly from memory or by CPU instructions.
        If the CPU name can not be determined an empty string is returned.
```

Implementations that use the Operating System \(e.g. sysctl or /sys/\)
to gather CPU information for display should be placed in internal/sysinfo.  

[\(view code\)](<./Cpu.hx#L320>)


# Typedefs


```haxe
import stdgo.internal.cpu.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.internal.cpu.T__struct_0;
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = stdgo._internal.internal.cpu.T__struct_1;
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = stdgo._internal.internal.cpu.T__struct_2;
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = stdgo._internal.internal.cpu.T__struct_3;
```


## typedef T\_\_struct\_4


```haxe
typedef T__struct_4 = stdgo._internal.internal.cpu.T__struct_4;
```


## typedef T\_\_struct\_5


```haxe
typedef T__struct_5 = stdgo._internal.internal.cpu.T__struct_5;
```


# Abstracts


## abstract CacheLinePad


[\(view file containing code\)](<./Cpu.hx>)


## abstract T\_option


[\(view file containing code\)](<./Cpu.hx>)


