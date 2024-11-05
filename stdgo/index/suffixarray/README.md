# Module: `stdgo.index.suffixarray`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Suffixarray](<#class-suffixarray>)

  - [`function new_(_data:Array<UInt>):stdgo.index.suffixarray.Index`](<#suffixarray-function-new_>)

- [abstract Index](<#abstract-index>)

- [abstract T\_ints](<#abstract-t_ints>)

# Classes


```haxe
import
```


## class Suffixarray


```
{
    	id_3352896 = 0
    	lastLen_3352905 = int64(-1)
    	lastPos_3352941 = int64(0)
    	if 0 < len(sa[len(sa)-numLMS:]) {
    		gotoNext = 3353525
    		_ = gotoNext == 3353525
    		i_3352974_0, j_3352969 = 0, sa[len(sa)-numLMS:][0]
    		gotoNext = 3353526
    		_ = gotoNext == 3353526
    		if i_3352974_0 < len(sa[len(sa)-numLMS:]) {
    			gotoNext = 3353000
    			_ = gotoNext == 3353000
    			j_3352969 = sa[len(sa)-numLMS:][i_3352974_0]
    			n_3353088 = sa[j_3352969/2]
    			if n_3353088 != lastLen_3352905 {
    				gotoNext = 3353119
    				_ = gotoNext == 3353119
    				gotoNext = 3353456
    				gotoNext = 3353139
    			} else {
    				gotoNext = 3353139
}
    			_ = gotoNext == 3353139
    			if uint64(n_3353088) >= uint64(len(text)) {
    				gotoNext = 3353173
    				_ = gotoNext == 3353173
    				gotoNext = 3353497
    				gotoNext = 3353258
    			} else {
    				gotoNext = 3353258
}
    			_ = gotoNext == 3353258
{
    				n_3353291 = int(n_3353088)
    				this_3353306 = text[j_3352969:][:n_3353291]
    				last_3353330 = text[lastPos_3352941:][:n_3353291]
    				i_3353364 = 0
    				gotoNext = 3353360
    				_ = gotoNext == 3353360
    				if i_3353364 < n_3353291 {
    					gotoNext = 3353383
    					_ = gotoNext == 3353383
    					if this_3353306[i_3353364] != last_3353330[i_3353364] {
    						gotoNext = 3353411
    						_ = gotoNext == 3353411
    						gotoNext = 3353456
    						gotoNext = 3353379
    					} else {
    						gotoNext = 3353379
}
    					_ = gotoNext == 3353379
    					i_3353364++
    					gotoNext = 3353360
    				} else {
    					gotoNext = 3353441
}
    				_ = gotoNext == 3353441
    				gotoNext = 3353497
}
    			gotoNext = 3353456
    			_ = gotoNext == 3353456
    			id_3352896++
    			lastPos_3352941 = j_3352969
    			lastLen_3352905 = n_3353088
    			gotoNext = 3353497
    			_ = gotoNext == 3353497
    			sa[j_3352969/2] = int64(id_3352896)
    			i_3352974_0++
    			gotoNext = 3353526
    		} else {
    			gotoNext = 3353529
}
    		gotoNext = 3353529
    	} else {
    		gotoNext = 3353529
}
    	_ = gotoNext == 3353529
    	return id_3352896
    	gotoNext = -1
    }
```
### Suffixarray function new\_


```haxe
function new_(_data:Array<UInt>):stdgo.index.suffixarray.Index
```


```
New creates a new Index for data.
        Index creation time is O(N) for N = len(data).
```
[\(view code\)](<./Suffixarray.hx#L163>)


# Abstracts


## abstract Index


[\(view file containing code\)](<./Suffixarray.hx>)


## abstract T\_ints


[\(view file containing code\)](<./Suffixarray.hx>)


