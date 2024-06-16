#!/bin/sh
sleep 10
# Test access to a whitelisted domain
echo "Testing access to whitelisted domain example.com:"
curl http://example.com

# Test access to another whitelisted domain
echo "Testing access to another whitelisted domain another-domain.com:"
curl http://another-domain.com

# Test access to a non-whitelisted domain
echo "Testing access to non-whitelisted domain google.com:"
curl http://google.com

echo "Sleeping!"
sleep 999999999
