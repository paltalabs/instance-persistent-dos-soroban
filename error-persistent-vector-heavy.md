```bash
Pushing the vector 1636  to VECTOR A
Contract invocation successful. No error message received.
 Pushing the vector 1636  to VECTOR B
Contract invocation successful. No error message received.
 Pushing the vector 1637  to VECTOR A
Contract invocation failed with the following message: 2024-01-17T20:41:00.225515Z ERROR soroban_cli::rpc: GetTransactionResponse {
    status: "FAILED",
    envelope: Some(
        Tx(
            TransactionV1Envelope {
                tx: Transaction {
                    source_account: Ed25519(
                        Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                    ),
                    fee: 600846,
                    seq_num: SequenceNumber(
                        657129999563,
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
                                                    Hash(fdcf9f50a57fd050601eefc1bbf12ec4640c75588412bed2ad94f836a5f120d6),
                                                ),
                                                function_name: ScSymbol(
                                                    StringM(increment_a),
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
                                            ContractData(
                                                LedgerKeyContractData {
                                                    contract: Contract(
                                                        Hash(fdcf9f50a57fd050601eefc1bbf12ec4640c75588412bed2ad94f836a5f120d6),
                                                    ),
                                                    key: LedgerKeyContractInstance,
                                                    durability: Persistent,
                                                },
                                            ),
                                            ContractCode(
                                                LedgerKeyContractCode {
                                                    hash: Hash(7f6c25cbc9974c978a94556cca5afb0d60dfb4230d75633792076178c23be047),
                                                },
                                            ),
                                        ],
                                    ),
                                    read_write: VecM(
                                        [
                                            ContractData(
                                                LedgerKeyContractData {
                                                    contract: Contract(
                                                        Hash(fdcf9f50a57fd050601eefc1bbf12ec4640c75588412bed2ad94f836a5f120d6),
                                                    ),
                                                    key: Symbol(
                                                        ScSymbol(
                                                            StringM(VECTOR_A),
                                                        ),
                                                    ),
                                                    durability: Persistent,
                                                },
                                            ),
                                        ],
                                    ),
                                },
                                instructions: 32070123,
                                read_bytes: 129684,
                                write_bytes: 65564,
                            },
                            resource_fee: 522375,
                        },
                    ),
                },
                signatures: VecM(
                    [
                        DecoratedSignature {
                            hint: SignatureHint(91f20285),
                            signature: Signature(
                                BytesM(3f5e917cecb3d5b70dd418b75526722c61666a4e43303ba814b8f0961f2e9595127bd0fe0788372dbd5ed9f9043c8513814d562505c852d2c214443376e27e0e),
                            ),
                        },
                    ],
                ),
            },
        ),
    ),
    result: Some(
        TransactionResult {
            fee_charged: 522475,
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
                                    last_modified_ledger_seq: 3860,
                                    data: Account(
                                        AccountEntry {
                                            account_id: AccountId(
                                                PublicKeyTypeEd25519(
                                                    Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                                                ),
                                            ),
                                            balance: 98567854474,
                                            seq_num: SequenceNumber(
                                                657129999562,
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
                                                                    seq_ledger: 3859,
                                                                    seq_time: TimePoint(
                                                                        1705524058,
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
                                    last_modified_ledger_seq: 3860,
                                    data: Account(
                                        AccountEntry {
                                            account_id: AccountId(
                                                PublicKeyTypeEd25519(
                                                    Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                                                ),
                                            ),
                                            balance: 98567854474,
                                            seq_num: SequenceNumber(
                                                657129999563,
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
                                                                    seq_ledger: 3860,
                                                                    seq_time: TimePoint(
                                                                        1705524059,
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
                                    last_modified_ledger_seq: 3860,
                                    data: Account(
                                        AccountEntry {
                                            account_id: AccountId(
                                                PublicKeyTypeEd25519(
                                                    Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                                                ),
                                            ),
                                            balance: 98567854474,
                                            seq_num: SequenceNumber(
                                                657129999563,
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
                                                                    seq_ledger: 3860,
                                                                    seq_time: TimePoint(
                                                                        1705524059,
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
                                    last_modified_ledger_seq: 3860,
                                    data: Account(
                                        AccountEntry {
                                            account_id: AccountId(
                                                PublicKeyTypeEd25519(
                                                    Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                                                ),
                                            ),
                                            balance: 98567855839,
                                            seq_num: SequenceNumber(
                                                657129999563,
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
                                                                    seq_ledger: 3860,
                                                                    seq_time: TimePoint(
                                                                        1705524059,
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
                                                                        65564,
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
        fee_charged: 522475,
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
root@04a91b512192:/workspace# 

```