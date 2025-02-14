#!/bin/bash
echo "IPV4 address"
ip -4 addr show | grep inet
echo "************"
ip -6 addr show | grep inet6