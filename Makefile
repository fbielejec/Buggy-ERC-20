.PHONY: test
test:
	forge test

.PHONY: test-challenge01
test-challenge01:
	forge test --match-path test/Challenge01.t.sol -vv

.PHONY: test-challenge02
test-challenge02:
	forge test --match-path test/Challenge02.t.sol -vv

.PHONY: test-challenge03
test-challenge03:
	forge test --match-path test/Challenge03.t.sol -vv

.PHONY: test-challenge04
test-challenge04:
	forge test --match-path test/Challenge04.t.sol -vv
