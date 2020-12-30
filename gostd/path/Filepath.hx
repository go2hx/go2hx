package gostd.path;

typedef Filepath = Path;
typedef WalkFunc = (path:String,info:Os.FileInfo,err:Errors)->Errors;