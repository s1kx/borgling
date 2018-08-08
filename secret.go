package main

import (
	"github.com/gilbertchen/keyring"
)

const KeyringService = "borgling"

func storeSecret(service, key, value string) error {
	return keyring.Set(KeyringService, key, value)
}

func getSecret(key string) (string, error) {
	return keyring.Get(KeyringService, key)
}
