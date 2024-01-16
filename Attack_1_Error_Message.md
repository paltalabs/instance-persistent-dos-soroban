```
Pushing the vector 1645 
2024-01-16T22:11:32.533890Z ERROR soroban_cli::rpc: GetTransactionResponse {
    status: "FAILED",
    envelope: Some(
        Tx(
            TransactionV1Envelope {
                tx: Transaction {
                    source_account: Ed25519(
                        Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                    ),
                    fee: 243082,
                    seq_num: SequenceNumber(
                        8723078582096,
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
                                                    Hash(a2d7772c4410cf924fd77ba4e9732150992a96848a9cd56cfa66e87c6cd84345),
                                                ),
                                                function_name: ScSymbol(
                                                    StringM(increment),
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
                                                    hash: Hash(4fc199454882c2af2cfa87230074700c18650845911014c6845021e4fe6366f1),
                                                },
                                            ),
                                        ],
                                    ),
                                    read_write: VecM(
                                        [
                                            ContractData(
                                                LedgerKeyContractData {
                                                    contract: Contract(
                                                        Hash(a2d7772c4410cf924fd77ba4e9732150992a96848a9cd56cfa66e87c6cd84345),
                                                    ),
                                                    key: LedgerKeyContractInstance,
                                                    durability: Persistent,
                                                },
                                            ),
                                        ],
                                    ),
                                },
                                instructions: 7283625,
                                read_bytes: 66324,
                                write_bytes: 65576,
                            },
                            resource_fee: 211276,
                        },
                    ),
                },
                signatures: VecM(
                    [
                        DecoratedSignature {
                            hint: SignatureHint(91f20285),
                            signature: Signature(
                                BytesM(3596d58bfbf523d53ff13846c2d8ab50d50a2dae68ea78bc9e9885056a3157cae8a7023a02ea60abb15d26838c562b05cacd128286b5954ad9c9dd2bf8dcdd0f),
                            ),
                        },
                    ],
                ),
            },
        ),
    ),
    result: Some(
        TransactionResult {
            fee_charged: 211376,
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
                                    last_modified_ledger_seq: 6889,
                                    data: Account(
                                        AccountEntry {
                                            account_id: AccountId(
                                                PublicKeyTypeEd25519(
                                                    Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                                                ),
                                            ),
                                            balance: 99440588179,
                                            seq_num: SequenceNumber(
                                                8723078582095,
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
                                                                    seq_ledger: 6888,
                                                                    seq_time: TimePoint(
                                                                        1705443090,
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
                                    last_modified_ledger_seq: 6889,
                                    data: Account(
                                        AccountEntry {
                                            account_id: AccountId(
                                                PublicKeyTypeEd25519(
                                                    Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                                                ),
                                            ),
                                            balance: 99440588179,
                                            seq_num: SequenceNumber(
                                                8723078582096,
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
                                                                    seq_ledger: 6889,
                                                                    seq_time: TimePoint(
                                                                        1705443091,
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
                                    last_modified_ledger_seq: 6889,
                                    data: Account(
                                        AccountEntry {
                                            account_id: AccountId(
                                                PublicKeyTypeEd25519(
                                                    Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                                                ),
                                            ),
                                            balance: 99440588179,
                                            seq_num: SequenceNumber(
                                                8723078582096,
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
                                                                    seq_ledger: 6889,
                                                                    seq_time: TimePoint(
                                                                        1705443091,
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
                                    last_modified_ledger_seq: 6889,
                                    data: Account(
                                        AccountEntry {
                                            account_id: AccountId(
                                                PublicKeyTypeEd25519(
                                                    Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                                                ),
                                            ),
                                            balance: 99440589495,
                                            seq_num: SequenceNumber(
                                                8723078582096,
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
                                                                    seq_ledger: 6889,
                                                                    seq_time: TimePoint(
                                                                        1705443091,
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
        fee_charged: 211376,
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
Contract invocation successful. No error message received.
```