%% Automatically generated, do not edit
%% Generated by gpb_compile version 3.9-8-gf1d090a on {{2014,4,12},{16,1,9}}

-ifndef(gpb_descriptor).
-define(gpb_descriptor, true).

-define(gpb_descriptor_gpb_version, "3.9-8-gf1d090a").

-record('UninterpretedOption.NamePart',
        {name_part,                     % = 1, string
         is_extension                   % = 2, bool
        }).

-record('UninterpretedOption',
        {name = [],                     % = 2, [{msg,'UninterpretedOption.NamePart'}]
         identifier_value,              % = 3, string (optional)
         positive_int_value,            % = 4, uint64 (optional)
         negative_int_value,            % = 5, int64 (optional)
         double_value,                  % = 6, double (optional)
         string_value,                  % = 7, bytes (optional)
         aggregate_value                % = 8, string (optional)
        }).

-record('DescriptorProto.ExtensionRange',
        {start,                         % = 1, int32 (optional)
         'end'                          % = 2, int32 (optional)
        }).

-record('FileOptions',
        {java_package,                  % = 1, string (optional)
         java_outer_classname,          % = 8, string (optional)
         java_multiple_files = false,   % = 10, bool (optional)
         java_generate_equals_and_hash = false, % = 20, bool (optional)
         optimize_for = 'SPEED',        % = 9, {enum,'FileOptions.OptimizeMode'} (optional)
         cc_generic_services = false,   % = 16, bool (optional)
         java_generic_services = false, % = 17, bool (optional)
         py_generic_services = false,   % = 18, bool (optional)
         uninterpreted_option = []      % = 999, [{msg,'UninterpretedOption'}]
        }).

-record('MethodOptions',
        {uninterpreted_option = []      % = 999, [{msg,'UninterpretedOption'}]
        }).

-record('EnumOptions',
        {uninterpreted_option = []      % = 999, [{msg,'UninterpretedOption'}]
        }).

-record('EnumValueOptions',
        {uninterpreted_option = []      % = 999, [{msg,'UninterpretedOption'}]
        }).

-record('ServiceOptions',
        {uninterpreted_option = []      % = 999, [{msg,'UninterpretedOption'}]
        }).

-record('MethodDescriptorProto',
        {name,                          % = 1, string (optional)
         input_type,                    % = 2, string (optional)
         output_type,                   % = 3, string (optional)
         options                        % = 4, {msg,'MethodOptions'} (optional)
        }).

-record('ServiceDescriptorProto',
        {name,                          % = 1, string (optional)
         method = [],                   % = 2, [{msg,'MethodDescriptorProto'}]
         options                        % = 3, {msg,'ServiceOptions'} (optional)
        }).

-record('MessageOptions',
        {message_set_wire_format = false, % = 1, bool (optional)
         no_standard_descriptor_accessor = false, % = 2, bool (optional)
         uninterpreted_option = []      % = 999, [{msg,'UninterpretedOption'}]
        }).

-record('EnumValueDescriptorProto',
        {name,                          % = 1, string (optional)
         number,                        % = 2, int32 (optional)
         options                        % = 3, {msg,'EnumValueOptions'} (optional)
        }).

-record('EnumDescriptorProto',
        {name,                          % = 1, string (optional)
         value = [],                    % = 2, [{msg,'EnumValueDescriptorProto'}]
         options                        % = 3, {msg,'EnumOptions'} (optional)
        }).

-record('FieldOptions',
        {ctype = 'STRING',              % = 1, {enum,'FieldOptions.CType'} (optional)
         packed,                        % = 2, bool (optional)
         deprecated = false,            % = 3, bool (optional)
         experimental_map_key,          % = 9, string (optional)
         uninterpreted_option = []      % = 999, [{msg,'UninterpretedOption'}]
        }).

-record('FieldDescriptorProto',
        {name,                          % = 1, string (optional)
         number,                        % = 3, int32 (optional)
         label,                         % = 4, {enum,'FieldDescriptorProto.Label'} (optional)
         type,                          % = 5, {enum,'FieldDescriptorProto.Type'} (optional)
         type_name,                     % = 6, string (optional)
         extendee,                      % = 2, string (optional)
         default_value,                 % = 7, string (optional)
         options                        % = 8, {msg,'FieldOptions'} (optional)
        }).

-record('DescriptorProto',
        {name,                          % = 1, string (optional)
         field = [],                    % = 2, [{msg,'FieldDescriptorProto'}]
         extension = [],                % = 6, [{msg,'FieldDescriptorProto'}]
         nested_type = [],              % = 3, [{msg,'DescriptorProto'}]
         enum_type = [],                % = 4, [{msg,'EnumDescriptorProto'}]
         extension_range = [],          % = 5, [{msg,'DescriptorProto.ExtensionRange'}]
         options                        % = 7, {msg,'MessageOptions'} (optional)
        }).

-record('SourceCodeInfo.Location',
        {path = [],                     % = 1, [int32]
         span = []                      % = 2, [int32]
        }).

-record('SourceCodeInfo',
        {location = []                  % = 1, [{msg,'SourceCodeInfo.Location'}]
        }).

-record('FileDescriptorProto',
        {name,                          % = 1, string (optional)
         package,                       % = 2, string (optional)
         dependency = [],               % = 3, [string]
         message_type = [],             % = 4, [{msg,'DescriptorProto'}]
         enum_type = [],                % = 5, [{msg,'EnumDescriptorProto'}]
         service = [],                  % = 6, [{msg,'ServiceDescriptorProto'}]
         extension = [],                % = 7, [{msg,'FieldDescriptorProto'}]
         options,                       % = 8, {msg,'FileOptions'} (optional)
         source_code_info               % = 9, {msg,'SourceCodeInfo'} (optional)
        }).

-record('FileDescriptorSet',
        {file = []                      % = 1, [{msg,'FileDescriptorProto'}]
        }).

-endif.
