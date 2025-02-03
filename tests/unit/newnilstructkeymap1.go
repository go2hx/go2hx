package main

func main() {
	//ptr: new(map[string]any), out: map[string]any{"T": []any{}}}
	var ptr any = new(map[string]any)
	_ = ptr
	var out any = map[string]any{"T": []any{}}
	_ = out
}
