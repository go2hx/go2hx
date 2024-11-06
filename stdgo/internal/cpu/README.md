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
    	gotoNext = 220514
    	_ = gotoNext == 220514
    	_ = 0
    	fieldBreak = false
    	gotoNext = 220522
    	_ = gotoNext == 220522
    	if !fieldBreak && (env != "") {
    		gotoNext = 220536
    		_ = gotoNext == 220536
    		field_220540 = ""
    		i_220554 = indexByte(env, 44)
    		if i_220554 < 0 {
    			gotoNext = 220590
    			_ = gotoNext == 220590
    			field_220540, env = env, ""
    			gotoNext = 220668
    		} else {
    			gotoNext = 220625
    			_ = gotoNext == 220625
    			field_220540, env = env[:i_220554], env[i_220554+1:]
    			gotoNext = 220668
}
    		_ = gotoNext == 220668
    		if len(field_220540) < 4 || field_220540[:4] != "cpu." {
    			gotoNext = 220709
    			_ = gotoNext == 220709
    			_ = 0
    			gotoNext = 220522
    			gotoNext = 220729
    		} else {
    			gotoNext = 220729
}
    		_ = gotoNext == 220729
    		i_220554 = indexByte(field_220540, 61)
    		if i_220554 < 0 {
    			gotoNext = 220766
    			_ = gotoNext == 220766
    			print("GODEBUG: no value specified for \"", field_220540, "\"\n")
    			_ = 0
    			gotoNext = 220522
    			gotoNext = 220848
    		} else {
    			gotoNext = 220848
}
    		_ = gotoNext == 220848
    		key_220848, value_220853 = field_220540[4:i_220554], field_220540[i_220554+1:]
    		_ = 0
    		gotoNext = 220928
    		_ = gotoNext == 220928
    		switch value_220853 {
    		case "on":
    			gotoNext = 220945
    			_ = gotoNext == 220945
    			enable_220914 = true
    			gotoNext = 221129
    		case "off":
    			gotoNext = 220975
    			_ = gotoNext == 220975
    			enable_220914 = false
    			gotoNext = 221129
    		default:
    			gotoNext = 221007
    			_ = gotoNext == 221007
    			print("GODEBUG: value \"", value_220853, "\" not supported for cpu option \"", key_220848, "\"\n")
    			gotoNext = 220522
    			gotoNext = 221129
}
    		_ = gotoNext == 221129
    		if key_220848 == "all" {
    			gotoNext = 221145
    			_ = gotoNext == 221145
    			if 0 < len(options) {
    				gotoNext = 221240
    				_ = gotoNext == 221240
    				i_221154 = 0
    				gotoNext = 221241
    				_ = gotoNext == 221241
    				if i_221154 < len(options) {
    					gotoNext = 221173
    					_ = gotoNext == 221173
    					options[i_221154].Specified = true
    					options[i_221154].Enable = enable_220914
    					i_221154++
    					gotoNext = 221241
    				} else {
    					gotoNext = 221246
}
    				gotoNext = 221246
    			} else {
    				gotoNext = 221246
}
    			_ = gotoNext == 221246
    			gotoNext = 220522
    			gotoNext = 221268
    		} else {
    			gotoNext = 221268
}
    		_ = gotoNext == 221268
    		if 0 < len(options) {
    			gotoNext = 221412
    			_ = gotoNext == 221412
    			i_221272 = 0
    			gotoNext = 221413
    			_ = gotoNext == 221413
    			if i_221272 < len(options) {
    				gotoNext = 221291
    				_ = gotoNext == 221291
    				if options[i_221272].Name == key_220848 {
    					gotoNext = 221322
    					_ = gotoNext == 221322
    					options[i_221272].Specified = true
    					options[i_221272].Enable = enable_220914
    					gotoNext = 220522
    					gotoNext = 221272
    				} else {
    					gotoNext = 221272
}
    				_ = gotoNext == 221272
    				i_221272++
    				gotoNext = 221413
    			} else {
    				gotoNext = 221418
}
    			gotoNext = 221418
    		} else {
    			gotoNext = 221418
}
    		_ = gotoNext == 221418
    		print("GODEBUG: unknown cpu feature \"", key_220848, "\"\n")
    		gotoNext = 220522
    	} else {
    		gotoNext = 221477
}
    	_ = gotoNext == 221477
    	if 0 < len(options) {
    		gotoNext = 221690
    		_ = gotoNext == 221690
    		i_221489_0, o_221484 = 0, options[0]
    		gotoNext = 221691
    		_ = gotoNext == 221691
    		if i_221489_0 < len(options) {
    			gotoNext = 221503
    			_ = gotoNext == 221503
    			o_221484 = options[i_221489_0]
    			if !o_221484.Specified {
    				gotoNext = 221523
    				_ = gotoNext == 221523
    				i_221489_0++
    				gotoNext = 221691
    				gotoNext = 221544
    			} else {
    				gotoNext = 221544
}
    			_ = gotoNext == 221544
    			if o_221484.Enable && !*o_221484.Feature {
    				gotoNext = 221571
    				_ = gotoNext == 221571
    				print("GODEBUG: can not enable \"", o_221484.Name, "\", missing CPU support\n")
    				i_221489_0++
    				gotoNext = 221691
    				gotoNext = 221668
    			} else {
    				gotoNext = 221668
}
    			_ = gotoNext == 221668
    			*o_221484.Feature = o_221484.Enable
    			i_221489_0++
    			gotoNext = 221691
    		} else {
    			gotoNext = 221693
}
    		gotoNext = 221693
    	} else {
    		gotoNext = 221693
}
    	_ = gotoNext == 221693
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


