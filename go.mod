module github.com/go2hx/go4hx //not a real repo, used to set the name to go4hx

go 1.21.3

require golang.org/x/tools v0.0.0-20191119224855-298f0cb1881e

require (
	golang.org/x/exp/typeparams v0.0.0-20230224173230-c95f2b4c22f2 // indirect
	golang.org/x/mod v0.6.0-dev.0.20220419223038-86c51ed26bb4 // indirect
	golang.org/x/sys v0.0.0-20220722155257-8c9f86f7a55f // indirect
)

replace golang.org/x/tools => ./git/tools
