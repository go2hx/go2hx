package main

type Rules map[string][]Rule

type Rule struct {
	Pattern string
}

// Merge creates a clone of "r" then merges "rules" into the clone.
func (r Rules) Merge(rules Rules) Rules {
	return rules
}

func main() {
	println(caddyfileRules())
}

func caddyfileRules() Rules {
	x := Rules{
		"root": {
			{"hi"},
		},
		"globals": {
			{"2"},
		},
		"snippet": {
			{"3"},
		},
		"label": {
			{"4"},
		},
		"site_block": {
			{`\}`},
		},
	}.Merge(nil)
	return x
}
