package main

func main() {
	x := true
	y := false
LABEL:
LABEL2:
	for i := 0; i < 10; i++ {
		if x {
			if y {
				x = false
				if i == 2 {
					goto LABEL
				} else {
					goto LABEL2
				}
			} else {
				y = true
				continue
			}
		}
	}
}
