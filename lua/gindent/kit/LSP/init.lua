local LSP = {}

---@enum gindent.kit.LSP.SemanticTokenTypes
LSP.SemanticTokenTypes = {
  namespace = 'namespace',
  type = 'type',
  class = 'class',
  enum = 'enum',
  interface = 'interface',
  struct = 'struct',
  typeParameter = 'typeParameter',
  parameter = 'parameter',
  variable = 'variable',
  property = 'property',
  enumMember = 'enumMember',
  event = 'event',
  ['function'] = 'function',
  method = 'method',
  macro = 'macro',
  keyword = 'keyword',
  modifier = 'modifier',
  comment = 'comment',
  string = 'string',
  number = 'number',
  regexp = 'regexp',
  operator = 'operator',
  decorator = 'decorator',
}

---@enum gindent.kit.LSP.SemanticTokenModifiers
LSP.SemanticTokenModifiers = {
  declaration = 'declaration',
  definition = 'definition',
  readonly = 'readonly',
  static = 'static',
  deprecated = 'deprecated',
  abstract = 'abstract',
  async = 'async',
  modification = 'modification',
  documentation = 'documentation',
  defaultLibrary = 'defaultLibrary',
}

---@enum gindent.kit.LSP.DocumentDiagnosticReportKind
LSP.DocumentDiagnosticReportKind = {
  Full = 'full',
  Unchanged = 'unchanged',
}

---@enum gindent.kit.LSP.ErrorCodes
LSP.ErrorCodes = {
  ParseError = -32700,
  InvalidRequest = -32600,
  MethodNotFound = -32601,
  InvalidParams = -32602,
  InternalError = -32603,
  ServerNotInitialized = -32002,
  UnknownErrorCode = -32001,
}

---@enum gindent.kit.LSP.LSPErrorCodes
LSP.LSPErrorCodes = {
  RequestFailed = -32803,
  ServerCancelled = -32802,
  ContentModified = -32801,
  RequestCancelled = -32800,
}

---@enum gindent.kit.LSP.FoldingRangeKind
LSP.FoldingRangeKind = {
  Comment = 'comment',
  Imports = 'imports',
  Region = 'region',
}

---@enum gindent.kit.LSP.SymbolKind
LSP.SymbolKind = {
  File = 1,
  Module = 2,
  Namespace = 3,
  Package = 4,
  Class = 5,
  Method = 6,
  Property = 7,
  Field = 8,
  Constructor = 9,
  Enum = 10,
  Interface = 11,
  Function = 12,
  Variable = 13,
  Constant = 14,
  String = 15,
  Number = 16,
  Boolean = 17,
  Array = 18,
  Object = 19,
  Key = 20,
  Null = 21,
  EnumMember = 22,
  Struct = 23,
  Event = 24,
  Operator = 25,
  TypeParameter = 26,
}

---@enum gindent.kit.LSP.SymbolTag
LSP.SymbolTag = {
  Deprecated = 1,
}

---@enum gindent.kit.LSP.UniquenessLevel
LSP.UniquenessLevel = {
  document = 'document',
  project = 'project',
  group = 'group',
  scheme = 'scheme',
  global = 'global',
}

---@enum gindent.kit.LSP.MonikerKind
LSP.MonikerKind = {
  import = 'import',
  export = 'export',
  ['local'] = 'local',
}

---@enum gindent.kit.LSP.InlayHintKind
LSP.InlayHintKind = {
  Type = 1,
  Parameter = 2,
}

---@enum gindent.kit.LSP.MessageType
LSP.MessageType = {
  Error = 1,
  Warning = 2,
  Info = 3,
  Log = 4,
}

---@enum gindent.kit.LSP.TextDocumentSyncKind
LSP.TextDocumentSyncKind = {
  None = 0,
  Full = 1,
  Incremental = 2,
}

---@enum gindent.kit.LSP.TextDocumentSaveReason
LSP.TextDocumentSaveReason = {
  Manual = 1,
  AfterDelay = 2,
  FocusOut = 3,
}

---@enum gindent.kit.LSP.CompletionItemKind
LSP.CompletionItemKind = {
  Text = 1,
  Method = 2,
  Function = 3,
  Constructor = 4,
  Field = 5,
  Variable = 6,
  Class = 7,
  Interface = 8,
  Module = 9,
  Property = 10,
  Unit = 11,
  Value = 12,
  Enum = 13,
  Keyword = 14,
  Snippet = 15,
  Color = 16,
  File = 17,
  Reference = 18,
  Folder = 19,
  EnumMember = 20,
  Constant = 21,
  Struct = 22,
  Event = 23,
  Operator = 24,
  TypeParameter = 25,
}

---@enum gindent.kit.LSP.CompletionItemTag
LSP.CompletionItemTag = {
  Deprecated = 1,
}

---@enum gindent.kit.LSP.InsertTextFormat
LSP.InsertTextFormat = {
  PlainText = 1,
  Snippet = 2,
}

---@enum gindent.kit.LSP.InsertTextMode
LSP.InsertTextMode = {
  asIs = 1,
  adjustIndentation = 2,
}

---@enum gindent.kit.LSP.DocumentHighlightKind
LSP.DocumentHighlightKind = {
  Text = 1,
  Read = 2,
  Write = 3,
}

---@enum gindent.kit.LSP.CodeActionKind
LSP.CodeActionKind = {
  Empty = '',
  QuickFix = 'quickfix',
  Refactor = 'refactor',
  RefactorExtract = 'refactor.extract',
  RefactorInline = 'refactor.inline',
  RefactorRewrite = 'refactor.rewrite',
  Source = 'source',
  SourceOrganizeImports = 'source.organizeImports',
  SourceFixAll = 'source.fixAll',
}

---@enum gindent.kit.LSP.TraceValues
LSP.TraceValues = {
  Off = 'off',
  Messages = 'messages',
  Verbose = 'verbose',
}

---@enum gindent.kit.LSP.MarkupKind
LSP.MarkupKind = {
  PlainText = 'plaintext',
  Markdown = 'markdown',
}

---@enum gindent.kit.LSP.PositionEncodingKind
LSP.PositionEncodingKind = {
  UTF8 = 'utf-8',
  UTF16 = 'utf-16',
  UTF32 = 'utf-32',
}

---@enum gindent.kit.LSP.FileChangeType
LSP.FileChangeType = {
  Created = 1,
  Changed = 2,
  Deleted = 3,
}

---@enum gindent.kit.LSP.WatchKind
LSP.WatchKind = {
  Create = 1,
  Change = 2,
  Delete = 4,
}

---@enum gindent.kit.LSP.DiagnosticSeverity
LSP.DiagnosticSeverity = {
  Error = 1,
  Warning = 2,
  Information = 3,
  Hint = 4,
}

---@enum gindent.kit.LSP.DiagnosticTag
LSP.DiagnosticTag = {
  Unnecessary = 1,
  Deprecated = 2,
}

---@enum gindent.kit.LSP.CompletionTriggerKind
LSP.CompletionTriggerKind = {
  Invoked = 1,
  TriggerCharacter = 2,
  TriggerForIncompleteCompletions = 3,
}

---@enum gindent.kit.LSP.SignatureHelpTriggerKind
LSP.SignatureHelpTriggerKind = {
  Invoked = 1,
  TriggerCharacter = 2,
  ContentChange = 3,
}

---@enum gindent.kit.LSP.CodeActionTriggerKind
LSP.CodeActionTriggerKind = {
  Invoked = 1,
  Automatic = 2,
}

---@enum gindent.kit.LSP.FileOperationPatternKind
LSP.FileOperationPatternKind = {
  file = 'file',
  folder = 'folder',
}

---@enum gindent.kit.LSP.NotebookCellKind
LSP.NotebookCellKind = {
  Markup = 1,
  Code = 2,
}

---@enum gindent.kit.LSP.ResourceOperationKind
LSP.ResourceOperationKind = {
  Create = 'create',
  Rename = 'rename',
  Delete = 'delete',
}

---@enum gindent.kit.LSP.FailureHandlingKind
LSP.FailureHandlingKind = {
  Abort = 'abort',
  Transactional = 'transactional',
  TextOnlyTransactional = 'textOnlyTransactional',
  Undo = 'undo',
}

---@enum gindent.kit.LSP.PrepareSupportDefaultBehavior
LSP.PrepareSupportDefaultBehavior = {
  Identifier = 1,
}

---@enum gindent.kit.LSP.TokenFormat
LSP.TokenFormat = {
  Relative = 'relative',
}

---@class gindent.kit.LSP.ImplementationParams : gindent.kit.LSP.TextDocumentPositionParams

---@class gindent.kit.LSP.Location
---@field public uri string
---@field public range gindent.kit.LSP.Range

