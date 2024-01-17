```bash
 Pushing the vector 817  to VECTOR B
Contract invocation successful. No error message received.
 Pushing the vector 818  to VECTOR A
Contract invocation successful. No error message received.
 Pushing the vector 818  to VECTOR B
Contract invocation failed with the following message: 2024-01-17T00:30:58.655540Z ERROR soroban_cli::rpc: GetTransactionResponse {
    status: "FAILED",
    envelope: Some(
        Tx(
            TransactionV1Envelope {
                tx: Transaction {
                    source_account: Ed25519(
                        Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                    ),
                    fee: 607729,
                    seq_num: SequenceNumber(
                        8723078587451,
                    ),
                    cond: None,
                    memo: None,
                    operations: VecM(
                        [
                            Operation {
                                source_account: None,
                                body: InvokeHostFunction(
                                    InvokeHostFunctionOp {
                                        host_function: InvokeContract(
                                            InvokeContractArgs {
                                                contract_address: Contract(
                                                    Hash(476cfc250e2716ac0a541506066554b6c385b44ac191db27f09f6b12cae9fe24),
                                                ),
                                                function_name: ScSymbol(
                                                    StringM(increment_b),
                                                ),
                                                args: VecM(
                                                    [],
                                                ),
                                            },
                                        ),
                                        auth: VecM(
                                            [],
                                        ),
                                    },
                                ),
                            },
                        ],
                    ),
                    ext: V1(
                        SorobanTransactionData {
                            ext: V0,
                            resources: SorobanResources {
                                footprint: LedgerFootprint {
                                    read_only: VecM(
                                        [
                                            ContractCode(
                                                LedgerKeyContractCode {
                                                    hash: Hash(ba1c3e3ad74305b407d986d8513f747685da8996445747faeb6c7fe4dafb6a24),
                                                },
                                            ),
                                        ],
                                    ),
                                    read_write: VecM(
                                        [
                                            ContractData(
                                                LedgerKeyContractData {
                                                    contract: Contract(
                                                        Hash(476cfc250e2716ac0a541506066554b6c385b44ac191db27f09f6b12cae9fe24),
                                                    ),
                                                    key: LedgerKeyContractInstance,
                                                    durability: Persistent,
                                                },
                                            ),
                                        ],
                                    ),
                                },
                                instructions: 32684294,
                                read_bytes: 130916,
                                write_bytes: 65576,
                            },
                            resource_fee: 528360,
                        },
                    ),
                },
                signatures: VecM(
                    [
                        DecoratedSignature {
                            hint: SignatureHint(91f20285),
                            signature: Signature(
                                BytesM(5c89bc043e03264f86d3f74c281e234bf839df909516fba726977e96889a9151b572cecc14abbd90a6f03e64fbf2c40d4ac42aee7ea4fb5b4dc69fdb61e2c10b),
                            ),
                        },
                    ],
                ),
            },
        ),
    ),
    result: Some(
        TransactionResult {
            fee_charged: 528460,
            result: TxFailed(
                VecM(
                    [
                        OpInner(
                            InvokeHostFunction(
                                ResourceLimitExceeded,
                            ),
                        ),
                    ],
                ),
            ),
            ext: V0,
        },
    ),
    result_meta: Some(
        V3(
            TransactionMetaV3 {
                ext: V0,
                tx_changes_before: LedgerEntryChanges(
                    VecM(
                        [
                            State(
                                LedgerEntry {
                                    last_modified_ledger_seq: 14390,
                                    data: Account(
                                        AccountEntry {
                                            account_id: AccountId(
                                                PublicKeyTypeEd25519(
                                                    Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                                                ),
                                            ),
                                            balance: 97116342406,
                                            seq_num: SequenceNumber(
                                                8723078587450,
                                            ),
                                            num_sub_entries: 0,
                                            inflation_dest: None,
                                            flags: 0,
                                            home_domain: String32(
                                                StringM(),
                                            ),
                                            thresholds: Thresholds(01000000),
                                            signers: VecM(
                                                [],
                                            ),
                                            ext: V1(
                                                AccountEntryExtensionV1 {
                                                    liabilities: Liabilities {
                                                        buying: 0,
                                                        selling: 0,
                                                    },
                                                    ext: V2(
                                                        AccountEntryExtensionV2 {
                                                            num_sponsored: 0,
                                                            num_sponsoring: 0,
                                                            signer_sponsoring_i_ds: VecM(
                                                                [],
                                                            ),
                                                            ext: V3(
                                                                AccountEntryExtensionV3 {
                                                                    ext: V0,
                                                                    seq_ledger: 14389,
                                                                    seq_time: TimePoint(
                                                                        1705451457,
                                                                    ),
                                                                },
                                                            ),
                                                        },
                                                    ),
                                                },
                                            ),
                                        },
                                    ),
                                    ext: V0,
                                },
                            ),
                            Updated(
                                LedgerEntry {
                                    last_modified_ledger_seq: 14390,
                                    data: Account(
                                        AccountEntry {
                                            account_id: AccountId(
                                                PublicKeyTypeEd25519(
                                                    Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                                                ),
                                            ),
                                            balance: 97116342406,
                                            seq_num: SequenceNumber(
                                                8723078587451,
                                            ),
                                            num_sub_entries: 0,
                                            inflation_dest: None,
                                            flags: 0,
                                            home_domain: String32(
                                                StringM(),
                                            ),
                                            thresholds: Thresholds(01000000),
                                            signers: VecM(
                                                [],
                                            ),
                                            ext: V1(
                                                AccountEntryExtensionV1 {
                                                    liabilities: Liabilities {
                                                        buying: 0,
                                                        selling: 0,
                                                    },
                                                    ext: V2(
                                                        AccountEntryExtensionV2 {
                                                            num_sponsored: 0,
                                                            num_sponsoring: 0,
                                                            signer_sponsoring_i_ds: VecM(
                                                                [],
                                                            ),
                                                            ext: V3(
                                                                AccountEntryExtensionV3 {
                                                                    ext: V0,
                                                                    seq_ledger: 14390,
                                                                    seq_time: TimePoint(
                                                                        1705451458,
                                                                    ),
                                                                },
                                                            ),
                                                        },
                                                    ),
                                                },
                                            ),
                                        },
                                    ),
                                    ext: V0,
                                },
                            ),
                        ],
                    ),
                ),
                operations: VecM(
                    [],
                ),
                tx_changes_after: LedgerEntryChanges(
                    VecM(
                        [
                            State(
                                LedgerEntry {
                                    last_modified_ledger_seq: 14390,
                                    data: Account(
                                        AccountEntry {
                                            account_id: AccountId(
                                                PublicKeyTypeEd25519(
                                                    Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                                                ),
                                            ),
                                            balance: 97116342406,
                                            seq_num: SequenceNumber(
                                                8723078587451,
                                            ),
                                            num_sub_entries: 0,
                                            inflation_dest: None,
                                            flags: 0,
                                            home_domain: String32(
                                                StringM(),
                                            ),
                                            thresholds: Thresholds(01000000),
                                            signers: VecM(
                                                [],
                                            ),
                                            ext: V1(
                                                AccountEntryExtensionV1 {
                                                    liabilities: Liabilities {
                                                        buying: 0,
                                                        selling: 0,
                                                    },
                                                    ext: V2(
                                                        AccountEntryExtensionV2 {
                                                            num_sponsored: 0,
                                                            num_sponsoring: 0,
                                                            signer_sponsoring_i_ds: VecM(
                                                                [],
                                                            ),
                                                            ext: V3(
                                                                AccountEntryExtensionV3 {
                                                                    ext: V0,
                                                                    seq_ledger: 14390,
                                                                    seq_time: TimePoint(
                                                                        1705451458,
                                                                    ),
                                                                },
                                                            ),
                                                        },
                                                    ),
                                                },
                                            ),
                                        },
                                    ),
                                    ext: V0,
                                },
                            ),
                            Updated(
                                LedgerEntry {
                                    last_modified_ledger_seq: 14390,
                                    data: Account(
                                        AccountEntry {
                                            account_id: AccountId(
                                                PublicKeyTypeEd25519(
                                                    Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                                                ),
                                            ),
                                            balance: 97116343722,
                                            seq_num: SequenceNumber(
                                                8723078587451,
                                            ),
                                            num_sub_entries: 0,
                                            inflation_dest: None,
                                            flags: 0,
                                            home_domain: String32(
                                                StringM(),
                                            ),
                                            thresholds: Thresholds(01000000),
                                            signers: VecM(
                                                [],
                                            ),
                                            ext: V1(
                                                AccountEntryExtensionV1 {
                                                    liabilities: Liabilities {
                                                        buying: 0,
                                                        selling: 0,
                                                    },
                                                    ext: V2(
                                                        AccountEntryExtensionV2 {
                                                            num_sponsored: 0,
                                                            num_sponsoring: 0,
                                                            signer_sponsoring_i_ds: VecM(
                                                                [],
                                                            ),
                                                            ext: V3(
                                                                AccountEntryExtensionV3 {
                                                                    ext: V0,
                                                                    seq_ledger: 14390,
                                                                    seq_time: TimePoint(
                                                                        1705451458,
                                                                    ),
                                                                },
                                                            ),
                                                        },
                                                    ),
                                                },
                                            ),
                                        },
                                    ),
                                    ext: V0,
                                },
                            ),
                        ],
                    ),
                ),
                soroban_meta: Some(
                    SorobanTransactionMeta {
                        ext: V0,
                        events: VecM(
                            [],
                        ),
                        return_value: Bool(
                            false,
                        ),
                        diagnostic_events: VecM(
                            [
                                DiagnosticEvent {
                                    in_successful_contract_call: false,
                                    event: ContractEvent {
                                        ext: V0,
                                        contract_id: None,
                                        type_: Diagnostic,
                                        body: V0(
                                            ContractEventV0 {
                                                topics: VecM(
                                                    [
                                                        Symbol(
                                                            ScSymbol(
                                                                StringM(error),
                                                            ),
                                                        ),
                                                        Error(
                                                            Budget(
                                                                ExceededLimit,
                                                            ),
                                                        ),
                                                    ],
                                                ),
                                                data: Vec(
                                                    Some(
                                                        ScVec(
                                                            VecM(
                                                                [
                                                                    String(
                                                                        ScString(
                                                                            StringM(ContractData size exceeds network config maximum size),
                                                                        ),
                                                                    ),
                                                                    U64(
                                                                        65576,
                                                                    ),
                                                                    U64(
                                                                        65536,
                                                                    ),
                                                                ],
                                                            ),
                                                        ),
                                                    ),
                                                ),
                                            },
                                        ),
                                    },
                                },
                            ],
                        ),
                    },
                ),
            },
        ),
    ),
}
error: transaction submission failed: Some(
    TransactionResult {
        fee_charged: 528460,
        result: TxFailed(
            VecM(
                [
                    OpInner(
                        InvokeHostFunction(
                            ResourceLimitExceeded,
                        ),
                    ),
                ],
            ),
        ),
        ext: V0,
    },
)
root@a9de1c64a841:/workspace# 
```

