package main

func main() {
	hit := false
	switch {
	case true:
		if true {
			// nothing
			_ = 0
		}
		hit = true
	}
	goto JUMP
JUMP:
	if !hit {
		panic("didn't reach hit")
	}
}