---@class gindent.kit.LSP.ImplementationRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.TypeDefinitionParams : gindent.kit.LSP.TextDocumentPositionParams

---@class gindent.kit.LSP.TypeDefinitionRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.WorkspaceFolder
---@field public uri string
---@field public name string

---@class gindent.kit.LSP.DidChangeWorkspaceFoldersParams
---@field public event gindent.kit.LSP.WorkspaceFoldersChangeEvent

---@class gindent.kit.LSP.ConfigurationParams
---@field public items gindent.kit.LSP.ConfigurationItem[]

---@class gindent.kit.LSP.PartialResultParams
---@field public partialResultToken? gindent.kit.LSP.ProgressToken

---@class gindent.kit.LSP.DocumentColorParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier

---@class gindent.kit.LSP.ColorInformation
---@field public range gindent.kit.LSP.Range
---@field public color gindent.kit.LSP.Color

---@class gindent.kit.LSP.DocumentColorRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.ColorPresentationParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier
---@field public color gindent.kit.LSP.Color
---@field public range gindent.kit.LSP.Range

---@class gindent.kit.LSP.ColorPresentation
---@field public label string
---@field public textEdit? gindent.kit.LSP.TextEdit
---@field public additionalTextEdits? gindent.kit.LSP.TextEdit[]

---@class gindent.kit.LSP.WorkDoneProgressOptions
---@field public workDoneProgress? boolean

---@class gindent.kit.LSP.TextDocumentRegistrationOptions
---@field public documentSelector (gindent.kit.LSP.DocumentSelector | nil)

---@class gindent.kit.LSP.FoldingRangeParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier

---@class gindent.kit.LSP.FoldingRange
---@field public startLine integer
---@field public startCharacter? integer
---@field public endLine integer
---@field public endCharacter? integer
---@field public kind? gindent.kit.LSP.FoldingRangeKind
---@field public collapsedText? string

---@class gindent.kit.LSP.FoldingRangeRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.DeclarationParams : gindent.kit.LSP.TextDocumentPositionParams

---@class gindent.kit.LSP.DeclarationRegistrationOptions : gindent.kit.LSP.DeclarationOptions

---@class gindent.kit.LSP.SelectionRangeParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier
---@field public positions gindent.kit.LSP.Position[]

---@class gindent.kit.LSP.SelectionRange
---@field public range gindent.kit.LSP.Range
---@field public parent? gindent.kit.LSP.SelectionRange

---@class gindent.kit.LSP.SelectionRangeRegistrationOptions : gindent.kit.LSP.SelectionRangeOptions

---@class gindent.kit.LSP.WorkDoneProgressCreateParams
---@field public token gindent.kit.LSP.ProgressToken

---@class gindent.kit.LSP.WorkDoneProgressCancelParams
---@field public token gindent.kit.LSP.ProgressToken

---@class gindent.kit.LSP.CallHierarchyPrepareParams : gindent.kit.LSP.TextDocumentPositionParams

---@class gindent.kit.LSP.CallHierarchyItem
---@field public name string
---@field public kind gindent.kit.LSP.SymbolKind
---@field public tags? gindent.kit.LSP.SymbolTag[]
---@field public detail? string
---@field public uri string
---@field public range gindent.kit.LSP.Range
---@field public selectionRange gindent.kit.LSP.Range
---@field public data? gindent.kit.LSP.LSPAny

---@class gindent.kit.LSP.CallHierarchyRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.CallHierarchyIncomingCallsParams
---@field public item gindent.kit.LSP.CallHierarchyItem

---@class gindent.kit.LSP.CallHierarchyIncomingCall
---@field public from gindent.kit.LSP.CallHierarchyItem
---@field public fromRanges gindent.kit.LSP.Range[]

---@class gindent.kit.LSP.CallHierarchyOutgoingCallsParams
---@field public item gindent.kit.LSP.CallHierarchyItem

---@class gindent.kit.LSP.CallHierarchyOutgoingCall
---@field public to gindent.kit.LSP.CallHierarchyItem
---@field public fromRanges gindent.kit.LSP.Range[]

---@class gindent.kit.LSP.SemanticTokensParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier

---@class gindent.kit.LSP.SemanticTokens
---@field public resultId? string
---@field public data integer[]

---@class gindent.kit.LSP.SemanticTokensPartialResult
---@field public data integer[]

---@class gindent.kit.LSP.SemanticTokensRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.SemanticTokensDeltaParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier
---@field public previousResultId string

---@class gindent.kit.LSP.SemanticTokensDelta
---@field public resultId? string
---@field public edits gindent.kit.LSP.SemanticTokensEdit[]

---@class gindent.kit.LSP.SemanticTokensDeltaPartialResult
---@field public edits gindent.kit.LSP.SemanticTokensEdit[]

---@class gindent.kit.LSP.SemanticTokensRangeParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier
---@field public range gindent.kit.LSP.Range

---@class gindent.kit.LSP.ShowDocumentParams
---@field public uri string
---@field public external? boolean
---@field public takeFocus? boolean
---@field public selection? gindent.kit.LSP.Range

---@class gindent.kit.LSP.ShowDocumentResult
---@field public success boolean

---@class gindent.kit.LSP.LinkedEditingRangeParams : gindent.kit.LSP.TextDocumentPositionParams

---@class gindent.kit.LSP.LinkedEditingRanges
---@field public ranges gindent.kit.LSP.Range[]
---@field public wordPattern? string

---@class gindent.kit.LSP.LinkedEditingRangeRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.CreateFilesParams
---@field public files gindent.kit.LSP.FileCreate[]

---@class gindent.kit.LSP.WorkspaceEdit
---@field public changes? table<string, gindent.kit.LSP.TextEdit[]>
---@field public documentChanges? (gindent.kit.LSP.TextDocumentEdit | gindent.kit.LSP.CreateFile | gindent.kit.LSP.RenameFile | gindent.kit.LSP.DeleteFile)[]
---@field public changeAnnotations? table<gindent.kit.LSP.ChangeAnnotationIdentifier, gindent.kit.LSP.ChangeAnnotation>

---@class gindent.kit.LSP.FileOperationRegistrationOptions
---@field public filters gindent.kit.LSP.FileOperationFilter[]

---@class gindent.kit.LSP.RenameFilesParams
---@field public files gindent.kit.LSP.FileRename[]

---@class gindent.kit.LSP.DeleteFilesParams
---@field public files gindent.kit.LSP.FileDelete[]

---@class gindent.kit.LSP.MonikerParams : gindent.kit.LSP.TextDocumentPositionParams

---@class gindent.kit.LSP.Moniker
---@field public scheme string
---@field public identifier string
---@field public unique gindent.kit.LSP.UniquenessLevel
---@field public kind? gindent.kit.LSP.MonikerKind

---@class gindent.kit.LSP.MonikerRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.TypeHierarchyPrepareParams : gindent.kit.LSP.TextDocumentPositionParams

---@class gindent.kit.LSP.TypeHierarchyItem
---@field public name string
---@field public kind gindent.kit.LSP.SymbolKind
---@field public tags? gindent.kit.LSP.SymbolTag[]
---@field public detail? string
---@field public uri string
---@field public range gindent.kit.LSP.Range
---@field public selectionRange gindent.kit.LSP.Range
---@field public data? gindent.kit.LSP.LSPAny

---@class gindent.kit.LSP.TypeHierarchyRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.TypeHierarchySupertypesParams
---@field public item gindent.kit.LSP.TypeHierarchyItem

---@class gindent.kit.LSP.TypeHierarchySubtypesParams
---@field public item gindent.kit.LSP.TypeHierarchyItem

---@class gindent.kit.LSP.InlineValueParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier
---@field public range gindent.kit.LSP.Range
---@field public context gindent.kit.LSP.InlineValueContext

---@class gindent.kit.LSP.InlineValueRegistrationOptions : gindent.kit.LSP.InlineValueOptions

---@class gindent.kit.LSP.InlayHintParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier
---@field public range gindent.kit.LSP.Range

---@class gindent.kit.LSP.InlayHint
---@field public position gindent.kit.LSP.Position
---@field public label (string | gindent.kit.LSP.InlayHintLabelPart[])
---@field public kind? gindent.kit.LSP.InlayHintKind
---@field public textEdits? gindent.kit.LSP.TextEdit[]
---@field public tooltip? (string | gindent.kit.LSP.MarkupContent)
---@field public paddingLeft? boolean
---@field public paddingRight? boolean
---@field public data? gindent.kit.LSP.LSPAny

---@class gindent.kit.LSP.InlayHintRegistrationOptions : gindent.kit.LSP.InlayHintOptions

---@class gindent.kit.LSP.DocumentDiagnosticParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier
---@field public identifier? string
---@field public previousResultId? string

