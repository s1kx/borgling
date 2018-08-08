package main

type Config struct {
	StorePasswords bool
	Targets        []Target
}

type Target struct {
	Name       string
	Repository string
	// optional
	LVMVolume *LVMVolume
	Path      string
	Excludes  []string
}

type LVMVolume struct {
	VGName string
	LVName string
}

type BackupTarget struct {
}

func initAppDir() {

}
