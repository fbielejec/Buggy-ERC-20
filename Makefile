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

.PHONY: test-challenge05
test-challenge05:
	forge test --match-path test/Challenge05.t.sol -vv

.PHONY: test-challenge06
test-challenge06:
	forge test --match-path test/Challenge06.t.sol -vv

.PHONY: test-challenge07
test-challenge07:
	forge test --match-path test/Challenge07.t.sol -vv

.PHONY: test-challenge08
test-challenge08:
	forge test --match-path test/Challenge08.t.sol -vv

.PHONY: test-challenge09
test-challenge09:
	forge test --match-path test/Challenge09.t.sol -vv