---@class gindent.kit.LSP.DocumentDiagnosticReportPartialResult
---@field public relatedDocuments table<string, (gindent.kit.LSP.FullDocumentDiagnosticReport | gindent.kit.LSP.UnchangedDocumentDiagnosticReport)>

---@class gindent.kit.LSP.DiagnosticServerCancellationData
---@field public retriggerRequest boolean

---@class gindent.kit.LSP.DiagnosticRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.WorkspaceDiagnosticParams
---@field public identifier? string
---@field public previousResultIds gindent.kit.LSP.PreviousResultId[]

---@class gindent.kit.LSP.WorkspaceDiagnosticReport
---@field public items gindent.kit.LSP.WorkspaceDocumentDiagnosticReport[]

---@class gindent.kit.LSP.WorkspaceDiagnosticReportPartialResult
---@field public items gindent.kit.LSP.WorkspaceDocumentDiagnosticReport[]

---@class gindent.kit.LSP.DidOpenNotebookDocumentParams
---@field public notebookDocument gindent.kit.LSP.NotebookDocument
---@field public cellTextDocuments gindent.kit.LSP.TextDocumentItem[]

---@class gindent.kit.LSP.DidChangeNotebookDocumentParams
---@field public notebookDocument gindent.kit.LSP.VersionedNotebookDocumentIdentifier
---@field public change gindent.kit.LSP.NotebookDocumentChangeEvent

---@class gindent.kit.LSP.DidSaveNotebookDocumentParams
---@field public notebookDocument gindent.kit.LSP.NotebookDocumentIdentifier

---@class gindent.kit.LSP.DidCloseNotebookDocumentParams
---@field public notebookDocument gindent.kit.LSP.NotebookDocumentIdentifier
---@field public cellTextDocuments gindent.kit.LSP.TextDocumentIdentifier[]

---@class gindent.kit.LSP.RegistrationParams
---@field public registrations gindent.kit.LSP.Registration[]

---@class gindent.kit.LSP.UnregistrationParams
---@field public unregisterations gindent.kit.LSP.Unregistration[]

---@class gindent.kit.LSP.InitializeParams : gindent.kit.LSP._InitializeParams

---@class gindent.kit.LSP.InitializeResult
---@field public capabilities gindent.kit.LSP.ServerCapabilities
---@field public serverInfo? { name: string, version?: string }

---@class gindent.kit.LSP.InitializeError
---@field public retry boolean

---@class gindent.kit.LSP.InitializedParams

---@class gindent.kit.LSP.DidChangeConfigurationParams
---@field public settings gindent.kit.LSP.LSPAny

---@class gindent.kit.LSP.DidChangeConfigurationRegistrationOptions
---@field public section? (string | string[])

---@class gindent.kit.LSP.ShowMessageParams
---@field public type gindent.kit.LSP.MessageType
---@field public message string

---@class gindent.kit.LSP.ShowMessageRequestParams
---@field public type gindent.kit.LSP.MessageType
---@field public message string
---@field public actions? gindent.kit.LSP.MessageActionItem[]

---@class gindent.kit.LSP.MessageActionItem
---@field public title string

---@class gindent.kit.LSP.LogMessageParams
---@field public type gindent.kit.LSP.MessageType
---@field public message string

---@class gindent.kit.LSP.DidOpenTextDocumentParams
---@field public textDocument gindent.kit.LSP.TextDocumentItem

---@class gindent.kit.LSP.DidChangeTextDocumentParams
---@field public textDocument gindent.kit.LSP.VersionedTextDocumentIdentifier
---@field public contentChanges gindent.kit.LSP.TextDocumentContentChangeEvent[]

---@class gindent.kit.LSP.TextDocumentChangeRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions
---@field public syncKind gindent.kit.LSP.TextDocumentSyncKind

---@class gindent.kit.LSP.DidCloseTextDocumentParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier

---@class gindent.kit.LSP.DidSaveTextDocumentParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier
---@field public text? string

---@class gindent.kit.LSP.TextDocumentSaveRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.WillSaveTextDocumentParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier
---@field public reason gindent.kit.LSP.TextDocumentSaveReason

---@class gindent.kit.LSP.TextEdit
---@field public range gindent.kit.LSP.Range
---@field public newText string

---@class gindent.kit.LSP.DidChangeWatchedFilesParams
---@field public changes gindent.kit.LSP.FileEvent[]

---@class gindent.kit.LSP.DidChangeWatchedFilesRegistrationOptions
---@field public watchers gindent.kit.LSP.FileSystemWatcher[]

---@class gindent.kit.LSP.PublishDiagnosticsParams
---@field public uri string
---@field public version? integer
---@field public diagnostics gindent.kit.LSP.Diagnostic[]

---@class gindent.kit.LSP.CompletionParams : gindent.kit.LSP.TextDocumentPositionParams
---@field public context? gindent.kit.LSP.CompletionContext

---@class gindent.kit.LSP.CompletionItem
---@field public label string
---@field public labelDetails? gindent.kit.LSP.CompletionItemLabelDetails
---@field public kind? gindent.kit.LSP.CompletionItemKind
---@field public tags? gindent.kit.LSP.CompletionItemTag[]
---@field public detail? string
---@field public documentation? (string | gindent.kit.LSP.MarkupContent)
---@field public deprecated? boolean
---@field public preselect? boolean
---@field public sortText? string
---@field public filterText? string
---@field public insertText? string
---@field public insertTextFormat? gindent.kit.LSP.InsertTextFormat
---@field public insertTextMode? gindent.kit.LSP.InsertTextMode
---@field public textEdit? (gindent.kit.LSP.TextEdit | gindent.kit.LSP.InsertReplaceEdit)
---@field public textEditText? string
---@field public additionalTextEdits? gindent.kit.LSP.TextEdit[]
---@field public commitCharacters? string[]
---@field public command? gindent.kit.LSP.Command
---@field public data? gindent.kit.LSP.LSPAny

---@class gindent.kit.LSP.CompletionList
---@field public isIncomplete boolean
---@field public itemDefaults? { commitCharacters?: string[], editRange?: (gindent.kit.LSP.Range | { insert: gindent.kit.LSP.Range, replace: gindent.kit.LSP.Range }), insertTextFormat?: gindent.kit.LSP.InsertTextFormat, insertTextMode?: gindent.kit.LSP.InsertTextMode, data?: gindent.kit.LSP.LSPAny }
---@field public items gindent.kit.LSP.CompletionItem[]

---@class gindent.kit.LSP.CompletionRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.HoverParams : gindent.kit.LSP.TextDocumentPositionParams

---@class gindent.kit.LSP.Hover
---@field public contents (gindent.kit.LSP.MarkupContent | gindent.kit.LSP.MarkedString | gindent.kit.LSP.MarkedString[])
---@field public range? gindent.kit.LSP.Range

---@class gindent.kit.LSP.HoverRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.SignatureHelpParams : gindent.kit.LSP.TextDocumentPositionParams
---@field public context? gindent.kit.LSP.SignatureHelpContext

---@class gindent.kit.LSP.SignatureHelp
---@field public signatures gindent.kit.LSP.SignatureInformation[]
---@field public activeSignature? integer
---@field public activeParameter? integer

---@class gindent.kit.LSP.SignatureHelpRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.DefinitionParams : gindent.kit.LSP.TextDocumentPositionParams

---@class gindent.kit.LSP.DefinitionRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.ReferenceParams : gindent.kit.LSP.TextDocumentPositionParams
---@field public context gindent.kit.LSP.ReferenceContext

---@class gindent.kit.LSP.ReferenceRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.DocumentHighlightParams : gindent.kit.LSP.TextDocumentPositionParams

---@class gindent.kit.LSP.DocumentHighlight
---@field public range gindent.kit.LSP.Range
---@field public kind? gindent.kit.LSP.DocumentHighlightKind

---@class gindent.kit.LSP.DocumentHighlightRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.DocumentSymbolParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier

---@class gindent.kit.LSP.SymbolInformation : gindent.kit.LSP.BaseSymbolInformation
---@field public deprecated? boolean
---@field public location gindent.kit.LSP.Location

---@class gindent.kit.LSP.DocumentSymbol
---@field public name string
---@field public detail? string
---@field public kind gindent.kit.LSP.SymbolKind
---@field public tags? gindent.kit.LSP.SymbolTag[]
---@field public deprecated? boolean
---@field public range gindent.kit.LSP.Range
---@field public selectionRange gindent.kit.LSP.Range
---@field public children? gindent.kit.LSP.DocumentSymbol[]

---@class gindent.kit.LSP.DocumentSymbolRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.CodeActionParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier
---@field public range gindent.kit.LSP.Range
---@field public context gindent.kit.LSP.CodeActionContext

