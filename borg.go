package main

type Repository struct {
	Path string
}

func (r Repository) CheckPath() error {

}

type BackupTask struct {
	target *Target
}
