```bash
Pushing the vector 818  to VECTOR A
Contract invocation successful. No error message received.
 Pushing the vector 818  to VECTOR B
Contract invocation failed with the following message: 2024-01-17T03:08:11.224155Z ERROR soroban_cli::rpc: GetTransactionResponse {
    status: "FAILED",
    envelope: Some(
        Tx(
            TransactionV1Envelope {
                tx: Transaction {
                    source_account: Ed25519(
                        Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                    ),
                    fee: 244415,
                    seq_num: SequenceNumber(
                        8723078589089,
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
                                                    Hash(3de1c3b11080777bfc0463d52ed475f7babac6793d548663e80d60c7256b9a33),
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
                                                    hash: Hash(b8240174bd14b00ff77c529f12c32d54613dbb6571ba1865c4ffb62387e73da0),
                                                },
                                            ),
                                        ],
                                    ),
                                    read_write: VecM(
                                        [
                                            ContractData(
                                                LedgerKeyContractData {
                                                    contract: Contract(
                                                        Hash(3de1c3b11080777bfc0463d52ed475f7babac6793d548663e80d60c7256b9a33),
                                                    ),
                                                    key: LedgerKeyContractInstance,
                                                    durability: Persistent,
                                                },
                                            ),
                                        ],
                                    ),
                                },
                                instructions: 7374952,
                                read_bytes: 66576,
                                write_bytes: 65576,
                            },
                            resource_fee: 212435,
                        },
                    ),
                },
                signatures: VecM(
                    [
                        DecoratedSignature {
                            hint: SignatureHint(91f20285),
                            signature: Signature(
                                BytesM(e9b8d26f1600a732091a693d66039efd50a6f73c5081db4073a413889a1580defa5612d6ba2eff7dd321db8d94523dc5745a40a0af0e1a81702db90f341fc60a),
                            ),
                        },
                    ],
                ),
            },
        ),
    ),
    result: Some(
        TransactionResult {
            fee_charged: 212535,
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
                                    last_modified_ledger_seq: 16283,
                                    data: Account(
                                        AccountEntry {
                                            account_id: AccountId(
                                                PublicKeyTypeEd25519(
                                                    Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                                                ),
                                            ),
                                            balance: 96902692915,
                                            seq_num: SequenceNumber(
                                                8723078589088,
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
                                                                    seq_ledger: 16282,
                                                                    seq_time: TimePoint(
                                                                        1705460889,
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
                                    last_modified_ledger_seq: 16283,
                                    data: Account(
                                        AccountEntry {
                                            account_id: AccountId(
                                                PublicKeyTypeEd25519(
                                                    Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                                                ),
                                            ),
                                            balance: 96902692915,
                                            seq_num: SequenceNumber(
                                                8723078589089,
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
                                                                    seq_ledger: 16283,
                                                                    seq_time: TimePoint(
                                                                        1705460890,
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
                                    last_modified_ledger_seq: 16283,
                                    data: Account(
                                        AccountEntry {
                                            account_id: AccountId(
                                                PublicKeyTypeEd25519(
                                                    Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                                                ),
                                            ),
                                            balance: 96902692915,
                                            seq_num: SequenceNumber(
                                                8723078589089,
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
                                                                    seq_ledger: 16283,
                                                                    seq_time: TimePoint(
                                                                        1705460890,
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
                                    last_modified_ledger_seq: 16283,
                                    data: Account(
                                        AccountEntry {
                                            account_id: AccountId(
                                                PublicKeyTypeEd25519(
                                                    Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                                                ),
                                            ),
                                            balance: 96902694231,
                                            seq_num: SequenceNumber(
                                                8723078589089,
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
                                                                    seq_ledger: 16283,
                                                                    seq_time: TimePoint(
                                                                        1705460890,
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
        fee_charged: 212535,
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