---@class gindent.kit.LSP.Command
---@field public title string
---@field public command string
---@field public arguments? gindent.kit.LSP.LSPAny[]

---@class gindent.kit.LSP.CodeAction
---@field public title string
---@field public kind? gindent.kit.LSP.CodeActionKind
---@field public diagnostics? gindent.kit.LSP.Diagnostic[]
---@field public isPreferred? boolean
---@field public disabled? { reason: string }
---@field public edit? gindent.kit.LSP.WorkspaceEdit
---@field public command? gindent.kit.LSP.Command
---@field public data? gindent.kit.LSP.LSPAny

---@class gindent.kit.LSP.CodeActionRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.WorkspaceSymbolParams
---@field public query string

---@class gindent.kit.LSP.WorkspaceSymbol : gindent.kit.LSP.BaseSymbolInformation
---@field public location (gindent.kit.LSP.Location | { uri: string })
---@field public data? gindent.kit.LSP.LSPAny

---@class gindent.kit.LSP.WorkspaceSymbolRegistrationOptions : gindent.kit.LSP.WorkspaceSymbolOptions

---@class gindent.kit.LSP.CodeLensParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier

---@class gindent.kit.LSP.CodeLens
---@field public range gindent.kit.LSP.Range
---@field public command? gindent.kit.LSP.Command
---@field public data? gindent.kit.LSP.LSPAny

---@class gindent.kit.LSP.CodeLensRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.DocumentLinkParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier

---@class gindent.kit.LSP.DocumentLink
---@field public range gindent.kit.LSP.Range
---@field public target? string
---@field public tooltip? string
---@field public data? gindent.kit.LSP.LSPAny

---@class gindent.kit.LSP.DocumentLinkRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.DocumentFormattingParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier
---@field public options gindent.kit.LSP.FormattingOptions

---@class gindent.kit.LSP.DocumentFormattingRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.DocumentRangeFormattingParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier
---@field public range gindent.kit.LSP.Range
---@field public options gindent.kit.LSP.FormattingOptions

---@class gindent.kit.LSP.DocumentRangeFormattingRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.DocumentOnTypeFormattingParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier
---@field public position gindent.kit.LSP.Position
---@field public ch string
---@field public options gindent.kit.LSP.FormattingOptions

---@class gindent.kit.LSP.DocumentOnTypeFormattingRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.RenameParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier
---@field public position gindent.kit.LSP.Position
---@field public newName string

---@class gindent.kit.LSP.RenameRegistrationOptions : gindent.kit.LSP.TextDocumentRegistrationOptions

---@class gindent.kit.LSP.PrepareRenameParams : gindent.kit.LSP.TextDocumentPositionParams

---@class gindent.kit.LSP.ExecuteCommandParams
---@field public command string
---@field public arguments? gindent.kit.LSP.LSPAny[]

---@class gindent.kit.LSP.ExecuteCommandRegistrationOptions : gindent.kit.LSP.ExecuteCommandOptions

---@class gindent.kit.LSP.ApplyWorkspaceEditParams
---@field public label? string
---@field public edit gindent.kit.LSP.WorkspaceEdit

---@class gindent.kit.LSP.ApplyWorkspaceEditResult
---@field public applied boolean
---@field public failureReason? string
---@field public failedChange? integer

---@class gindent.kit.LSP.WorkDoneProgressBegin
---@field public kind "begin"
---@field public title string
---@field public cancellable? boolean
---@field public message? string
---@field public percentage? integer

---@class gindent.kit.LSP.WorkDoneProgressReport
---@field public kind "report"
---@field public cancellable? boolean
---@field public message? string
---@field public percentage? integer

---@class gindent.kit.LSP.WorkDoneProgressEnd
---@field public kind "end"
---@field public message? string

---@class gindent.kit.LSP.SetTraceParams
---@field public value gindent.kit.LSP.TraceValues

---@class gindent.kit.LSP.LogTraceParams
---@field public message string
---@field public verbose? string

---@class gindent.kit.LSP.CancelParams
---@field public id (integer | string)

---@class gindent.kit.LSP.ProgressParams
---@field public token gindent.kit.LSP.ProgressToken
---@field public value gindent.kit.LSP.LSPAny

---@class gindent.kit.LSP.TextDocumentPositionParams
---@field public textDocument gindent.kit.LSP.TextDocumentIdentifier
---@field public position gindent.kit.LSP.Position

---@class gindent.kit.LSP.WorkDoneProgressParams
---@field public workDoneToken? gindent.kit.LSP.ProgressToken

---@class gindent.kit.LSP.LocationLink
---@field public originSelectionRange? gindent.kit.LSP.Range
---@field public targetUri string
---@field public targetRange gindent.kit.LSP.Range
---@field public targetSelectionRange gindent.kit.LSP.Range

---@class gindent.kit.LSP.Range
---@field public start gindent.kit.LSP.Position
---@field public end gindent.kit.LSP.Position

---@class gindent.kit.LSP.ImplementationOptions

---@class gindent.kit.LSP.StaticRegistrationOptions
---@field public id? string

---@class gindent.kit.LSP.TypeDefinitionOptions

---@class gindent.kit.LSP.WorkspaceFoldersChangeEvent
---@field public added gindent.kit.LSP.WorkspaceFolder[]
---@field public removed gindent.kit.LSP.WorkspaceFolder[]

---@class gindent.kit.LSP.ConfigurationItem
---@field public scopeUri? string
---@field public section? string

---@class gindent.kit.LSP.TextDocumentIdentifier
---@field public uri string

---@class gindent.kit.LSP.Color
---@field public red integer
---@field public green integer
---@field public blue integer
---@field public alpha integer

---@class gindent.kit.LSP.DocumentColorOptions

---@class gindent.kit.LSP.FoldingRangeOptions

---@class gindent.kit.LSP.DeclarationOptions

---@class gindent.kit.LSP.Position
---@field public line integer
---@field public character integer

---@class gindent.kit.LSP.SelectionRangeOptions

---@class gindent.kit.LSP.CallHierarchyOptions

---@class gindent.kit.LSP.SemanticTokensOptions
---@field public legend gindent.kit.LSP.SemanticTokensLegend
---@field public range? (boolean | {  })
---@field public full? (boolean | { delta?: boolean })

---@class gindent.kit.LSP.SemanticTokensEdit
---@field public start integer
---@field public deleteCount integer
---@field public data? integer[]

---@class gindent.kit.LSP.LinkedEditingRangeOptions

---@class gindent.kit.LSP.FileCreate
---@field public uri string

---@class gindent.kit.LSP.TextDocumentEdit
---@field public textDocument gindent.kit.LSP.OptionalVersionedTextDocumentIdentifier
---@field public edits (gindent.kit.LSP.TextEdit | gindent.kit.LSP.AnnotatedTextEdit)[]

---@class gindent.kit.LSP.CreateFile : gindent.kit.LSP.ResourceOperation
---@field public kind "create"
---@field public uri string
---@field public options? gindent.kit.LSP.CreateFileOptions

---@class gindent.kit.LSP.RenameFile : gindent.kit.LSP.ResourceOperation
---@field public kind "rename"
---@field public oldUri string
---@field public newUri string
---@field public options? gindent.kit.LSP.RenameFileOptions

---@class gindent.kit.LSP.DeleteFile : gindent.kit.LSP.ResourceOperation
---@field public kind "delete"
---@field public uri string
---@field public options? gindent.kit.LSP.DeleteFileOptions

---@class gindent.kit.LSP.ChangeAnnotation
---@field public label string
---@field public needsConfirmation? boolean
---@field public description? string

---@class gindent.kit.LSP.FileOperationFilter
---@field public scheme? string
---@field public pattern gindent.kit.LSP.FileOperationPattern

---@class gindent.kit.LSP.FileRename
---@field public oldUri string
---@field public newUri string

---@class gindent.kit.LSP.FileDelete
---@field public uri string

---@class gindent.kit.LSP.MonikerOptions

---@class gindent.kit.LSP.TypeHierarchyOptions

---@class gindent.kit.LSP.InlineValueContext
---@field public frameId integer
---@field public stoppedLocation gindent.kit.LSP.Range

---@class gindent.kit.LSP.InlineValueText
---@field public range gindent.kit.LSP.Range
---@field public text string

---@class gindent.kit.LSP.InlineValueVariableLookup
---@field public range gindent.kit.LSP.Range
---@field public variableName? string
---@field public caseSensitiveLookup boolean

---@class gindent.kit.LSP.InlineValueEvaluatableExpression
---@field public range gindent.kit.LSP.Range
---@field public expression? string

---@class gindent.kit.LSP.InlineValueOptions

---@class gindent.kit.LSP.InlayHintLabelPart
---@field public value string
---@field public tooltip? (string | gindent.kit.LSP.MarkupContent)
---@field public location? gindent.kit.LSP.Location
---@field public command? gindent.kit.LSP.Command

