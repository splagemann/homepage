#!/bin/bash

env | grep VIRTUAL_HOST -q || exit 1
env | grep LETSENCRYPT_HOST -q || exit 1
env | grep LETSENCRYPT_EMAIL -q || exit 1

exit 0
