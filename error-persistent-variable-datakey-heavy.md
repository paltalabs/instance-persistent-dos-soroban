```javascript
Pushing to VECTOR A, attempt N° 389 
Contract invocation successful. No error message received.
              ..
              ..
 Pushing to VECTOR B, attempt N° 389 
Contract invocation successful. No error message received.
              ..
              ..
 Pushing to VECTOR A, attempt N° 390 
Contract invocation failed with the following message: 2024-01-19T19:31:27.708170Z ERROR soroban_cli::rpc: GetTransactionResponse {
    status: "FAILED",
    envelope: Some(
        Tx(
            TransactionV1Envelope {
                tx: Transaction {
                    source_account: Ed25519(
                        Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                    ),
                    fee: 703800,
                    seq_num: SequenceNumber(
                        296352744462,
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
                                                    Hash(e3dbfce9f7cbcbc8ee62acc76da47c6263090080987a4141d43218739831b4bb),
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
                                            ContractCode(
                                                LedgerKeyContractCode {
                                                    hash: Hash(748fc010cc9ab86be18e6a06856fe0f123ec6a9559a0c03787959bb094a696d2),
                                                },
                                            ),
                                        ],
                                    ),
                                    read_write: VecM(
                                        [
                                            ContractData(
                                                LedgerKeyContractData {
                                                    contract: Contract(
                                                        Hash(e3dbfce9f7cbcbc8ee62acc76da47c6263090080987a4141d43218739831b4bb),
                                                    ),
                                                    key: LedgerKeyContractInstance,
                                                    durability: Persistent,
                                                },
                                            ),
                                        ],
                                    ),
                                },
                                instructions: 41110371,
                                read_bytes: 130144,
                                write_bytes: 65600,
                            },
                            resource_fee: 611900,
                        },
                    ),
                },
                signatures: VecM(
                    [
                        DecoratedSignature {
                            hint: SignatureHint(91f20285),
                            signature: Signature(
                                BytesM(0df8712e17eee0ba66ebd455c69204579223b1864c9111aac4e5aa90df6085c8a68419735159df600ee3c832e86eda7cbdb96ffe7d3bedf588f30bdaeda54507),
                            ),
                        },
                    ],
                ),
            },
        ),
    ),
    result: Some(
        TransactionResult {
            fee_charged: 612000,
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
                                    last_modified_ledger_seq: 3726,
                                    data: Account(
                                        AccountEntry {
                                            account_id: AccountId(
                                                PublicKeyTypeEd25519(
                                                    Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                                                ),
                                            ),
                                            balance: 99520743728,
                                            seq_num: SequenceNumber(
                                                296352744461,
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
                                                                    seq_ledger: 3725,
                                                                    seq_time: TimePoint(
                                                                        1705692686,
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
                                    last_modified_ledger_seq: 3726,
                                    data: Account(
                                        AccountEntry {
                                            account_id: AccountId(
                                                PublicKeyTypeEd25519(
                                                    Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                                                ),
                                            ),
                                            balance: 99520743728,
                                            seq_num: SequenceNumber(
                                                296352744462,
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
                                                                    seq_ledger: 3726,
                                                                    seq_time: TimePoint(
                                                                        1705692687,
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
                                    last_modified_ledger_seq: 3726,
                                    data: Account(
                                        AccountEntry {
                                            account_id: AccountId(
                                                PublicKeyTypeEd25519(
                                                    Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                                                ),
                                            ),
                                            balance: 99520743728,
                                            seq_num: SequenceNumber(
                                                296352744462,
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
                                                                    seq_ledger: 3726,
                                                                    seq_time: TimePoint(
                                                                        1705692687,
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
                                    last_modified_ledger_seq: 3726,
                                    data: Account(
                                        AccountEntry {
                                            account_id: AccountId(
                                                PublicKeyTypeEd25519(
                                                    Uint256(d2427efbd273bf1a40cefd13b34baf95ec407c8f0c7c5ccdc24ed4ee91f20285),
                                                ),
                                            ),
                                            balance: 99520745054,
                                            seq_num: SequenceNumber(
                                                296352744462,
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
                                                                    seq_ledger: 3726,
                                                                    seq_time: TimePoint(
                                                                        1705692687,
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
                                                                        65600,
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
        fee_charged: 612000,
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

```