---@class gindent.kit.LSP.MarkupContent
---@field public kind gindent.kit.LSP.MarkupKind
---@field public value string

---@class gindent.kit.LSP.InlayHintOptions
---@field public resolveProvider? boolean

---@class gindent.kit.LSP.RelatedFullDocumentDiagnosticReport : gindent.kit.LSP.FullDocumentDiagnosticReport
---@field public relatedDocuments? table<string, (gindent.kit.LSP.FullDocumentDiagnosticReport | gindent.kit.LSP.UnchangedDocumentDiagnosticReport)>

---@class gindent.kit.LSP.RelatedUnchangedDocumentDiagnosticReport : gindent.kit.LSP.UnchangedDocumentDiagnosticReport
---@field public relatedDocuments? table<string, (gindent.kit.LSP.FullDocumentDiagnosticReport | gindent.kit.LSP.UnchangedDocumentDiagnosticReport)>

---@class gindent.kit.LSP.FullDocumentDiagnosticReport
---@field public kind "full"
---@field public resultId? string
---@field public items gindent.kit.LSP.Diagnostic[]

---@class gindent.kit.LSP.UnchangedDocumentDiagnosticReport
---@field public kind "unchanged"
---@field public resultId string

---@class gindent.kit.LSP.DiagnosticOptions
---@field public identifier? string
---@field public interFileDependencies boolean
---@field public workspaceDiagnostics boolean

---@class gindent.kit.LSP.PreviousResultId
---@field public uri string
---@field public value string

---@class gindent.kit.LSP.NotebookDocument
---@field public uri string
---@field public notebookType string
---@field public version integer
---@field public metadata? gindent.kit.LSP.LSPObject
---@field public cells gindent.kit.LSP.NotebookCell[]

---@class gindent.kit.LSP.TextDocumentItem
---@field public uri string
---@field public languageId string
---@field public version integer
---@field public text string

---@class gindent.kit.LSP.VersionedNotebookDocumentIdentifier
---@field public version integer
---@field public uri string

---@class gindent.kit.LSP.NotebookDocumentChangeEvent
---@field public metadata? gindent.kit.LSP.LSPObject
---@field public cells? { structure?: { array: gindent.kit.LSP.NotebookCellArrayChange, didOpen?: gindent.kit.LSP.TextDocumentItem[], didClose?: gindent.kit.LSP.TextDocumentIdentifier[] }, data?: gindent.kit.LSP.NotebookCell[], textContent?: { document: gindent.kit.LSP.VersionedTextDocumentIdentifier, changes: gindent.kit.LSP.TextDocumentContentChangeEvent[] }[] }

---@class gindent.kit.LSP.NotebookDocumentIdentifier
---@field public uri string

---@class gindent.kit.LSP.Registration
---@field public id string
---@field public method string
---@field public registerOptions? gindent.kit.LSP.LSPAny

---@class gindent.kit.LSP.Unregistration
---@field public id string
---@field public method string

---@class gindent.kit.LSP._InitializeParams
---@field public processId (integer | nil)
---@field public clientInfo? { name: string, version?: string }
---@field public locale? string
---@field public rootPath? (string | nil)
---@field public rootUri (string | nil)
---@field public capabilities gindent.kit.LSP.ClientCapabilities
---@field public initializationOptions? gindent.kit.LSP.LSPAny
---@field public trace? ("off" | "messages" | "compact" | "verbose")

---@class gindent.kit.LSP.WorkspaceFoldersInitializeParams
---@field public workspaceFolders? (gindent.kit.LSP.WorkspaceFolder[] | nil)

---@class gindent.kit.LSP.ServerCapabilities
---@field public positionEncoding? gindent.kit.LSP.PositionEncodingKind
---@field public textDocumentSync? (gindent.kit.LSP.TextDocumentSyncOptions | gindent.kit.LSP.TextDocumentSyncKind)
---@field public notebookDocumentSync? (gindent.kit.LSP.NotebookDocumentSyncOptions | gindent.kit.LSP.NotebookDocumentSyncRegistrationOptions)
---@field public completionProvider? gindent.kit.LSP.CompletionOptions
---@field public hoverProvider? (boolean | gindent.kit.LSP.HoverOptions)
---@field public signatureHelpProvider? gindent.kit.LSP.SignatureHelpOptions
---@field public declarationProvider? (boolean | gindent.kit.LSP.DeclarationOptions | gindent.kit.LSP.DeclarationRegistrationOptions)
---@field public definitionProvider? (boolean | gindent.kit.LSP.DefinitionOptions)
---@field public typeDefinitionProvider? (boolean | gindent.kit.LSP.TypeDefinitionOptions | gindent.kit.LSP.TypeDefinitionRegistrationOptions)
---@field public implementationProvider? (boolean | gindent.kit.LSP.ImplementationOptions | gindent.kit.LSP.ImplementationRegistrationOptions)
---@field public referencesProvider? (boolean | gindent.kit.LSP.ReferenceOptions)
---@field public documentHighlightProvider? (boolean | gindent.kit.LSP.DocumentHighlightOptions)
---@field public documentSymbolProvider? (boolean | gindent.kit.LSP.DocumentSymbolOptions)
---@field public codeActionProvider? (boolean | gindent.kit.LSP.CodeActionOptions)
---@field public codeLensProvider? gindent.kit.LSP.CodeLensOptions
---@field public documentLinkProvider? gindent.kit.LSP.DocumentLinkOptions
---@field public colorProvider? (boolean | gindent.kit.LSP.DocumentColorOptions | gindent.kit.LSP.DocumentColorRegistrationOptions)
---@field public workspaceSymbolProvider? (boolean | gindent.kit.LSP.WorkspaceSymbolOptions)
---@field public documentFormattingProvider? (boolean | gindent.kit.LSP.DocumentFormattingOptions)
---@field public documentRangeFormattingProvider? (boolean | gindent.kit.LSP.DocumentRangeFormattingOptions)
---@field public documentOnTypeFormattingProvider? gindent.kit.LSP.DocumentOnTypeFormattingOptions
---@field public renameProvider? (boolean | gindent.kit.LSP.RenameOptions)
---@field public foldingRangeProvider? (boolean | gindent.kit.LSP.FoldingRangeOptions | gindent.kit.LSP.FoldingRangeRegistrationOptions)
---@field public selectionRangeProvider? (boolean | gindent.kit.LSP.SelectionRangeOptions | gindent.kit.LSP.SelectionRangeRegistrationOptions)
---@field public executeCommandProvider? gindent.kit.LSP.ExecuteCommandOptions
---@field public callHierarchyProvider? (boolean | gindent.kit.LSP.CallHierarchyOptions | gindent.kit.LSP.CallHierarchyRegistrationOptions)
---@field public linkedEditingRangeProvider? (boolean | gindent.kit.LSP.LinkedEditingRangeOptions | gindent.kit.LSP.LinkedEditingRangeRegistrationOptions)
---@field public semanticTokensProvider? (gindent.kit.LSP.SemanticTokensOptions | gindent.kit.LSP.SemanticTokensRegistrationOptions)
---@field public monikerProvider? (boolean | gindent.kit.LSP.MonikerOptions | gindent.kit.LSP.MonikerRegistrationOptions)
---@field public typeHierarchyProvider? (boolean | gindent.kit.LSP.TypeHierarchyOptions | gindent.kit.LSP.TypeHierarchyRegistrationOptions)
---@field public inlineValueProvider? (boolean | gindent.kit.LSP.InlineValueOptions | gindent.kit.LSP.InlineValueRegistrationOptions)
---@field public inlayHintProvider? (boolean | gindent.kit.LSP.InlayHintOptions | gindent.kit.LSP.InlayHintRegistrationOptions)
---@field public diagnosticProvider? (gindent.kit.LSP.DiagnosticOptions | gindent.kit.LSP.DiagnosticRegistrationOptions)
---@field public workspace? { workspaceFolders?: gindent.kit.LSP.WorkspaceFoldersServerCapabilities, fileOperations?: gindent.kit.LSP.FileOperationOptions }
---@field public experimental? gindent.kit.LSP.LSPAny

---@class gindent.kit.LSP.VersionedTextDocumentIdentifier : gindent.kit.LSP.TextDocumentIdentifier
---@field public version integer

---@class gindent.kit.LSP.SaveOptions
---@field public includeText? boolean

---@class gindent.kit.LSP.FileEvent
---@field public uri string
---@field public type gindent.kit.LSP.FileChangeType

---@class gindent.kit.LSP.FileSystemWatcher
---@field public globPattern gindent.kit.LSP.GlobPattern
---@field public kind? gindent.kit.LSP.WatchKind

---@class gindent.kit.LSP.Diagnostic
---@field public range gindent.kit.LSP.Range
---@field public severity? gindent.kit.LSP.DiagnosticSeverity
---@field public code? (integer | string)
---@field public codeDescription? gindent.kit.LSP.CodeDescription
---@field public source? string
---@field public message string
---@field public tags? gindent.kit.LSP.DiagnosticTag[]
---@field public relatedInformation? gindent.kit.LSP.DiagnosticRelatedInformation[]
---@field public data? gindent.kit.LSP.LSPAny

---@class gindent.kit.LSP.CompletionContext
---@field public triggerKind gindent.kit.LSP.CompletionTriggerKind
---@field public triggerCharacter? string

---@class gindent.kit.LSP.CompletionItemLabelDetails
---@field public detail? string
---@field public description? string

---@class gindent.kit.LSP.InsertReplaceEdit
---@field public newText string
---@field public insert gindent.kit.LSP.Range
---@field public replace gindent.kit.LSP.Range

---@class gindent.kit.LSP.CompletionOptions
---@field public triggerCharacters? string[]
---@field public allCommitCharacters? string[]
---@field public resolveProvider? boolean
---@field public completionItem? { labelDetailsSupport?: boolean }

---@class gindent.kit.LSP.HoverOptions

---@class gindent.kit.LSP.SignatureHelpContext
---@field public triggerKind gindent.kit.LSP.SignatureHelpTriggerKind
---@field public triggerCharacter? string
---@field public isRetrigger boolean
---@field public activeSignatureHelp? gindent.kit.LSP.SignatureHelp

---@class gindent.kit.LSP.SignatureInformation
---@field public label string
---@field public documentation? (string | gindent.kit.LSP.MarkupContent)
---@field public parameters? gindent.kit.LSP.ParameterInformation[]
---@field public activeParameter? integer

---@class gindent.kit.LSP.SignatureHelpOptions
---@field public triggerCharacters? string[]
---@field public retriggerCharacters? string[]

---@class gindent.kit.LSP.DefinitionOptions

---@class gindent.kit.LSP.ReferenceContext
---@field public includeDeclaration boolean

---@class gindent.kit.LSP.ReferenceOptions

---@class gindent.kit.LSP.DocumentHighlightOptions

---@class gindent.kit.LSP.BaseSymbolInformation
---@field public name string
---@field public kind gindent.kit.LSP.SymbolKind
---@field public tags? gindent.kit.LSP.SymbolTag[]
---@field public containerName? string

---@class gindent.kit.LSP.DocumentSymbolOptions
---@field public label? string

---@class gindent.kit.LSP.CodeActionContext
---@field public diagnostics gindent.kit.LSP.Diagnostic[]
---@field public only? gindent.kit.LSP.CodeActionKind[]
---@field public triggerKind? gindent.kit.LSP.CodeActionTriggerKind

---@class gindent.kit.LSP.CodeActionOptions
---@field public codeActionKinds? gindent.kit.LSP.CodeActionKind[]
---@field public resolveProvider? boolean

---@class gindent.kit.LSP.WorkspaceSymbolOptions
---@field public resolveProvider? boolean

---@class gindent.kit.LSP.CodeLensOptions
---@field public resolveProvider? boolean

---@class gindent.kit.LSP.DocumentLinkOptions
---@field public resolveProvider? boolean

---@class gindent.kit.LSP.FormattingOptions
---@field public tabSize integer
---@field public insertSpaces boolean
---@field public trimTrailingWhitespace? boolean
---@field public insertFinalNewline? boolean
---@field public trimFinalNewlines? boolean

---@class gindent.kit.LSP.DocumentFormattingOptions

---@class gindent.kit.LSP.DocumentRangeFormattingOptions

---@class gindent.kit.LSP.DocumentOnTypeFormattingOptions
---@field public firstTriggerCharacter string
---@field public moreTriggerCharacter? string[]

---@class gindent.kit.LSP.RenameOptions
---@field public prepareProvider? boolean

---@class gindent.kit.LSP.ExecuteCommandOptions
---@field public commands string[]

---@class gindent.kit.LSP.SemanticTokensLegend
---@field public tokenTypes string[]
---@field public tokenModifiers string[]

---@class gindent.kit.LSP.OptionalVersionedTextDocumentIdentifier : gindent.kit.LSP.TextDocumentIdentifier
---@field public version (integer | nil)

---@class gindent.kit.LSP.AnnotatedTextEdit : gindent.kit.LSP.TextEdit
---@field public annotationId gindent.kit.LSP.ChangeAnnotationIdentifier

---@class gindent.kit.LSP.ResourceOperation
---@field public kind string
---@field public annotationId? gindent.kit.LSP.ChangeAnnotationIdentifier

---@class gindent.kit.LSP.CreateFileOptions
---@field public overwrite? boolean
---@field public ignoreIfExists? boolean

---@class gindent.kit.LSP.RenameFileOptions
---@field public overwrite? boolean
---@field public ignoreIfExists? boolean

---@class gindent.kit.LSP.DeleteFileOptions
---@field public recursive? boolean
---@field public ignoreIfNotExists? boolean

---@class gindent.kit.LSP.FileOperationPattern
---@field public glob string
---@field public matches? gindent.kit.LSP.FileOperationPatternKind
---@field public options? gindent.kit.LSP.FileOperationPatternOptions

---@class gindent.kit.LSP.WorkspaceFullDocumentDiagnosticReport : gindent.kit.LSP.FullDocumentDiagnosticReport
---@field public uri string
---@field public version (integer | nil)

---@class gindent.kit.LSP.WorkspaceUnchangedDocumentDiagnosticReport : gindent.kit.LSP.UnchangedDocumentDiagnosticReport
---@field public uri string
---@field public version (integer | nil)

---@class gindent.kit.LSP.LSPObject

---@class gindent.kit.LSP.NotebookCell
---@field public kind gindent.kit.LSP.NotebookCellKind
---@field public document string
---@field public metadata? gindent.kit.LSP.LSPObject
---@field public executionSummary? gindent.kit.LSP.ExecutionSummary

---@class gindent.kit.LSP.NotebookCellArrayChange
---@field public start integer
---@field public deleteCount integer
---@field public cells? gindent.kit.LSP.NotebookCell[]

---@class gindent.kit.LSP.ClientCapabilities
---@field public workspace? gindent.kit.LSP.WorkspaceClientCapabilities
---@field public textDocument? gindent.kit.LSP.TextDocumentClientCapabilities
---@field public notebookDocument? gindent.kit.LSP.NotebookDocumentClientCapabilities
---@field public window? gindent.kit.LSP.WindowClientCapabilities
---@field public general? gindent.kit.LSP.GeneralClientCapabilities
---@field public experimental? gindent.kit.LSP.LSPAny

---@class gindent.kit.LSP.TextDocumentSyncOptions
---@field public openClose? boolean
---@field public change? gindent.kit.LSP.TextDocumentSyncKind
---@field public willSave? boolean
---@field public willSaveWaitUntil? boolean
---@field public save? (boolean | gindent.kit.LSP.SaveOptions)

---@class gindent.kit.LSP.NotebookDocumentSyncOptions
---@field public notebookSelector ({ notebook: (string | gindent.kit.LSP.NotebookDocumentFilter), cells?: { language: string }[] } | { notebook?: (string | gindent.kit.LSP.NotebookDocumentFilter), cells: { language: string }[] })[]
---@field public save? boolean

---@class gindent.kit.LSP.NotebookDocumentSyncRegistrationOptions : gindent.kit.LSP.NotebookDocumentSyncOptions

---@class gindent.kit.LSP.WorkspaceFoldersServerCapabilities
---@field public supported? boolean
---@field public changeNotifications? (string | boolean)

---@class gindent.kit.LSP.FileOperationOptions
---@field public didCreate? gindent.kit.LSP.FileOperationRegistrationOptions
---@field public willCreate? gindent.kit.LSP.FileOperationRegistrationOptions
---@field public didRename? gindent.kit.LSP.FileOperationRegistrationOptions
---@field public willRename? gindent.kit.LSP.FileOperationRegistrationOptions
---@field public didDelete? gindent.kit.LSP.FileOperationRegistrationOptions
---@field public willDelete? gindent.kit.LSP.FileOperationRegistrationOptions

---@class gindent.kit.LSP.CodeDescription
---@field public href string

---@class gindent.kit.LSP.DiagnosticRelatedInformation
---@field public location gindent.kit.LSP.Location
---@field public message string

---@class gindent.kit.LSP.ParameterInformation
---@field public label (string | (integer | integer)[])
---@field public documentation? (string | gindent.kit.LSP.MarkupContent)

---@class gindent.kit.LSP.NotebookCellTextDocumentFilter
---@field public notebook (string | gindent.kit.LSP.NotebookDocumentFilter)
---@field public language? string

---@class gindent.kit.LSP.FileOperationPatternOptions
---@field public ignoreCase? boolean

---@class gindent.kit.LSP.ExecutionSummary
---@field public executionOrder integer
---@field public success? boolean

---@class gindent.kit.LSP.WorkspaceClientCapabilities
---@field public applyEdit? boolean
---@field public workspaceEdit? gindent.kit.LSP.WorkspaceEditClientCapabilities
---@field public didChangeConfiguration? gindent.kit.LSP.DidChangeConfigurationClientCapabilities
---@field public didChangeWatchedFiles? gindent.kit.LSP.DidChangeWatchedFilesClientCapabilities
---@field public symbol? gindent.kit.LSP.WorkspaceSymbolClientCapabilities
---@field public executeCommand? gindent.kit.LSP.ExecuteCommandClientCapabilities
---@field public workspaceFolders? boolean
---@field public configuration? boolean
---@field public semanticTokens? gindent.kit.LSP.SemanticTokensWorkspaceClientCapabilities
---@field public codeLens? gindent.kit.LSP.CodeLensWorkspaceClientCapabilities
---@field public fileOperations? gindent.kit.LSP.FileOperationClientCapabilities
---@field public inlineValue? gindent.kit.LSP.InlineValueWorkspaceClientCapabilities
---@field public inlayHint? gindent.kit.LSP.InlayHintWorkspaceClientCapabilities
---@field public diagnostics? gindent.kit.LSP.DiagnosticWorkspaceClientCapabilities

---@class gindent.kit.LSP.TextDocumentClientCapabilities
---@field public synchronization? gindent.kit.LSP.TextDocumentSyncClientCapabilities
---@field public completion? gindent.kit.LSP.CompletionClientCapabilities
---@field public hover? gindent.kit.LSP.HoverClientCapabilities
---@field public signatureHelp? gindent.kit.LSP.SignatureHelpClientCapabilities
---@field public declaration? gindent.kit.LSP.DeclarationClientCapabilities
---@field public definition? gindent.kit.LSP.DefinitionClientCapabilities
---@field public typeDefinition? gindent.kit.LSP.TypeDefinitionClientCapabilities
---@field public implementation? gindent.kit.LSP.ImplementationClientCapabilities
---@field public references? gindent.kit.LSP.ReferenceClientCapabilities
---@field public documentHighlight? gindent.kit.LSP.DocumentHighlightClientCapabilities
---@field public documentSymbol? gindent.kit.LSP.DocumentSymbolClientCapabilities
---@field public codeAction? gindent.kit.LSP.CodeActionClientCapabilities
---@field public codeLens? gindent.kit.LSP.CodeLensClientCapabilities
---@field public documentLink? gindent.kit.LSP.DocumentLinkClientCapabilities
---@field public colorProvider? gindent.kit.LSP.DocumentColorClientCapabilities
---@field public formatting? gindent.kit.LSP.DocumentFormattingClientCapabilities
---@field public rangeFormatting? gindent.kit.LSP.DocumentRangeFormattingClientCapabilities
---@field public onTypeFormatting? gindent.kit.LSP.DocumentOnTypeFormattingClientCapabilities
---@field public rename? gindent.kit.LSP.RenameClientCapabilities
---@field public foldingRange? gindent.kit.LSP.FoldingRangeClientCapabilities
---@field public selectionRange? gindent.kit.LSP.SelectionRangeClientCapabilities
---@field public publishDiagnostics? gindent.kit.LSP.PublishDiagnosticsClientCapabilities
---@field public callHierarchy? gindent.kit.LSP.CallHierarchyClientCapabilities
---@field public semanticTokens? gindent.kit.LSP.SemanticTokensClientCapabilities
---@field public linkedEditingRange? gindent.kit.LSP.LinkedEditingRangeClientCapabilities
---@field public moniker? gindent.kit.LSP.MonikerClientCapabilities
---@field public typeHierarchy? gindent.kit.LSP.TypeHierarchyClientCapabilities
---@field public inlineValue? gindent.kit.LSP.InlineValueClientCapabilities
---@field public inlayHint? gindent.kit.LSP.InlayHintClientCapabilities
---@field public diagnostic? gindent.kit.LSP.DiagnosticClientCapabilities

---@class gindent.kit.LSP.NotebookDocumentClientCapabilities
---@field public synchronization gindent.kit.LSP.NotebookDocumentSyncClientCapabilities

---@class gindent.kit.LSP.WindowClientCapabilities
---@field public workDoneProgress? boolean
---@field public showMessage? gindent.kit.LSP.ShowMessageRequestClientCapabilities
---@field public showDocument? gindent.kit.LSP.ShowDocumentClientCapabilities

---@class gindent.kit.LSP.GeneralClientCapabilities
---@field public staleRequestSupport? { cancel: boolean, retryOnContentModified: string[] }
---@field public regularExpressions? gindent.kit.LSP.RegularExpressionsClientCapabilities
---@field public markdown? gindent.kit.LSP.MarkdownClientCapabilities
---@field public positionEncodings? gindent.kit.LSP.PositionEncodingKind[]

---@class gindent.kit.LSP.RelativePattern
---@field public baseUri (gindent.kit.LSP.WorkspaceFolder | string)
---@field public pattern gindent.kit.LSP.Pattern

---@class gindent.kit.LSP.WorkspaceEditClientCapabilities
---@field public documentChanges? boolean
---@field public resourceOperations? gindent.kit.LSP.ResourceOperationKind[]
---@field public failureHandling? gindent.kit.LSP.FailureHandlingKind
---@field public normalizesLineEndings? boolean
---@field public changeAnnotationSupport? { groupsOnLabel?: boolean }

---@class gindent.kit.LSP.DidChangeConfigurationClientCapabilities
---@field public dynamicRegistration? boolean

---@class gindent.kit.LSP.DidChangeWatchedFilesClientCapabilities
---@field public dynamicRegistration? boolean
---@field public relativePatternSupport? boolean

---@class gindent.kit.LSP.WorkspaceSymbolClientCapabilities
---@field public dynamicRegistration? boolean
---@field public symbolKind? { valueSet?: gindent.kit.LSP.SymbolKind[] }
---@field public tagSupport? { valueSet: gindent.kit.LSP.SymbolTag[] }
---@field public resolveSupport? { properties: string[] }

---@class gindent.kit.LSP.ExecuteCommandClientCapabilities
---@field public dynamicRegistration? boolean

---@class gindent.kit.LSP.SemanticTokensWorkspaceClientCapabilities
---@field public refreshSupport? boolean

---@class gindent.kit.LSP.CodeLensWorkspaceClientCapabilities
---@field public refreshSupport? boolean

---@class gindent.kit.LSP.FileOperationClientCapabilities
---@field public dynamicRegistration? boolean
---@field public didCreate? boolean
---@field public willCreate? boolean
---@field public didRename? boolean
---@field public willRename? boolean
---@field public didDelete? boolean
---@field public willDelete? boolean

---@class gindent.kit.LSP.InlineValueWorkspaceClientCapabilities
---@field public refreshSupport? boolean

---@class gindent.kit.LSP.InlayHintWorkspaceClientCapabilities
---@field public refreshSupport? boolean

---@class gindent.kit.LSP.DiagnosticWorkspaceClientCapabilities
---@field public refreshSupport? boolean

---@class gindent.kit.LSP.TextDocumentSyncClientCapabilities
---@field public dynamicRegistration? boolean
---@field public willSave? boolean
---@field public willSaveWaitUntil? boolean
---@field public didSave? boolean

---@class gindent.kit.LSP.CompletionClientCapabilities
---@field public dynamicRegistration? boolean
---@field public completionItem? { snippetSupport?: boolean, commitCharactersSupport?: boolean, documentationFormat?: gindent.kit.LSP.MarkupKind[], deprecatedSupport?: boolean, preselectSupport?: boolean, tagSupport?: { valueSet: gindent.kit.LSP.CompletionItemTag[] }, insertReplaceSupport?: boolean, resolveSupport?: { properties: string[] }, insertTextModeSupport?: { valueSet: gindent.kit.LSP.InsertTextMode[] }, labelDetailsSupport?: boolean }
---@field public completionItemKind? { valueSet?: gindent.kit.LSP.CompletionItemKind[] }
---@field public insertTextMode? gindent.kit.LSP.InsertTextMode
---@field public contextSupport? boolean
---@field public completionList? { itemDefaults?: string[] }

---@class gindent.kit.LSP.HoverClientCapabilities
---@field public dynamicRegistration? boolean
---@field public contentFormat? gindent.kit.LSP.MarkupKind[]

---@class gindent.kit.LSP.SignatureHelpClientCapabilities
---@field public dynamicRegistration? boolean
---@field public signatureInformation? { documentationFormat?: gindent.kit.LSP.MarkupKind[], parameterInformation?: { labelOffsetSupport?: boolean }, activeParameterSupport?: boolean }
---@field public contextSupport? boolean

---@class gindent.kit.LSP.DeclarationClientCapabilities
---@field public dynamicRegistration? boolean
---@field public linkSupport? boolean

---@class gindent.kit.LSP.DefinitionClientCapabilities
---@field public dynamicRegistration? boolean
---@field public linkSupport? boolean

---@class gindent.kit.LSP.TypeDefinitionClientCapabilities
---@field public dynamicRegistration? boolean
---@field public linkSupport? boolean

---@class gindent.kit.LSP.ImplementationClientCapabilities
---@field public dynamicRegistration? boolean
---@field public linkSupport? boolean

---@class gindent.kit.LSP.ReferenceClientCapabilities
---@field public dynamicRegistration? boolean

---@class gindent.kit.LSP.DocumentHighlightClientCapabilities
---@field public dynamicRegistration? boolean

---@class gindent.kit.LSP.DocumentSymbolClientCapabilities
---@field public dynamicRegistration? boolean
---@field public symbolKind? { valueSet?: gindent.kit.LSP.SymbolKind[] }
---@field public hierarchicalDocumentSymbolSupport? boolean
---@field public tagSupport? { valueSet: gindent.kit.LSP.SymbolTag[] }
---@field public labelSupport? boolean

---@class gindent.kit.LSP.CodeActionClientCapabilities
---@field public dynamicRegistration? boolean
---@field public codeActionLiteralSupport? { codeActionKind: { valueSet: gindent.kit.LSP.CodeActionKind[] } }
---@field public isPreferredSupport? boolean
---@field public disabledSupport? boolean
---@field public dataSupport? boolean
---@field public resolveSupport? { properties: string[] }
---@field public honorsChangeAnnotations? boolean

---@class gindent.kit.LSP.CodeLensClientCapabilities
---@field public dynamicRegistration? boolean

---@class gindent.kit.LSP.DocumentLinkClientCapabilities
---@field public dynamicRegistration? boolean
---@field public tooltipSupport? boolean

---@class gindent.kit.LSP.DocumentColorClientCapabilities
---@field public dynamicRegistration? boolean

---@class gindent.kit.LSP.DocumentFormattingClientCapabilities
---@field public dynamicRegistration? boolean

---@class gindent.kit.LSP.DocumentRangeFormattingClientCapabilities
---@field public dynamicRegistration? boolean

---@class gindent.kit.LSP.DocumentOnTypeFormattingClientCapabilities
---@field public dynamicRegistration? boolean

---@class gindent.kit.LSP.RenameClientCapabilities
---@field public dynamicRegistration? boolean
---@field public prepareSupport? boolean
---@field public prepareSupportDefaultBehavior? gindent.kit.LSP.PrepareSupportDefaultBehavior
---@field public honorsChangeAnnotations? boolean

---@class gindent.kit.LSP.FoldingRangeClientCapabilities
---@field public dynamicRegistration? boolean
---@field public rangeLimit? integer
---@field public lineFoldingOnly? boolean
---@field public foldingRangeKind? { valueSet?: gindent.kit.LSP.FoldingRangeKind[] }
---@field public foldingRange? { collapsedText?: boolean }

---@class gindent.kit.LSP.SelectionRangeClientCapabilities
---@field public dynamicRegistration? boolean

---@class gindent.kit.LSP.PublishDiagnosticsClientCapabilities
---@field public relatedInformation? boolean
---@field public tagSupport? { valueSet: gindent.kit.LSP.DiagnosticTag[] }
---@field public versionSupport? boolean
---@field public codeDescriptionSupport? boolean
---@field public dataSupport? boolean

---@class gindent.kit.LSP.CallHierarchyClientCapabilities
---@field public dynamicRegistration? boolean

---@class gindent.kit.LSP.SemanticTokensClientCapabilities
---@field public dynamicRegistration? boolean
---@field public requests { range?: (boolean | {  }), full?: (boolean | { delta?: boolean }) }
---@field public tokenTypes string[]
---@field public tokenModifiers string[]
---@field public formats gindent.kit.LSP.TokenFormat[]
---@field public overlappingTokenSupport? boolean
---@field public multilineTokenSupport? boolean
---@field public serverCancelSupport? boolean
---@field public augmentsSyntaxTokens? boolean

---@class gindent.kit.LSP.LinkedEditingRangeClientCapabilities
---@field public dynamicRegistration? boolean

---@class gindent.kit.LSP.MonikerClientCapabilities
---@field public dynamicRegistration? boolean

---@class gindent.kit.LSP.TypeHierarchyClientCapabilities
---@field public dynamicRegistration? boolean

---@class gindent.kit.LSP.InlineValueClientCapabilities
---@field public dynamicRegistration? boolean

---@class gindent.kit.LSP.InlayHintClientCapabilities
---@field public dynamicRegistration? boolean
---@field public resolveSupport? { properties: string[] }

---@class gindent.kit.LSP.DiagnosticClientCapabilities
---@field public dynamicRegistration? boolean
---@field public relatedDocumentSupport? boolean

---@class gindent.kit.LSP.NotebookDocumentSyncClientCapabilities
---@field public dynamicRegistration? boolean
---@field public executionSummarySupport? boolean

---@class gindent.kit.LSP.ShowMessageRequestClientCapabilities
---@field public messageActionItem? { additionalPropertiesSupport?: boolean }

---@class gindent.kit.LSP.ShowDocumentClientCapabilities
---@field public support boolean

---@class gindent.kit.LSP.RegularExpressionsClientCapabilities
---@field public engine string
---@field public version? string

---@class gindent.kit.LSP.MarkdownClientCapabilities
---@field public parser string
---@field public version? string
---@field public allowedTags? string[]

---@alias gindent.kit.LSP.Definition (gindent.kit.LSP.Location | gindent.kit.LSP.Location[])

---@alias gindent.kit.LSP.DefinitionLink gindent.kit.LSP.LocationLink

---@alias gindent.kit.LSP.LSPArray gindent.kit.LSP.LSPAny[]

---@alias gindent.kit.LSP.LSPAny (gindent.kit.LSP.LSPObject | gindent.kit.LSP.LSPArray | string | integer | integer | integer | boolean | nil)

---@alias gindent.kit.LSP.Declaration (gindent.kit.LSP.Location | gindent.kit.LSP.Location[])

---@alias gindent.kit.LSP.DeclarationLink gindent.kit.LSP.LocationLink

---@alias gindent.kit.LSP.InlineValue (gindent.kit.LSP.InlineValueText | gindent.kit.LSP.InlineValueVariableLookup | gindent.kit.LSP.InlineValueEvaluatableExpression)

---@alias gindent.kit.LSP.DocumentDiagnosticReport (gindent.kit.LSP.RelatedFullDocumentDiagnosticReport | gindent.kit.LSP.RelatedUnchangedDocumentDiagnosticReport)

---@alias gindent.kit.LSP.PrepareRenameResult (gindent.kit.LSP.Range | { range: gindent.kit.LSP.Range, placeholder: string } | { defaultBehavior: boolean })

---@alias gindent.kit.LSP.ProgressToken (integer | string)

---@alias gindent.kit.LSP.DocumentSelector gindent.kit.LSP.DocumentFilter[]

---@alias gindent.kit.LSP.ChangeAnnotationIdentifier string

---@alias gindent.kit.LSP.WorkspaceDocumentDiagnosticReport (gindent.kit.LSP.WorkspaceFullDocumentDiagnosticReport | gindent.kit.LSP.WorkspaceUnchangedDocumentDiagnosticReport)

---@alias gindent.kit.LSP.TextDocumentContentChangeEvent ({ range: gindent.kit.LSP.Range, rangeLength?: integer, text: string } | { text: string })

---@alias gindent.kit.LSP.MarkedString (string | { language: string, value: string })

---@alias gindent.kit.LSP.DocumentFilter (gindent.kit.LSP.TextDocumentFilter | gindent.kit.LSP.NotebookCellTextDocumentFilter)

---@alias gindent.kit.LSP.GlobPattern (gindent.kit.LSP.Pattern | gindent.kit.LSP.RelativePattern)

---@alias gindent.kit.LSP.TextDocumentFilter ({ language: string, scheme?: string, pattern?: string } | { language?: string, scheme: string, pattern?: string } | { language?: string, scheme?: string, pattern: string })

---@alias gindent.kit.LSP.NotebookDocumentFilter ({ notebookType: string, scheme?: string, pattern?: string } | { notebookType?: string, scheme: string, pattern?: string } | { notebookType?: string, scheme?: string, pattern: string })

---@alias gindent.kit.LSP.Pattern string

return LSP
