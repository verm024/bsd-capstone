ܵ
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
S
	Bucketize

input"T

output"
Ttype:
2	"

boundarieslist(float)
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
?
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint?????????"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
?
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
E
Where

input"T	
index	"%
Ttype0
:
2	
"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??
?
sequential/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_namesequential/dense/kernel
?
+sequential/dense/kernel/Read/ReadVariableOpReadVariableOpsequential/dense/kernel*
_output_shapes

:@*
dtype0
?
sequential/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_namesequential/dense/bias
{
)sequential/dense/bias/Read/ReadVariableOpReadVariableOpsequential/dense/bias*
_output_shapes
:@*
dtype0
?
sequential/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@**
shared_namesequential/dense_1/kernel
?
-sequential/dense_1/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_1/kernel*
_output_shapes

:@@*
dtype0
?
sequential/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_namesequential/dense_1/bias

+sequential/dense_1/bias/Read/ReadVariableOpReadVariableOpsequential/dense_1/bias*
_output_shapes
:@*
dtype0
?
sequential/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@**
shared_namesequential/dense_2/kernel
?
-sequential/dense_2/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_2/kernel*
_output_shapes

:@*
dtype0
?
sequential/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namesequential/dense_2/bias

+sequential/dense_2/bias/Read/ReadVariableOpReadVariableOpsequential/dense_2/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
k

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name280*
value_dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/sequential/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*/
shared_name Adam/sequential/dense/kernel/m
?
2Adam/sequential/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/kernel/m*
_output_shapes

:@*
dtype0
?
Adam/sequential/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameAdam/sequential/dense/bias/m
?
0Adam/sequential/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/bias/m*
_output_shapes
:@*
dtype0
?
 Adam/sequential/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*1
shared_name" Adam/sequential/dense_1/kernel/m
?
4Adam/sequential/dense_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/sequential/dense_1/kernel/m*
_output_shapes

:@@*
dtype0
?
Adam/sequential/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/sequential/dense_1/bias/m
?
2Adam/sequential/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/sequential/dense_1/bias/m*
_output_shapes
:@*
dtype0
?
 Adam/sequential/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*1
shared_name" Adam/sequential/dense_2/kernel/m
?
4Adam/sequential/dense_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/sequential/dense_2/kernel/m*
_output_shapes

:@*
dtype0
?
Adam/sequential/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/sequential/dense_2/bias/m
?
2Adam/sequential/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/sequential/dense_2/bias/m*
_output_shapes
:*
dtype0
?
Adam/sequential/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*/
shared_name Adam/sequential/dense/kernel/v
?
2Adam/sequential/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/kernel/v*
_output_shapes

:@*
dtype0
?
Adam/sequential/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameAdam/sequential/dense/bias/v
?
0Adam/sequential/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/bias/v*
_output_shapes
:@*
dtype0
?
 Adam/sequential/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*1
shared_name" Adam/sequential/dense_1/kernel/v
?
4Adam/sequential/dense_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/sequential/dense_1/kernel/v*
_output_shapes

:@@*
dtype0
?
Adam/sequential/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/sequential/dense_1/bias/v
?
2Adam/sequential/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/sequential/dense_1/bias/v*
_output_shapes
:@*
dtype0
?
 Adam/sequential/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*1
shared_name" Adam/sequential/dense_2/kernel/v
?
4Adam/sequential/dense_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/sequential/dense_2/kernel/v*
_output_shapes

:@*
dtype0
?
Adam/sequential/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/sequential/dense_2/bias/v
?
2Adam/sequential/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/sequential/dense_2/bias/v*
_output_shapes
:*
dtype0
P
ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
Const_1Const*
_output_shapes
:*
dtype0	*m
valuedBb	"X                                                                	       
       
?
Const_2Const*
_output_shapes
:*
dtype0	*m
valuedBb	"X                                                                	       
       
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_1Const_2*
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *"
fR
__inference_<lambda>_6388
&
NoOpNoOp^StatefulPartitionedCall
?*
Const_3Const"/device:CPU:0*
_output_shapes
: *
dtype0*?)
value?)B?) B?)
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
_build_input_shape
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
x
_feature_columns

_resources
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
?
$iter

%beta_1

&beta_2
	'decay
(learning_ratemPmQmRmSmTmUvVvWvXvYvZv[
 
*
0
1
2
3
4
5
*
0
1
2
3
4
5
 
?

)layers
	variables
*layer_regularization_losses
+layer_metrics
trainable_variables
	regularization_losses
,metrics
-non_trainable_variables
 
 

.	pekerjaan
 
 
 
?
/non_trainable_variables
	variables
0layer_metrics
1layer_regularization_losses
trainable_variables
regularization_losses
2metrics

3layers
ca
VARIABLE_VALUEsequential/dense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEsequential/dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
4non_trainable_variables
	variables
5layer_metrics
6layer_regularization_losses
trainable_variables
regularization_losses
7metrics

8layers
ec
VARIABLE_VALUEsequential/dense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEsequential/dense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
9non_trainable_variables
	variables
:layer_metrics
;layer_regularization_losses
trainable_variables
regularization_losses
<metrics

=layers
ec
VARIABLE_VALUEsequential/dense_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEsequential/dense_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
>non_trainable_variables
 	variables
?layer_metrics
@layer_regularization_losses
!trainable_variables
"regularization_losses
Ametrics

Blayers
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3
 
 

C0
D1
 

Epekerjaan_lookup
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Ftotal
	Gcount
H	variables
I	keras_api
D
	Jtotal
	Kcount
L
_fn_kwargs
M	variables
N	keras_api

O_initializer
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

F0
G1

H	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

J0
K1

M	variables
 
??
VARIABLE_VALUEAdam/sequential/dense/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/dense/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/sequential/dense_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/dense_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/sequential/dense_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/dense_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/dense/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/dense/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/sequential/dense_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/dense_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/sequential/dense_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/dense_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
w
serving_default_gajiPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
|
serving_default_pekerjaanPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
}
serving_default_tanggunganPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
w
serving_default_umurPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_gajiserving_default_pekerjaanserving_default_tanggunganserving_default_umur
hash_tableConstsequential/dense/kernelsequential/dense/biassequential/dense_1/kernelsequential/dense_1/biassequential/dense_2/kernelsequential/dense_2/bias*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference_signature_wrapper_5854
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename+sequential/dense/kernel/Read/ReadVariableOp)sequential/dense/bias/Read/ReadVariableOp-sequential/dense_1/kernel/Read/ReadVariableOp+sequential/dense_1/bias/Read/ReadVariableOp-sequential/dense_2/kernel/Read/ReadVariableOp+sequential/dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp2Adam/sequential/dense/kernel/m/Read/ReadVariableOp0Adam/sequential/dense/bias/m/Read/ReadVariableOp4Adam/sequential/dense_1/kernel/m/Read/ReadVariableOp2Adam/sequential/dense_1/bias/m/Read/ReadVariableOp4Adam/sequential/dense_2/kernel/m/Read/ReadVariableOp2Adam/sequential/dense_2/bias/m/Read/ReadVariableOp2Adam/sequential/dense/kernel/v/Read/ReadVariableOp0Adam/sequential/dense/bias/v/Read/ReadVariableOp4Adam/sequential/dense_1/kernel/v/Read/ReadVariableOp2Adam/sequential/dense_1/bias/v/Read/ReadVariableOp4Adam/sequential/dense_2/kernel/v/Read/ReadVariableOp2Adam/sequential/dense_2/bias/v/Read/ReadVariableOpConst_3*(
Tin!
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *&
f!R
__inference__traced_save_6500
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenamesequential/dense/kernelsequential/dense/biassequential/dense_1/kernelsequential/dense_1/biassequential/dense_2/kernelsequential/dense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/sequential/dense/kernel/mAdam/sequential/dense/bias/m Adam/sequential/dense_1/kernel/mAdam/sequential/dense_1/bias/m Adam/sequential/dense_2/kernel/mAdam/sequential/dense_2/bias/mAdam/sequential/dense/kernel/vAdam/sequential/dense/bias/v Adam/sequential/dense_1/kernel/vAdam/sequential/dense_1/bias/v Adam/sequential/dense_2/kernel/vAdam/sequential/dense_2/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_restore_6591??
?
?
&__inference_dense_1_layer_call_fn_6342

inputs
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_54852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?m
?
J__inference_dense_features_3_layer_call_and_return_conditional_losses_6278
features_gaji
features_pekerjaan	
features_tanggungan	
features_umur	B
>pekerjaan_indicator_none_lookup_lookuptablefindv2_table_handleC
?pekerjaan_indicator_none_lookup_lookuptablefindv2_default_value	
identity??1pekerjaan_indicator/None_Lookup/LookupTableFindV2U

gaji/ShapeShapefeatures_gaji*
T0*
_output_shapes
:2

gaji/Shape~
gaji/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gaji/strided_slice/stack?
gaji/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gaji/strided_slice/stack_1?
gaji/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gaji/strided_slice/stack_2?
gaji/strided_sliceStridedSlicegaji/Shape:output:0!gaji/strided_slice/stack:output:0#gaji/strided_slice/stack_1:output:0#gaji/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gaji/strided_slicen
gaji/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
gaji/Reshape/shape/1?
gaji/Reshape/shapePackgaji/strided_slice:output:0gaji/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
gaji/Reshape/shape?
gaji/ReshapeReshapefeatures_gajigaji/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
gaji/Reshape}
pekerjaan/CastCastfeatures_pekerjaan*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
pekerjaan/Castd
pekerjaan/ShapeShapepekerjaan/Cast:y:0*
T0*
_output_shapes
:2
pekerjaan/Shape?
pekerjaan/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
pekerjaan/strided_slice/stack?
pekerjaan/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
pekerjaan/strided_slice/stack_1?
pekerjaan/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
pekerjaan/strided_slice/stack_2?
pekerjaan/strided_sliceStridedSlicepekerjaan/Shape:output:0&pekerjaan/strided_slice/stack:output:0(pekerjaan/strided_slice/stack_1:output:0(pekerjaan/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
pekerjaan/strided_slicex
pekerjaan/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
pekerjaan/Reshape/shape/1?
pekerjaan/Reshape/shapePack pekerjaan/strided_slice:output:0"pekerjaan/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
pekerjaan/Reshape/shape?
pekerjaan/ReshapeReshapepekerjaan/Cast:y:0 pekerjaan/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
pekerjaan/Reshape?
2pekerjaan_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????24
2pekerjaan_indicator/to_sparse_input/ignore_value/x?
0pekerjaan_indicator/to_sparse_input/ignore_valueCast;pekerjaan_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: 22
0pekerjaan_indicator/to_sparse_input/ignore_value?
,pekerjaan_indicator/to_sparse_input/NotEqualNotEqualfeatures_pekerjaan4pekerjaan_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:?????????2.
,pekerjaan_indicator/to_sparse_input/NotEqual?
+pekerjaan_indicator/to_sparse_input/indicesWhere0pekerjaan_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2-
+pekerjaan_indicator/to_sparse_input/indices?
*pekerjaan_indicator/to_sparse_input/valuesGatherNdfeatures_pekerjaan3pekerjaan_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????2,
*pekerjaan_indicator/to_sparse_input/values?
/pekerjaan_indicator/to_sparse_input/dense_shapeShapefeatures_pekerjaan*
T0	*
_output_shapes
:*
out_type0	21
/pekerjaan_indicator/to_sparse_input/dense_shape?
1pekerjaan_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2>pekerjaan_indicator_none_lookup_lookuptablefindv2_table_handle3pekerjaan_indicator/to_sparse_input/values:output:0?pekerjaan_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????23
1pekerjaan_indicator/None_Lookup/LookupTableFindV2?
/pekerjaan_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????21
/pekerjaan_indicator/SparseToDense/default_value?
!pekerjaan_indicator/SparseToDenseSparseToDense3pekerjaan_indicator/to_sparse_input/indices:index:08pekerjaan_indicator/to_sparse_input/dense_shape:output:0:pekerjaan_indicator/None_Lookup/LookupTableFindV2:values:08pekerjaan_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????2#
!pekerjaan_indicator/SparseToDense?
!pekerjaan_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!pekerjaan_indicator/one_hot/Const?
#pekerjaan_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2%
#pekerjaan_indicator/one_hot/Const_1?
!pekerjaan_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2#
!pekerjaan_indicator/one_hot/depth?
pekerjaan_indicator/one_hotOneHot)pekerjaan_indicator/SparseToDense:dense:0*pekerjaan_indicator/one_hot/depth:output:0*pekerjaan_indicator/one_hot/Const:output:0,pekerjaan_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????2
pekerjaan_indicator/one_hot?
)pekerjaan_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)pekerjaan_indicator/Sum/reduction_indices?
pekerjaan_indicator/SumSum$pekerjaan_indicator/one_hot:output:02pekerjaan_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
pekerjaan_indicator/Sum?
pekerjaan_indicator/ShapeShape pekerjaan_indicator/Sum:output:0*
T0*
_output_shapes
:2
pekerjaan_indicator/Shape?
'pekerjaan_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'pekerjaan_indicator/strided_slice/stack?
)pekerjaan_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)pekerjaan_indicator/strided_slice/stack_1?
)pekerjaan_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)pekerjaan_indicator/strided_slice/stack_2?
!pekerjaan_indicator/strided_sliceStridedSlice"pekerjaan_indicator/Shape:output:00pekerjaan_indicator/strided_slice/stack:output:02pekerjaan_indicator/strided_slice/stack_1:output:02pekerjaan_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!pekerjaan_indicator/strided_slice?
#pekerjaan_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#pekerjaan_indicator/Reshape/shape/1?
!pekerjaan_indicator/Reshape/shapePack*pekerjaan_indicator/strided_slice:output:0,pekerjaan_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!pekerjaan_indicator/Reshape/shape?
pekerjaan_indicator/ReshapeReshape pekerjaan_indicator/Sum:output:0*pekerjaan_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
pekerjaan_indicator/Reshape?
tanggungan/CastCastfeatures_tanggungan*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
tanggungan/Castg
tanggungan/ShapeShapetanggungan/Cast:y:0*
T0*
_output_shapes
:2
tanggungan/Shape?
tanggungan/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
tanggungan/strided_slice/stack?
 tanggungan/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 tanggungan/strided_slice/stack_1?
 tanggungan/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 tanggungan/strided_slice/stack_2?
tanggungan/strided_sliceStridedSlicetanggungan/Shape:output:0'tanggungan/strided_slice/stack:output:0)tanggungan/strided_slice/stack_1:output:0)tanggungan/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
tanggungan/strided_slicez
tanggungan/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
tanggungan/Reshape/shape/1?
tanggungan/Reshape/shapePack!tanggungan/strided_slice:output:0#tanggungan/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
tanggungan/Reshape/shape?
tanggungan/ReshapeReshapetanggungan/Cast:y:0!tanggungan/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
tanggungan/Reshapen
	umur/CastCastfeatures_umur*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
	umur/CastU

umur/ShapeShapeumur/Cast:y:0*
T0*
_output_shapes
:2

umur/Shape~
umur/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
umur/strided_slice/stack?
umur/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
umur/strided_slice/stack_1?
umur/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
umur/strided_slice/stack_2?
umur/strided_sliceStridedSliceumur/Shape:output:0!umur/strided_slice/stack:output:0#umur/strided_slice/stack_1:output:0#umur/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
umur/strided_slicen
umur/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
umur/Reshape/shape/1?
umur/Reshape/shapePackumur/strided_slice:output:0umur/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
umur/Reshape/shape?
umur/ReshapeReshapeumur/Cast:y:0umur/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
umur/Reshape?
umur_bucketized/Bucketize	Bucketizeumur/Cast:y:0*
T0*'
_output_shapes
:?????????*.

boundaries 
"  ?A  B  ,B  PB  tB  ?B  ?B2
umur_bucketized/Bucketize?
umur_bucketized/CastCast"umur_bucketized/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:?????????2
umur_bucketized/Cast?
umur_bucketized/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
umur_bucketized/one_hot/Const?
umur_bucketized/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2!
umur_bucketized/one_hot/Const_1?
umur_bucketized/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2
umur_bucketized/one_hot/depth?
umur_bucketized/one_hotOneHotumur_bucketized/Cast:y:0&umur_bucketized/one_hot/depth:output:0&umur_bucketized/one_hot/Const:output:0(umur_bucketized/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????2
umur_bucketized/one_hot~
umur_bucketized/ShapeShape umur_bucketized/one_hot:output:0*
T0*
_output_shapes
:2
umur_bucketized/Shape?
#umur_bucketized/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#umur_bucketized/strided_slice/stack?
%umur_bucketized/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%umur_bucketized/strided_slice/stack_1?
%umur_bucketized/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%umur_bucketized/strided_slice/stack_2?
umur_bucketized/strided_sliceStridedSliceumur_bucketized/Shape:output:0,umur_bucketized/strided_slice/stack:output:0.umur_bucketized/strided_slice/stack_1:output:0.umur_bucketized/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
umur_bucketized/strided_slice?
umur_bucketized/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
umur_bucketized/Reshape/shape/1?
umur_bucketized/Reshape/shapePack&umur_bucketized/strided_slice:output:0(umur_bucketized/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
umur_bucketized/Reshape/shape?
umur_bucketized/ReshapeReshape umur_bucketized/one_hot:output:0&umur_bucketized/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
umur_bucketized/Reshapee
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2gaji/Reshape:output:0pekerjaan/Reshape:output:0$pekerjaan_indicator/Reshape:output:0tanggungan/Reshape:output:0umur/Reshape:output:0 umur_bucketized/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
concat?
IdentityIdentityconcat:output:02^pekerjaan_indicator/None_Lookup/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:?????????:?????????:?????????:?????????: : 2f
1pekerjaan_indicator/None_Lookup/LookupTableFindV21pekerjaan_indicator/None_Lookup/LookupTableFindV2:V R
'
_output_shapes
:?????????
'
_user_specified_namefeatures/gaji:[W
'
_output_shapes
:?????????
,
_user_specified_namefeatures/pekerjaan:\X
'
_output_shapes
:?????????
-
_user_specified_namefeatures/tanggungan:VR
'
_output_shapes
:?????????
'
_user_specified_namefeatures/umur:

_output_shapes
: 
?
?
/__inference_dense_features_3_layer_call_fn_6290
features_gaji
features_pekerjaan	
features_tanggungan	
features_umur	
unknown
	unknown_0	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_gajifeatures_pekerjaanfeatures_tanggunganfeatures_umurunknown	unknown_0*
Tin

2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_3_layer_call_and_return_conditional_losses_54512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:?????????:?????????:?????????:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????
'
_user_specified_namefeatures/gaji:[W
'
_output_shapes
:?????????
,
_user_specified_namefeatures/pekerjaan:\X
'
_output_shapes
:?????????
-
_user_specified_namefeatures/tanggungan:VR
'
_output_shapes
:?????????
'
_user_specified_namefeatures/umur:

_output_shapes
: 
?
?
)__inference_sequential_layer_call_fn_5766
gaji
	pekerjaan	

tanggungan	
umur	
unknown
	unknown_0	
	unknown_1:@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallgaji	pekerjaan
tanggunganumurunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_57232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:?????????

_user_specified_namegaji:RN
'
_output_shapes
:?????????
#
_user_specified_name	pekerjaan:SO
'
_output_shapes
:?????????
$
_user_specified_name
tanggungan:MI
'
_output_shapes
:?????????

_user_specified_nameumur:

_output_shapes
: 
?

?
?__inference_dense_layer_call_and_return_conditional_losses_6313

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?m
?
J__inference_dense_features_3_layer_call_and_return_conditional_losses_5451
features

features_1	

features_2	

features_3	B
>pekerjaan_indicator_none_lookup_lookuptablefindv2_table_handleC
?pekerjaan_indicator_none_lookup_lookuptablefindv2_default_value	
identity??1pekerjaan_indicator/None_Lookup/LookupTableFindV2P

gaji/ShapeShapefeatures*
T0*
_output_shapes
:2

gaji/Shape~
gaji/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gaji/strided_slice/stack?
gaji/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gaji/strided_slice/stack_1?
gaji/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gaji/strided_slice/stack_2?
gaji/strided_sliceStridedSlicegaji/Shape:output:0!gaji/strided_slice/stack:output:0#gaji/strided_slice/stack_1:output:0#gaji/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gaji/strided_slicen
gaji/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
gaji/Reshape/shape/1?
gaji/Reshape/shapePackgaji/strided_slice:output:0gaji/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
gaji/Reshape/shape?
gaji/ReshapeReshapefeaturesgaji/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
gaji/Reshapeu
pekerjaan/CastCast
features_1*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
pekerjaan/Castd
pekerjaan/ShapeShapepekerjaan/Cast:y:0*
T0*
_output_shapes
:2
pekerjaan/Shape?
pekerjaan/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
pekerjaan/strided_slice/stack?
pekerjaan/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
pekerjaan/strided_slice/stack_1?
pekerjaan/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
pekerjaan/strided_slice/stack_2?
pekerjaan/strided_sliceStridedSlicepekerjaan/Shape:output:0&pekerjaan/strided_slice/stack:output:0(pekerjaan/strided_slice/stack_1:output:0(pekerjaan/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
pekerjaan/strided_slicex
pekerjaan/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
pekerjaan/Reshape/shape/1?
pekerjaan/Reshape/shapePack pekerjaan/strided_slice:output:0"pekerjaan/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
pekerjaan/Reshape/shape?
pekerjaan/ReshapeReshapepekerjaan/Cast:y:0 pekerjaan/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
pekerjaan/Reshape?
2pekerjaan_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????24
2pekerjaan_indicator/to_sparse_input/ignore_value/x?
0pekerjaan_indicator/to_sparse_input/ignore_valueCast;pekerjaan_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: 22
0pekerjaan_indicator/to_sparse_input/ignore_value?
,pekerjaan_indicator/to_sparse_input/NotEqualNotEqual
features_14pekerjaan_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:?????????2.
,pekerjaan_indicator/to_sparse_input/NotEqual?
+pekerjaan_indicator/to_sparse_input/indicesWhere0pekerjaan_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2-
+pekerjaan_indicator/to_sparse_input/indices?
*pekerjaan_indicator/to_sparse_input/valuesGatherNd
features_13pekerjaan_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????2,
*pekerjaan_indicator/to_sparse_input/values?
/pekerjaan_indicator/to_sparse_input/dense_shapeShape
features_1*
T0	*
_output_shapes
:*
out_type0	21
/pekerjaan_indicator/to_sparse_input/dense_shape?
1pekerjaan_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2>pekerjaan_indicator_none_lookup_lookuptablefindv2_table_handle3pekerjaan_indicator/to_sparse_input/values:output:0?pekerjaan_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????23
1pekerjaan_indicator/None_Lookup/LookupTableFindV2?
/pekerjaan_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????21
/pekerjaan_indicator/SparseToDense/default_value?
!pekerjaan_indicator/SparseToDenseSparseToDense3pekerjaan_indicator/to_sparse_input/indices:index:08pekerjaan_indicator/to_sparse_input/dense_shape:output:0:pekerjaan_indicator/None_Lookup/LookupTableFindV2:values:08pekerjaan_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????2#
!pekerjaan_indicator/SparseToDense?
!pekerjaan_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!pekerjaan_indicator/one_hot/Const?
#pekerjaan_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2%
#pekerjaan_indicator/one_hot/Const_1?
!pekerjaan_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2#
!pekerjaan_indicator/one_hot/depth?
pekerjaan_indicator/one_hotOneHot)pekerjaan_indicator/SparseToDense:dense:0*pekerjaan_indicator/one_hot/depth:output:0*pekerjaan_indicator/one_hot/Const:output:0,pekerjaan_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????2
pekerjaan_indicator/one_hot?
)pekerjaan_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)pekerjaan_indicator/Sum/reduction_indices?
pekerjaan_indicator/SumSum$pekerjaan_indicator/one_hot:output:02pekerjaan_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
pekerjaan_indicator/Sum?
pekerjaan_indicator/ShapeShape pekerjaan_indicator/Sum:output:0*
T0*
_output_shapes
:2
pekerjaan_indicator/Shape?
'pekerjaan_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'pekerjaan_indicator/strided_slice/stack?
)pekerjaan_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)pekerjaan_indicator/strided_slice/stack_1?
)pekerjaan_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)pekerjaan_indicator/strided_slice/stack_2?
!pekerjaan_indicator/strided_sliceStridedSlice"pekerjaan_indicator/Shape:output:00pekerjaan_indicator/strided_slice/stack:output:02pekerjaan_indicator/strided_slice/stack_1:output:02pekerjaan_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!pekerjaan_indicator/strided_slice?
#pekerjaan_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#pekerjaan_indicator/Reshape/shape/1?
!pekerjaan_indicator/Reshape/shapePack*pekerjaan_indicator/strided_slice:output:0,pekerjaan_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!pekerjaan_indicator/Reshape/shape?
pekerjaan_indicator/ReshapeReshape pekerjaan_indicator/Sum:output:0*pekerjaan_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
pekerjaan_indicator/Reshapew
tanggungan/CastCast
features_2*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
tanggungan/Castg
tanggungan/ShapeShapetanggungan/Cast:y:0*
T0*
_output_shapes
:2
tanggungan/Shape?
tanggungan/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
tanggungan/strided_slice/stack?
 tanggungan/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 tanggungan/strided_slice/stack_1?
 tanggungan/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 tanggungan/strided_slice/stack_2?
tanggungan/strided_sliceStridedSlicetanggungan/Shape:output:0'tanggungan/strided_slice/stack:output:0)tanggungan/strided_slice/stack_1:output:0)tanggungan/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
tanggungan/strided_slicez
tanggungan/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
tanggungan/Reshape/shape/1?
tanggungan/Reshape/shapePack!tanggungan/strided_slice:output:0#tanggungan/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
tanggungan/Reshape/shape?
tanggungan/ReshapeReshapetanggungan/Cast:y:0!tanggungan/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
tanggungan/Reshapek
	umur/CastCast
features_3*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
	umur/CastU

umur/ShapeShapeumur/Cast:y:0*
T0*
_output_shapes
:2

umur/Shape~
umur/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
umur/strided_slice/stack?
umur/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
umur/strided_slice/stack_1?
umur/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
umur/strided_slice/stack_2?
umur/strided_sliceStridedSliceumur/Shape:output:0!umur/strided_slice/stack:output:0#umur/strided_slice/stack_1:output:0#umur/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
umur/strided_slicen
umur/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
umur/Reshape/shape/1?
umur/Reshape/shapePackumur/strided_slice:output:0umur/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
umur/Reshape/shape?
umur/ReshapeReshapeumur/Cast:y:0umur/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
umur/Reshape?
umur_bucketized/Bucketize	Bucketizeumur/Cast:y:0*
T0*'
_output_shapes
:?????????*.

boundaries 
"  ?A  B  ,B  PB  tB  ?B  ?B2
umur_bucketized/Bucketize?
umur_bucketized/CastCast"umur_bucketized/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:?????????2
umur_bucketized/Cast?
umur_bucketized/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
umur_bucketized/one_hot/Const?
umur_bucketized/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2!
umur_bucketized/one_hot/Const_1?
umur_bucketized/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2
umur_bucketized/one_hot/depth?
umur_bucketized/one_hotOneHotumur_bucketized/Cast:y:0&umur_bucketized/one_hot/depth:output:0&umur_bucketized/one_hot/Const:output:0(umur_bucketized/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????2
umur_bucketized/one_hot~
umur_bucketized/ShapeShape umur_bucketized/one_hot:output:0*
T0*
_output_shapes
:2
umur_bucketized/Shape?
#umur_bucketized/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#umur_bucketized/strided_slice/stack?
%umur_bucketized/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%umur_bucketized/strided_slice/stack_1?
%umur_bucketized/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%umur_bucketized/strided_slice/stack_2?
umur_bucketized/strided_sliceStridedSliceumur_bucketized/Shape:output:0,umur_bucketized/strided_slice/stack:output:0.umur_bucketized/strided_slice/stack_1:output:0.umur_bucketized/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
umur_bucketized/strided_slice?
umur_bucketized/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
umur_bucketized/Reshape/shape/1?
umur_bucketized/Reshape/shapePack&umur_bucketized/strided_slice:output:0(umur_bucketized/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
umur_bucketized/Reshape/shape?
umur_bucketized/ReshapeReshape umur_bucketized/one_hot:output:0&umur_bucketized/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
umur_bucketized/Reshapee
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2gaji/Reshape:output:0pekerjaan/Reshape:output:0$pekerjaan_indicator/Reshape:output:0tanggungan/Reshape:output:0umur/Reshape:output:0 umur_bucketized/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
concat?
IdentityIdentityconcat:output:02^pekerjaan_indicator/None_Lookup/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:?????????:?????????:?????????:?????????: : 2f
1pekerjaan_indicator/None_Lookup/LookupTableFindV21pekerjaan_indicator/None_Lookup/LookupTableFindV2:Q M
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:

_output_shapes
: 
?

?
?__inference_dense_layer_call_and_return_conditional_losses_5468

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_sequential_layer_call_fn_6112
inputs_gaji
inputs_pekerjaan	
inputs_tanggungan	
inputs_umur	
unknown
	unknown_0	
	unknown_1:@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_gajiinputs_pekerjaaninputs_tanggunganinputs_umurunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_57232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:?????????
%
_user_specified_nameinputs/gaji:YU
'
_output_shapes
:?????????
*
_user_specified_nameinputs/pekerjaan:ZV
'
_output_shapes
:?????????
+
_user_specified_nameinputs/tanggungan:TP
'
_output_shapes
:?????????
%
_user_specified_nameinputs/umur:

_output_shapes
: 
?
+
__inference__destroyer_6380
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
/__inference_dense_features_3_layer_call_fn_6302
features_gaji
features_pekerjaan	
features_tanggungan	
features_umur	
unknown
	unknown_0	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_gajifeatures_pekerjaanfeatures_tanggunganfeatures_umurunknown	unknown_0*
Tin

2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_3_layer_call_and_return_conditional_losses_56592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:?????????:?????????:?????????:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????
'
_user_specified_namefeatures/gaji:[W
'
_output_shapes
:?????????
,
_user_specified_namefeatures/pekerjaan:\X
'
_output_shapes
:?????????
-
_user_specified_namefeatures/tanggungan:VR
'
_output_shapes
:?????????
'
_user_specified_namefeatures/umur:

_output_shapes
: 
?
?
&__inference_dense_2_layer_call_fn_6362

inputs
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_55022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
9
__inference__creator_6367
identity??
hash_tabley

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name280*
value_dtype0	2

hash_tablei
IdentityIdentityhash_table:table_handle:0^hash_table*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
??
?
__inference__wrapped_model_5354
gaji
	pekerjaan	

tanggungan	
umur	^
Zsequential_dense_features_3_pekerjaan_indicator_none_lookup_lookuptablefindv2_table_handle_
[sequential_dense_features_3_pekerjaan_indicator_none_lookup_lookuptablefindv2_default_value	A
/sequential_dense_matmul_readvariableop_resource:@>
0sequential_dense_biasadd_readvariableop_resource:@C
1sequential_dense_1_matmul_readvariableop_resource:@@@
2sequential_dense_1_biasadd_readvariableop_resource:@C
1sequential_dense_2_matmul_readvariableop_resource:@@
2sequential_dense_2_biasadd_readvariableop_resource:
identity??'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?)sequential/dense_1/BiasAdd/ReadVariableOp?(sequential/dense_1/MatMul/ReadVariableOp?)sequential/dense_2/BiasAdd/ReadVariableOp?(sequential/dense_2/MatMul/ReadVariableOp?Msequential/dense_features_3/pekerjaan_indicator/None_Lookup/LookupTableFindV2?
 sequential/dense_features_3/CastCastgaji*

DstT0*

SrcT0*'
_output_shapes
:?????????2"
 sequential/dense_features_3/Cast?
&sequential/dense_features_3/gaji/ShapeShape$sequential/dense_features_3/Cast:y:0*
T0*
_output_shapes
:2(
&sequential/dense_features_3/gaji/Shape?
4sequential/dense_features_3/gaji/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential/dense_features_3/gaji/strided_slice/stack?
6sequential/dense_features_3/gaji/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential/dense_features_3/gaji/strided_slice/stack_1?
6sequential/dense_features_3/gaji/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential/dense_features_3/gaji/strided_slice/stack_2?
.sequential/dense_features_3/gaji/strided_sliceStridedSlice/sequential/dense_features_3/gaji/Shape:output:0=sequential/dense_features_3/gaji/strided_slice/stack:output:0?sequential/dense_features_3/gaji/strided_slice/stack_1:output:0?sequential/dense_features_3/gaji/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential/dense_features_3/gaji/strided_slice?
0sequential/dense_features_3/gaji/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
0sequential/dense_features_3/gaji/Reshape/shape/1?
.sequential/dense_features_3/gaji/Reshape/shapePack7sequential/dense_features_3/gaji/strided_slice:output:09sequential/dense_features_3/gaji/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:20
.sequential/dense_features_3/gaji/Reshape/shape?
(sequential/dense_features_3/gaji/ReshapeReshape$sequential/dense_features_3/Cast:y:07sequential/dense_features_3/gaji/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2*
(sequential/dense_features_3/gaji/Reshape?
*sequential/dense_features_3/pekerjaan/CastCast	pekerjaan*

DstT0*

SrcT0	*'
_output_shapes
:?????????2,
*sequential/dense_features_3/pekerjaan/Cast?
+sequential/dense_features_3/pekerjaan/ShapeShape.sequential/dense_features_3/pekerjaan/Cast:y:0*
T0*
_output_shapes
:2-
+sequential/dense_features_3/pekerjaan/Shape?
9sequential/dense_features_3/pekerjaan/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9sequential/dense_features_3/pekerjaan/strided_slice/stack?
;sequential/dense_features_3/pekerjaan/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;sequential/dense_features_3/pekerjaan/strided_slice/stack_1?
;sequential/dense_features_3/pekerjaan/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;sequential/dense_features_3/pekerjaan/strided_slice/stack_2?
3sequential/dense_features_3/pekerjaan/strided_sliceStridedSlice4sequential/dense_features_3/pekerjaan/Shape:output:0Bsequential/dense_features_3/pekerjaan/strided_slice/stack:output:0Dsequential/dense_features_3/pekerjaan/strided_slice/stack_1:output:0Dsequential/dense_features_3/pekerjaan/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3sequential/dense_features_3/pekerjaan/strided_slice?
5sequential/dense_features_3/pekerjaan/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :27
5sequential/dense_features_3/pekerjaan/Reshape/shape/1?
3sequential/dense_features_3/pekerjaan/Reshape/shapePack<sequential/dense_features_3/pekerjaan/strided_slice:output:0>sequential/dense_features_3/pekerjaan/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:25
3sequential/dense_features_3/pekerjaan/Reshape/shape?
-sequential/dense_features_3/pekerjaan/ReshapeReshape.sequential/dense_features_3/pekerjaan/Cast:y:0<sequential/dense_features_3/pekerjaan/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2/
-sequential/dense_features_3/pekerjaan/Reshape?
Nsequential/dense_features_3/pekerjaan_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????2P
Nsequential/dense_features_3/pekerjaan_indicator/to_sparse_input/ignore_value/x?
Lsequential/dense_features_3/pekerjaan_indicator/to_sparse_input/ignore_valueCastWsequential/dense_features_3/pekerjaan_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2N
Lsequential/dense_features_3/pekerjaan_indicator/to_sparse_input/ignore_value?
Hsequential/dense_features_3/pekerjaan_indicator/to_sparse_input/NotEqualNotEqual	pekerjaanPsequential/dense_features_3/pekerjaan_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:?????????2J
Hsequential/dense_features_3/pekerjaan_indicator/to_sparse_input/NotEqual?
Gsequential/dense_features_3/pekerjaan_indicator/to_sparse_input/indicesWhereLsequential/dense_features_3/pekerjaan_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2I
Gsequential/dense_features_3/pekerjaan_indicator/to_sparse_input/indices?
Fsequential/dense_features_3/pekerjaan_indicator/to_sparse_input/valuesGatherNd	pekerjaanOsequential/dense_features_3/pekerjaan_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????2H
Fsequential/dense_features_3/pekerjaan_indicator/to_sparse_input/values?
Ksequential/dense_features_3/pekerjaan_indicator/to_sparse_input/dense_shapeShape	pekerjaan*
T0	*
_output_shapes
:*
out_type0	2M
Ksequential/dense_features_3/pekerjaan_indicator/to_sparse_input/dense_shape?
Msequential/dense_features_3/pekerjaan_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Zsequential_dense_features_3_pekerjaan_indicator_none_lookup_lookuptablefindv2_table_handleOsequential/dense_features_3/pekerjaan_indicator/to_sparse_input/values:output:0[sequential_dense_features_3_pekerjaan_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????2O
Msequential/dense_features_3/pekerjaan_indicator/None_Lookup/LookupTableFindV2?
Ksequential/dense_features_3/pekerjaan_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2M
Ksequential/dense_features_3/pekerjaan_indicator/SparseToDense/default_value?
=sequential/dense_features_3/pekerjaan_indicator/SparseToDenseSparseToDenseOsequential/dense_features_3/pekerjaan_indicator/to_sparse_input/indices:index:0Tsequential/dense_features_3/pekerjaan_indicator/to_sparse_input/dense_shape:output:0Vsequential/dense_features_3/pekerjaan_indicator/None_Lookup/LookupTableFindV2:values:0Tsequential/dense_features_3/pekerjaan_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????2?
=sequential/dense_features_3/pekerjaan_indicator/SparseToDense?
=sequential/dense_features_3/pekerjaan_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2?
=sequential/dense_features_3/pekerjaan_indicator/one_hot/Const?
?sequential/dense_features_3/pekerjaan_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2A
?sequential/dense_features_3/pekerjaan_indicator/one_hot/Const_1?
=sequential/dense_features_3/pekerjaan_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2?
=sequential/dense_features_3/pekerjaan_indicator/one_hot/depth?
7sequential/dense_features_3/pekerjaan_indicator/one_hotOneHotEsequential/dense_features_3/pekerjaan_indicator/SparseToDense:dense:0Fsequential/dense_features_3/pekerjaan_indicator/one_hot/depth:output:0Fsequential/dense_features_3/pekerjaan_indicator/one_hot/Const:output:0Hsequential/dense_features_3/pekerjaan_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????29
7sequential/dense_features_3/pekerjaan_indicator/one_hot?
Esequential/dense_features_3/pekerjaan_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????2G
Esequential/dense_features_3/pekerjaan_indicator/Sum/reduction_indices?
3sequential/dense_features_3/pekerjaan_indicator/SumSum@sequential/dense_features_3/pekerjaan_indicator/one_hot:output:0Nsequential/dense_features_3/pekerjaan_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????25
3sequential/dense_features_3/pekerjaan_indicator/Sum?
5sequential/dense_features_3/pekerjaan_indicator/ShapeShape<sequential/dense_features_3/pekerjaan_indicator/Sum:output:0*
T0*
_output_shapes
:27
5sequential/dense_features_3/pekerjaan_indicator/Shape?
Csequential/dense_features_3/pekerjaan_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2E
Csequential/dense_features_3/pekerjaan_indicator/strided_slice/stack?
Esequential/dense_features_3/pekerjaan_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential/dense_features_3/pekerjaan_indicator/strided_slice/stack_1?
Esequential/dense_features_3/pekerjaan_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential/dense_features_3/pekerjaan_indicator/strided_slice/stack_2?
=sequential/dense_features_3/pekerjaan_indicator/strided_sliceStridedSlice>sequential/dense_features_3/pekerjaan_indicator/Shape:output:0Lsequential/dense_features_3/pekerjaan_indicator/strided_slice/stack:output:0Nsequential/dense_features_3/pekerjaan_indicator/strided_slice/stack_1:output:0Nsequential/dense_features_3/pekerjaan_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2?
=sequential/dense_features_3/pekerjaan_indicator/strided_slice?
?sequential/dense_features_3/pekerjaan_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2A
?sequential/dense_features_3/pekerjaan_indicator/Reshape/shape/1?
=sequential/dense_features_3/pekerjaan_indicator/Reshape/shapePackFsequential/dense_features_3/pekerjaan_indicator/strided_slice:output:0Hsequential/dense_features_3/pekerjaan_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2?
=sequential/dense_features_3/pekerjaan_indicator/Reshape/shape?
7sequential/dense_features_3/pekerjaan_indicator/ReshapeReshape<sequential/dense_features_3/pekerjaan_indicator/Sum:output:0Fsequential/dense_features_3/pekerjaan_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????29
7sequential/dense_features_3/pekerjaan_indicator/Reshape?
+sequential/dense_features_3/tanggungan/CastCast
tanggungan*

DstT0*

SrcT0	*'
_output_shapes
:?????????2-
+sequential/dense_features_3/tanggungan/Cast?
,sequential/dense_features_3/tanggungan/ShapeShape/sequential/dense_features_3/tanggungan/Cast:y:0*
T0*
_output_shapes
:2.
,sequential/dense_features_3/tanggungan/Shape?
:sequential/dense_features_3/tanggungan/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:sequential/dense_features_3/tanggungan/strided_slice/stack?
<sequential/dense_features_3/tanggungan/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential/dense_features_3/tanggungan/strided_slice/stack_1?
<sequential/dense_features_3/tanggungan/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential/dense_features_3/tanggungan/strided_slice/stack_2?
4sequential/dense_features_3/tanggungan/strided_sliceStridedSlice5sequential/dense_features_3/tanggungan/Shape:output:0Csequential/dense_features_3/tanggungan/strided_slice/stack:output:0Esequential/dense_features_3/tanggungan/strided_slice/stack_1:output:0Esequential/dense_features_3/tanggungan/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4sequential/dense_features_3/tanggungan/strided_slice?
6sequential/dense_features_3/tanggungan/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :28
6sequential/dense_features_3/tanggungan/Reshape/shape/1?
4sequential/dense_features_3/tanggungan/Reshape/shapePack=sequential/dense_features_3/tanggungan/strided_slice:output:0?sequential/dense_features_3/tanggungan/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:26
4sequential/dense_features_3/tanggungan/Reshape/shape?
.sequential/dense_features_3/tanggungan/ReshapeReshape/sequential/dense_features_3/tanggungan/Cast:y:0=sequential/dense_features_3/tanggungan/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????20
.sequential/dense_features_3/tanggungan/Reshape?
%sequential/dense_features_3/umur/CastCastumur*

DstT0*

SrcT0	*'
_output_shapes
:?????????2'
%sequential/dense_features_3/umur/Cast?
&sequential/dense_features_3/umur/ShapeShape)sequential/dense_features_3/umur/Cast:y:0*
T0*
_output_shapes
:2(
&sequential/dense_features_3/umur/Shape?
4sequential/dense_features_3/umur/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential/dense_features_3/umur/strided_slice/stack?
6sequential/dense_features_3/umur/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential/dense_features_3/umur/strided_slice/stack_1?
6sequential/dense_features_3/umur/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential/dense_features_3/umur/strided_slice/stack_2?
.sequential/dense_features_3/umur/strided_sliceStridedSlice/sequential/dense_features_3/umur/Shape:output:0=sequential/dense_features_3/umur/strided_slice/stack:output:0?sequential/dense_features_3/umur/strided_slice/stack_1:output:0?sequential/dense_features_3/umur/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential/dense_features_3/umur/strided_slice?
0sequential/dense_features_3/umur/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
0sequential/dense_features_3/umur/Reshape/shape/1?
.sequential/dense_features_3/umur/Reshape/shapePack7sequential/dense_features_3/umur/strided_slice:output:09sequential/dense_features_3/umur/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:20
.sequential/dense_features_3/umur/Reshape/shape?
(sequential/dense_features_3/umur/ReshapeReshape)sequential/dense_features_3/umur/Cast:y:07sequential/dense_features_3/umur/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2*
(sequential/dense_features_3/umur/Reshape?
5sequential/dense_features_3/umur_bucketized/Bucketize	Bucketize)sequential/dense_features_3/umur/Cast:y:0*
T0*'
_output_shapes
:?????????*.

boundaries 
"  ?A  B  ,B  PB  tB  ?B  ?B27
5sequential/dense_features_3/umur_bucketized/Bucketize?
0sequential/dense_features_3/umur_bucketized/CastCast>sequential/dense_features_3/umur_bucketized/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:?????????22
0sequential/dense_features_3/umur_bucketized/Cast?
9sequential/dense_features_3/umur_bucketized/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2;
9sequential/dense_features_3/umur_bucketized/one_hot/Const?
;sequential/dense_features_3/umur_bucketized/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2=
;sequential/dense_features_3/umur_bucketized/one_hot/Const_1?
9sequential/dense_features_3/umur_bucketized/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2;
9sequential/dense_features_3/umur_bucketized/one_hot/depth?
3sequential/dense_features_3/umur_bucketized/one_hotOneHot4sequential/dense_features_3/umur_bucketized/Cast:y:0Bsequential/dense_features_3/umur_bucketized/one_hot/depth:output:0Bsequential/dense_features_3/umur_bucketized/one_hot/Const:output:0Dsequential/dense_features_3/umur_bucketized/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????25
3sequential/dense_features_3/umur_bucketized/one_hot?
1sequential/dense_features_3/umur_bucketized/ShapeShape<sequential/dense_features_3/umur_bucketized/one_hot:output:0*
T0*
_output_shapes
:23
1sequential/dense_features_3/umur_bucketized/Shape?
?sequential/dense_features_3/umur_bucketized/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2A
?sequential/dense_features_3/umur_bucketized/strided_slice/stack?
Asequential/dense_features_3/umur_bucketized/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential/dense_features_3/umur_bucketized/strided_slice/stack_1?
Asequential/dense_features_3/umur_bucketized/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential/dense_features_3/umur_bucketized/strided_slice/stack_2?
9sequential/dense_features_3/umur_bucketized/strided_sliceStridedSlice:sequential/dense_features_3/umur_bucketized/Shape:output:0Hsequential/dense_features_3/umur_bucketized/strided_slice/stack:output:0Jsequential/dense_features_3/umur_bucketized/strided_slice/stack_1:output:0Jsequential/dense_features_3/umur_bucketized/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2;
9sequential/dense_features_3/umur_bucketized/strided_slice?
;sequential/dense_features_3/umur_bucketized/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2=
;sequential/dense_features_3/umur_bucketized/Reshape/shape/1?
9sequential/dense_features_3/umur_bucketized/Reshape/shapePackBsequential/dense_features_3/umur_bucketized/strided_slice:output:0Dsequential/dense_features_3/umur_bucketized/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2;
9sequential/dense_features_3/umur_bucketized/Reshape/shape?
3sequential/dense_features_3/umur_bucketized/ReshapeReshape<sequential/dense_features_3/umur_bucketized/one_hot:output:0Bsequential/dense_features_3/umur_bucketized/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????25
3sequential/dense_features_3/umur_bucketized/Reshape?
'sequential/dense_features_3/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2)
'sequential/dense_features_3/concat/axis?
"sequential/dense_features_3/concatConcatV21sequential/dense_features_3/gaji/Reshape:output:06sequential/dense_features_3/pekerjaan/Reshape:output:0@sequential/dense_features_3/pekerjaan_indicator/Reshape:output:07sequential/dense_features_3/tanggungan/Reshape:output:01sequential/dense_features_3/umur/Reshape:output:0<sequential/dense_features_3/umur_bucketized/Reshape:output:00sequential/dense_features_3/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2$
"sequential/dense_features_3/concat?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02(
&sequential/dense/MatMul/ReadVariableOp?
sequential/dense/MatMulMatMul+sequential/dense_features_3/concat:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
sequential/dense/MatMul?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
sequential/dense/BiasAdd?
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential/dense/Relu?
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp?
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
sequential/dense_1/MatMul?
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOp?
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
sequential/dense_1/BiasAdd?
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential/dense_1/Relu?
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02*
(sequential/dense_2/MatMul/ReadVariableOp?
sequential/dense_2/MatMulMatMul%sequential/dense_1/Relu:activations:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense_2/MatMul?
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/dense_2/BiasAdd/ReadVariableOp?
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense_2/BiasAdd?
sequential/dense_2/SigmoidSigmoid#sequential/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential/dense_2/Sigmoid?
IdentityIdentitysequential/dense_2/Sigmoid:y:0(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOpN^sequential/dense_features_3/pekerjaan_indicator/None_Lookup/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2?
Msequential/dense_features_3/pekerjaan_indicator/None_Lookup/LookupTableFindV2Msequential/dense_features_3/pekerjaan_indicator/None_Lookup/LookupTableFindV2:M I
'
_output_shapes
:?????????

_user_specified_namegaji:RN
'
_output_shapes
:?????????
#
_user_specified_name	pekerjaan:SO
'
_output_shapes
:?????????
$
_user_specified_name
tanggungan:MI
'
_output_shapes
:?????????

_user_specified_nameumur:

_output_shapes
: 
?

?
A__inference_dense_2_layer_call_and_return_conditional_losses_6353

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?m
?
J__inference_dense_features_3_layer_call_and_return_conditional_losses_5659
features

features_1	

features_2	

features_3	B
>pekerjaan_indicator_none_lookup_lookuptablefindv2_table_handleC
?pekerjaan_indicator_none_lookup_lookuptablefindv2_default_value	
identity??1pekerjaan_indicator/None_Lookup/LookupTableFindV2P

gaji/ShapeShapefeatures*
T0*
_output_shapes
:2

gaji/Shape~
gaji/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gaji/strided_slice/stack?
gaji/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gaji/strided_slice/stack_1?
gaji/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gaji/strided_slice/stack_2?
gaji/strided_sliceStridedSlicegaji/Shape:output:0!gaji/strided_slice/stack:output:0#gaji/strided_slice/stack_1:output:0#gaji/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gaji/strided_slicen
gaji/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
gaji/Reshape/shape/1?
gaji/Reshape/shapePackgaji/strided_slice:output:0gaji/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
gaji/Reshape/shape?
gaji/ReshapeReshapefeaturesgaji/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
gaji/Reshapeu
pekerjaan/CastCast
features_1*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
pekerjaan/Castd
pekerjaan/ShapeShapepekerjaan/Cast:y:0*
T0*
_output_shapes
:2
pekerjaan/Shape?
pekerjaan/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
pekerjaan/strided_slice/stack?
pekerjaan/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
pekerjaan/strided_slice/stack_1?
pekerjaan/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
pekerjaan/strided_slice/stack_2?
pekerjaan/strided_sliceStridedSlicepekerjaan/Shape:output:0&pekerjaan/strided_slice/stack:output:0(pekerjaan/strided_slice/stack_1:output:0(pekerjaan/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
pekerjaan/strided_slicex
pekerjaan/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
pekerjaan/Reshape/shape/1?
pekerjaan/Reshape/shapePack pekerjaan/strided_slice:output:0"pekerjaan/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
pekerjaan/Reshape/shape?
pekerjaan/ReshapeReshapepekerjaan/Cast:y:0 pekerjaan/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
pekerjaan/Reshape?
2pekerjaan_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????24
2pekerjaan_indicator/to_sparse_input/ignore_value/x?
0pekerjaan_indicator/to_sparse_input/ignore_valueCast;pekerjaan_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: 22
0pekerjaan_indicator/to_sparse_input/ignore_value?
,pekerjaan_indicator/to_sparse_input/NotEqualNotEqual
features_14pekerjaan_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:?????????2.
,pekerjaan_indicator/to_sparse_input/NotEqual?
+pekerjaan_indicator/to_sparse_input/indicesWhere0pekerjaan_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2-
+pekerjaan_indicator/to_sparse_input/indices?
*pekerjaan_indicator/to_sparse_input/valuesGatherNd
features_13pekerjaan_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????2,
*pekerjaan_indicator/to_sparse_input/values?
/pekerjaan_indicator/to_sparse_input/dense_shapeShape
features_1*
T0	*
_output_shapes
:*
out_type0	21
/pekerjaan_indicator/to_sparse_input/dense_shape?
1pekerjaan_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2>pekerjaan_indicator_none_lookup_lookuptablefindv2_table_handle3pekerjaan_indicator/to_sparse_input/values:output:0?pekerjaan_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????23
1pekerjaan_indicator/None_Lookup/LookupTableFindV2?
/pekerjaan_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????21
/pekerjaan_indicator/SparseToDense/default_value?
!pekerjaan_indicator/SparseToDenseSparseToDense3pekerjaan_indicator/to_sparse_input/indices:index:08pekerjaan_indicator/to_sparse_input/dense_shape:output:0:pekerjaan_indicator/None_Lookup/LookupTableFindV2:values:08pekerjaan_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????2#
!pekerjaan_indicator/SparseToDense?
!pekerjaan_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!pekerjaan_indicator/one_hot/Const?
#pekerjaan_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2%
#pekerjaan_indicator/one_hot/Const_1?
!pekerjaan_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2#
!pekerjaan_indicator/one_hot/depth?
pekerjaan_indicator/one_hotOneHot)pekerjaan_indicator/SparseToDense:dense:0*pekerjaan_indicator/one_hot/depth:output:0*pekerjaan_indicator/one_hot/Const:output:0,pekerjaan_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????2
pekerjaan_indicator/one_hot?
)pekerjaan_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)pekerjaan_indicator/Sum/reduction_indices?
pekerjaan_indicator/SumSum$pekerjaan_indicator/one_hot:output:02pekerjaan_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
pekerjaan_indicator/Sum?
pekerjaan_indicator/ShapeShape pekerjaan_indicator/Sum:output:0*
T0*
_output_shapes
:2
pekerjaan_indicator/Shape?
'pekerjaan_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'pekerjaan_indicator/strided_slice/stack?
)pekerjaan_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)pekerjaan_indicator/strided_slice/stack_1?
)pekerjaan_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)pekerjaan_indicator/strided_slice/stack_2?
!pekerjaan_indicator/strided_sliceStridedSlice"pekerjaan_indicator/Shape:output:00pekerjaan_indicator/strided_slice/stack:output:02pekerjaan_indicator/strided_slice/stack_1:output:02pekerjaan_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!pekerjaan_indicator/strided_slice?
#pekerjaan_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#pekerjaan_indicator/Reshape/shape/1?
!pekerjaan_indicator/Reshape/shapePack*pekerjaan_indicator/strided_slice:output:0,pekerjaan_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!pekerjaan_indicator/Reshape/shape?
pekerjaan_indicator/ReshapeReshape pekerjaan_indicator/Sum:output:0*pekerjaan_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
pekerjaan_indicator/Reshapew
tanggungan/CastCast
features_2*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
tanggungan/Castg
tanggungan/ShapeShapetanggungan/Cast:y:0*
T0*
_output_shapes
:2
tanggungan/Shape?
tanggungan/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
tanggungan/strided_slice/stack?
 tanggungan/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 tanggungan/strided_slice/stack_1?
 tanggungan/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 tanggungan/strided_slice/stack_2?
tanggungan/strided_sliceStridedSlicetanggungan/Shape:output:0'tanggungan/strided_slice/stack:output:0)tanggungan/strided_slice/stack_1:output:0)tanggungan/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
tanggungan/strided_slicez
tanggungan/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
tanggungan/Reshape/shape/1?
tanggungan/Reshape/shapePack!tanggungan/strided_slice:output:0#tanggungan/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
tanggungan/Reshape/shape?
tanggungan/ReshapeReshapetanggungan/Cast:y:0!tanggungan/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
tanggungan/Reshapek
	umur/CastCast
features_3*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
	umur/CastU

umur/ShapeShapeumur/Cast:y:0*
T0*
_output_shapes
:2

umur/Shape~
umur/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
umur/strided_slice/stack?
umur/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
umur/strided_slice/stack_1?
umur/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
umur/strided_slice/stack_2?
umur/strided_sliceStridedSliceumur/Shape:output:0!umur/strided_slice/stack:output:0#umur/strided_slice/stack_1:output:0#umur/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
umur/strided_slicen
umur/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
umur/Reshape/shape/1?
umur/Reshape/shapePackumur/strided_slice:output:0umur/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
umur/Reshape/shape?
umur/ReshapeReshapeumur/Cast:y:0umur/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
umur/Reshape?
umur_bucketized/Bucketize	Bucketizeumur/Cast:y:0*
T0*'
_output_shapes
:?????????*.

boundaries 
"  ?A  B  ,B  PB  tB  ?B  ?B2
umur_bucketized/Bucketize?
umur_bucketized/CastCast"umur_bucketized/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:?????????2
umur_bucketized/Cast?
umur_bucketized/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
umur_bucketized/one_hot/Const?
umur_bucketized/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2!
umur_bucketized/one_hot/Const_1?
umur_bucketized/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2
umur_bucketized/one_hot/depth?
umur_bucketized/one_hotOneHotumur_bucketized/Cast:y:0&umur_bucketized/one_hot/depth:output:0&umur_bucketized/one_hot/Const:output:0(umur_bucketized/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????2
umur_bucketized/one_hot~
umur_bucketized/ShapeShape umur_bucketized/one_hot:output:0*
T0*
_output_shapes
:2
umur_bucketized/Shape?
#umur_bucketized/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#umur_bucketized/strided_slice/stack?
%umur_bucketized/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%umur_bucketized/strided_slice/stack_1?
%umur_bucketized/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%umur_bucketized/strided_slice/stack_2?
umur_bucketized/strided_sliceStridedSliceumur_bucketized/Shape:output:0,umur_bucketized/strided_slice/stack:output:0.umur_bucketized/strided_slice/stack_1:output:0.umur_bucketized/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
umur_bucketized/strided_slice?
umur_bucketized/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
umur_bucketized/Reshape/shape/1?
umur_bucketized/Reshape/shapePack&umur_bucketized/strided_slice:output:0(umur_bucketized/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
umur_bucketized/Reshape/shape?
umur_bucketized/ReshapeReshape umur_bucketized/one_hot:output:0&umur_bucketized/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
umur_bucketized/Reshapee
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2gaji/Reshape:output:0pekerjaan/Reshape:output:0$pekerjaan_indicator/Reshape:output:0tanggungan/Reshape:output:0umur/Reshape:output:0 umur_bucketized/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
concat?
IdentityIdentityconcat:output:02^pekerjaan_indicator/None_Lookup/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:?????????:?????????:?????????:?????????: : 2f
1pekerjaan_indicator/None_Lookup/LookupTableFindV21pekerjaan_indicator/None_Lookup/LookupTableFindV2:Q M
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:

_output_shapes
: 
??
?
D__inference_sequential_layer_call_and_return_conditional_losses_5959
inputs_gaji
inputs_pekerjaan	
inputs_tanggungan	
inputs_umur	S
Odense_features_3_pekerjaan_indicator_none_lookup_lookuptablefindv2_table_handleT
Pdense_features_3_pekerjaan_indicator_none_lookup_lookuptablefindv2_default_value	6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@@5
'dense_1_biasadd_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@5
'dense_2_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?Bdense_features_3/pekerjaan_indicator/None_Lookup/LookupTableFindV2?
dense_features_3/CastCastinputs_gaji*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_features_3/Cast?
dense_features_3/gaji/ShapeShapedense_features_3/Cast:y:0*
T0*
_output_shapes
:2
dense_features_3/gaji/Shape?
)dense_features_3/gaji/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)dense_features_3/gaji/strided_slice/stack?
+dense_features_3/gaji/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+dense_features_3/gaji/strided_slice/stack_1?
+dense_features_3/gaji/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+dense_features_3/gaji/strided_slice/stack_2?
#dense_features_3/gaji/strided_sliceStridedSlice$dense_features_3/gaji/Shape:output:02dense_features_3/gaji/strided_slice/stack:output:04dense_features_3/gaji/strided_slice/stack_1:output:04dense_features_3/gaji/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#dense_features_3/gaji/strided_slice?
%dense_features_3/gaji/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%dense_features_3/gaji/Reshape/shape/1?
#dense_features_3/gaji/Reshape/shapePack,dense_features_3/gaji/strided_slice:output:0.dense_features_3/gaji/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2%
#dense_features_3/gaji/Reshape/shape?
dense_features_3/gaji/ReshapeReshapedense_features_3/Cast:y:0,dense_features_3/gaji/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
dense_features_3/gaji/Reshape?
dense_features_3/pekerjaan/CastCastinputs_pekerjaan*

DstT0*

SrcT0	*'
_output_shapes
:?????????2!
dense_features_3/pekerjaan/Cast?
 dense_features_3/pekerjaan/ShapeShape#dense_features_3/pekerjaan/Cast:y:0*
T0*
_output_shapes
:2"
 dense_features_3/pekerjaan/Shape?
.dense_features_3/pekerjaan/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.dense_features_3/pekerjaan/strided_slice/stack?
0dense_features_3/pekerjaan/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0dense_features_3/pekerjaan/strided_slice/stack_1?
0dense_features_3/pekerjaan/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0dense_features_3/pekerjaan/strided_slice/stack_2?
(dense_features_3/pekerjaan/strided_sliceStridedSlice)dense_features_3/pekerjaan/Shape:output:07dense_features_3/pekerjaan/strided_slice/stack:output:09dense_features_3/pekerjaan/strided_slice/stack_1:output:09dense_features_3/pekerjaan/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(dense_features_3/pekerjaan/strided_slice?
*dense_features_3/pekerjaan/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*dense_features_3/pekerjaan/Reshape/shape/1?
(dense_features_3/pekerjaan/Reshape/shapePack1dense_features_3/pekerjaan/strided_slice:output:03dense_features_3/pekerjaan/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2*
(dense_features_3/pekerjaan/Reshape/shape?
"dense_features_3/pekerjaan/ReshapeReshape#dense_features_3/pekerjaan/Cast:y:01dense_features_3/pekerjaan/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2$
"dense_features_3/pekerjaan/Reshape?
Cdense_features_3/pekerjaan_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????2E
Cdense_features_3/pekerjaan_indicator/to_sparse_input/ignore_value/x?
Adense_features_3/pekerjaan_indicator/to_sparse_input/ignore_valueCastLdense_features_3/pekerjaan_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2C
Adense_features_3/pekerjaan_indicator/to_sparse_input/ignore_value?
=dense_features_3/pekerjaan_indicator/to_sparse_input/NotEqualNotEqualinputs_pekerjaanEdense_features_3/pekerjaan_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:?????????2?
=dense_features_3/pekerjaan_indicator/to_sparse_input/NotEqual?
<dense_features_3/pekerjaan_indicator/to_sparse_input/indicesWhereAdense_features_3/pekerjaan_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2>
<dense_features_3/pekerjaan_indicator/to_sparse_input/indices?
;dense_features_3/pekerjaan_indicator/to_sparse_input/valuesGatherNdinputs_pekerjaanDdense_features_3/pekerjaan_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????2=
;dense_features_3/pekerjaan_indicator/to_sparse_input/values?
@dense_features_3/pekerjaan_indicator/to_sparse_input/dense_shapeShapeinputs_pekerjaan*
T0	*
_output_shapes
:*
out_type0	2B
@dense_features_3/pekerjaan_indicator/to_sparse_input/dense_shape?
Bdense_features_3/pekerjaan_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Odense_features_3_pekerjaan_indicator_none_lookup_lookuptablefindv2_table_handleDdense_features_3/pekerjaan_indicator/to_sparse_input/values:output:0Pdense_features_3_pekerjaan_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????2D
Bdense_features_3/pekerjaan_indicator/None_Lookup/LookupTableFindV2?
@dense_features_3/pekerjaan_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2B
@dense_features_3/pekerjaan_indicator/SparseToDense/default_value?
2dense_features_3/pekerjaan_indicator/SparseToDenseSparseToDenseDdense_features_3/pekerjaan_indicator/to_sparse_input/indices:index:0Idense_features_3/pekerjaan_indicator/to_sparse_input/dense_shape:output:0Kdense_features_3/pekerjaan_indicator/None_Lookup/LookupTableFindV2:values:0Idense_features_3/pekerjaan_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????24
2dense_features_3/pekerjaan_indicator/SparseToDense?
2dense_features_3/pekerjaan_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2dense_features_3/pekerjaan_indicator/one_hot/Const?
4dense_features_3/pekerjaan_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    26
4dense_features_3/pekerjaan_indicator/one_hot/Const_1?
2dense_features_3/pekerjaan_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :24
2dense_features_3/pekerjaan_indicator/one_hot/depth?
,dense_features_3/pekerjaan_indicator/one_hotOneHot:dense_features_3/pekerjaan_indicator/SparseToDense:dense:0;dense_features_3/pekerjaan_indicator/one_hot/depth:output:0;dense_features_3/pekerjaan_indicator/one_hot/Const:output:0=dense_features_3/pekerjaan_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????2.
,dense_features_3/pekerjaan_indicator/one_hot?
:dense_features_3/pekerjaan_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????2<
:dense_features_3/pekerjaan_indicator/Sum/reduction_indices?
(dense_features_3/pekerjaan_indicator/SumSum5dense_features_3/pekerjaan_indicator/one_hot:output:0Cdense_features_3/pekerjaan_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2*
(dense_features_3/pekerjaan_indicator/Sum?
*dense_features_3/pekerjaan_indicator/ShapeShape1dense_features_3/pekerjaan_indicator/Sum:output:0*
T0*
_output_shapes
:2,
*dense_features_3/pekerjaan_indicator/Shape?
8dense_features_3/pekerjaan_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8dense_features_3/pekerjaan_indicator/strided_slice/stack?
:dense_features_3/pekerjaan_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:dense_features_3/pekerjaan_indicator/strided_slice/stack_1?
:dense_features_3/pekerjaan_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:dense_features_3/pekerjaan_indicator/strided_slice/stack_2?
2dense_features_3/pekerjaan_indicator/strided_sliceStridedSlice3dense_features_3/pekerjaan_indicator/Shape:output:0Adense_features_3/pekerjaan_indicator/strided_slice/stack:output:0Cdense_features_3/pekerjaan_indicator/strided_slice/stack_1:output:0Cdense_features_3/pekerjaan_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2dense_features_3/pekerjaan_indicator/strided_slice?
4dense_features_3/pekerjaan_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :26
4dense_features_3/pekerjaan_indicator/Reshape/shape/1?
2dense_features_3/pekerjaan_indicator/Reshape/shapePack;dense_features_3/pekerjaan_indicator/strided_slice:output:0=dense_features_3/pekerjaan_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:24
2dense_features_3/pekerjaan_indicator/Reshape/shape?
,dense_features_3/pekerjaan_indicator/ReshapeReshape1dense_features_3/pekerjaan_indicator/Sum:output:0;dense_features_3/pekerjaan_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2.
,dense_features_3/pekerjaan_indicator/Reshape?
 dense_features_3/tanggungan/CastCastinputs_tanggungan*

DstT0*

SrcT0	*'
_output_shapes
:?????????2"
 dense_features_3/tanggungan/Cast?
!dense_features_3/tanggungan/ShapeShape$dense_features_3/tanggungan/Cast:y:0*
T0*
_output_shapes
:2#
!dense_features_3/tanggungan/Shape?
/dense_features_3/tanggungan/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_features_3/tanggungan/strided_slice/stack?
1dense_features_3/tanggungan/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_features_3/tanggungan/strided_slice/stack_1?
1dense_features_3/tanggungan/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_features_3/tanggungan/strided_slice/stack_2?
)dense_features_3/tanggungan/strided_sliceStridedSlice*dense_features_3/tanggungan/Shape:output:08dense_features_3/tanggungan/strided_slice/stack:output:0:dense_features_3/tanggungan/strided_slice/stack_1:output:0:dense_features_3/tanggungan/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_features_3/tanggungan/strided_slice?
+dense_features_3/tanggungan/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2-
+dense_features_3/tanggungan/Reshape/shape/1?
)dense_features_3/tanggungan/Reshape/shapePack2dense_features_3/tanggungan/strided_slice:output:04dense_features_3/tanggungan/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2+
)dense_features_3/tanggungan/Reshape/shape?
#dense_features_3/tanggungan/ReshapeReshape$dense_features_3/tanggungan/Cast:y:02dense_features_3/tanggungan/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2%
#dense_features_3/tanggungan/Reshape?
dense_features_3/umur/CastCastinputs_umur*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
dense_features_3/umur/Cast?
dense_features_3/umur/ShapeShapedense_features_3/umur/Cast:y:0*
T0*
_output_shapes
:2
dense_features_3/umur/Shape?
)dense_features_3/umur/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)dense_features_3/umur/strided_slice/stack?
+dense_features_3/umur/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+dense_features_3/umur/strided_slice/stack_1?
+dense_features_3/umur/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+dense_features_3/umur/strided_slice/stack_2?
#dense_features_3/umur/strided_sliceStridedSlice$dense_features_3/umur/Shape:output:02dense_features_3/umur/strided_slice/stack:output:04dense_features_3/umur/strided_slice/stack_1:output:04dense_features_3/umur/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#dense_features_3/umur/strided_slice?
%dense_features_3/umur/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%dense_features_3/umur/Reshape/shape/1?
#dense_features_3/umur/Reshape/shapePack,dense_features_3/umur/strided_slice:output:0.dense_features_3/umur/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2%
#dense_features_3/umur/Reshape/shape?
dense_features_3/umur/ReshapeReshapedense_features_3/umur/Cast:y:0,dense_features_3/umur/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
dense_features_3/umur/Reshape?
*dense_features_3/umur_bucketized/Bucketize	Bucketizedense_features_3/umur/Cast:y:0*
T0*'
_output_shapes
:?????????*.

boundaries 
"  ?A  B  ,B  PB  tB  ?B  ?B2,
*dense_features_3/umur_bucketized/Bucketize?
%dense_features_3/umur_bucketized/CastCast3dense_features_3/umur_bucketized/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:?????????2'
%dense_features_3/umur_bucketized/Cast?
.dense_features_3/umur_bucketized/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.dense_features_3/umur_bucketized/one_hot/Const?
0dense_features_3/umur_bucketized/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    22
0dense_features_3/umur_bucketized/one_hot/Const_1?
.dense_features_3/umur_bucketized/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :20
.dense_features_3/umur_bucketized/one_hot/depth?
(dense_features_3/umur_bucketized/one_hotOneHot)dense_features_3/umur_bucketized/Cast:y:07dense_features_3/umur_bucketized/one_hot/depth:output:07dense_features_3/umur_bucketized/one_hot/Const:output:09dense_features_3/umur_bucketized/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????2*
(dense_features_3/umur_bucketized/one_hot?
&dense_features_3/umur_bucketized/ShapeShape1dense_features_3/umur_bucketized/one_hot:output:0*
T0*
_output_shapes
:2(
&dense_features_3/umur_bucketized/Shape?
4dense_features_3/umur_bucketized/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4dense_features_3/umur_bucketized/strided_slice/stack?
6dense_features_3/umur_bucketized/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6dense_features_3/umur_bucketized/strided_slice/stack_1?
6dense_features_3/umur_bucketized/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6dense_features_3/umur_bucketized/strided_slice/stack_2?
.dense_features_3/umur_bucketized/strided_sliceStridedSlice/dense_features_3/umur_bucketized/Shape:output:0=dense_features_3/umur_bucketized/strided_slice/stack:output:0?dense_features_3/umur_bucketized/strided_slice/stack_1:output:0?dense_features_3/umur_bucketized/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.dense_features_3/umur_bucketized/strided_slice?
0dense_features_3/umur_bucketized/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
0dense_features_3/umur_bucketized/Reshape/shape/1?
.dense_features_3/umur_bucketized/Reshape/shapePack7dense_features_3/umur_bucketized/strided_slice:output:09dense_features_3/umur_bucketized/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:20
.dense_features_3/umur_bucketized/Reshape/shape?
(dense_features_3/umur_bucketized/ReshapeReshape1dense_features_3/umur_bucketized/one_hot:output:07dense_features_3/umur_bucketized/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2*
(dense_features_3/umur_bucketized/Reshape?
dense_features_3/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
dense_features_3/concat/axis?
dense_features_3/concatConcatV2&dense_features_3/gaji/Reshape:output:0+dense_features_3/pekerjaan/Reshape:output:05dense_features_3/pekerjaan_indicator/Reshape:output:0,dense_features_3/tanggungan/Reshape:output:0&dense_features_3/umur/Reshape:output:01dense_features_3/umur_bucketized/Reshape:output:0%dense_features_3/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
dense_features_3/concat?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMul dense_features_3/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2

dense/Relu?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/BiasAddp
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_1/Relu?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_2/Sigmoid?
IdentityIdentitydense_2/Sigmoid:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOpC^dense_features_3/pekerjaan_indicator/None_Lookup/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2?
Bdense_features_3/pekerjaan_indicator/None_Lookup/LookupTableFindV2Bdense_features_3/pekerjaan_indicator/None_Lookup/LookupTableFindV2:T P
'
_output_shapes
:?????????
%
_user_specified_nameinputs/gaji:YU
'
_output_shapes
:?????????
*
_user_specified_nameinputs/pekerjaan:ZV
'
_output_shapes
:?????????
+
_user_specified_nameinputs/tanggungan:TP
'
_output_shapes
:?????????
%
_user_specified_nameinputs/umur:

_output_shapes
: 
?

?
A__inference_dense_2_layer_call_and_return_conditional_losses_5502

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
__inference_<lambda>_63882
.table_init279_lookuptableimportv2_table_handle*
&table_init279_lookuptableimportv2_keys	,
(table_init279_lookuptableimportv2_values	
identity??!table_init279/LookupTableImportV2?
!table_init279/LookupTableImportV2LookupTableImportV2.table_init279_lookuptableimportv2_table_handle&table_init279_lookuptableimportv2_keys(table_init279_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 2#
!table_init279/LookupTableImportV2S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
Constu
IdentityIdentityConst:output:0"^table_init279/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init279/LookupTableImportV2!table_init279/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_5723

inputs
inputs_1	
inputs_2	
inputs_3	
dense_features_3_5702
dense_features_3_5704	

dense_5707:@

dense_5709:@
dense_1_5712:@@
dense_1_5714:@
dense_2_5717:@
dense_2_5719:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?(dense_features_3/StatefulPartitionedCall
dense_features_3/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_features_3/Cast?
(dense_features_3/StatefulPartitionedCallStatefulPartitionedCalldense_features_3/Cast:y:0inputs_1inputs_2inputs_3dense_features_3_5702dense_features_3_5704*
Tin

2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_3_layer_call_and_return_conditional_losses_56592*
(dense_features_3/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall1dense_features_3/StatefulPartitionedCall:output:0
dense_5707
dense_5709*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_54682
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_5712dense_1_5714*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_54852!
dense_1/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_5717dense_2_5719*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_55022!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall)^dense_features_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2T
(dense_features_3/StatefulPartitionedCall(dense_features_3/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?w
?
 __inference__traced_restore_6591
file_prefix:
(assignvariableop_sequential_dense_kernel:@6
(assignvariableop_1_sequential_dense_bias:@>
,assignvariableop_2_sequential_dense_1_kernel:@@8
*assignvariableop_3_sequential_dense_1_bias:@>
,assignvariableop_4_sequential_dense_2_kernel:@8
*assignvariableop_5_sequential_dense_2_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: D
2assignvariableop_15_adam_sequential_dense_kernel_m:@>
0assignvariableop_16_adam_sequential_dense_bias_m:@F
4assignvariableop_17_adam_sequential_dense_1_kernel_m:@@@
2assignvariableop_18_adam_sequential_dense_1_bias_m:@F
4assignvariableop_19_adam_sequential_dense_2_kernel_m:@@
2assignvariableop_20_adam_sequential_dense_2_bias_m:D
2assignvariableop_21_adam_sequential_dense_kernel_v:@>
0assignvariableop_22_adam_sequential_dense_bias_v:@F
4assignvariableop_23_adam_sequential_dense_1_kernel_v:@@@
2assignvariableop_24_adam_sequential_dense_1_bias_v:@F
4assignvariableop_25_adam_sequential_dense_2_kernel_v:@@
2assignvariableop_26_adam_sequential_dense_2_bias_v:
identity_28??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp(assignvariableop_sequential_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp(assignvariableop_1_sequential_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp,assignvariableop_2_sequential_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp*assignvariableop_3_sequential_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp,assignvariableop_4_sequential_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp*assignvariableop_5_sequential_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp2assignvariableop_15_adam_sequential_dense_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp0assignvariableop_16_adam_sequential_dense_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp4assignvariableop_17_adam_sequential_dense_1_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp2assignvariableop_18_adam_sequential_dense_1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp4assignvariableop_19_adam_sequential_dense_2_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_sequential_dense_2_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp2assignvariableop_21_adam_sequential_dense_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp0assignvariableop_22_adam_sequential_dense_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp4assignvariableop_23_adam_sequential_dense_1_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp2assignvariableop_24_adam_sequential_dense_1_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_sequential_dense_2_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_sequential_dense_2_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27?
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?m
?
J__inference_dense_features_3_layer_call_and_return_conditional_losses_6195
features_gaji
features_pekerjaan	
features_tanggungan	
features_umur	B
>pekerjaan_indicator_none_lookup_lookuptablefindv2_table_handleC
?pekerjaan_indicator_none_lookup_lookuptablefindv2_default_value	
identity??1pekerjaan_indicator/None_Lookup/LookupTableFindV2U

gaji/ShapeShapefeatures_gaji*
T0*
_output_shapes
:2

gaji/Shape~
gaji/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gaji/strided_slice/stack?
gaji/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gaji/strided_slice/stack_1?
gaji/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gaji/strided_slice/stack_2?
gaji/strided_sliceStridedSlicegaji/Shape:output:0!gaji/strided_slice/stack:output:0#gaji/strided_slice/stack_1:output:0#gaji/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gaji/strided_slicen
gaji/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
gaji/Reshape/shape/1?
gaji/Reshape/shapePackgaji/strided_slice:output:0gaji/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
gaji/Reshape/shape?
gaji/ReshapeReshapefeatures_gajigaji/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
gaji/Reshape}
pekerjaan/CastCastfeatures_pekerjaan*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
pekerjaan/Castd
pekerjaan/ShapeShapepekerjaan/Cast:y:0*
T0*
_output_shapes
:2
pekerjaan/Shape?
pekerjaan/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
pekerjaan/strided_slice/stack?
pekerjaan/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
pekerjaan/strided_slice/stack_1?
pekerjaan/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
pekerjaan/strided_slice/stack_2?
pekerjaan/strided_sliceStridedSlicepekerjaan/Shape:output:0&pekerjaan/strided_slice/stack:output:0(pekerjaan/strided_slice/stack_1:output:0(pekerjaan/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
pekerjaan/strided_slicex
pekerjaan/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
pekerjaan/Reshape/shape/1?
pekerjaan/Reshape/shapePack pekerjaan/strided_slice:output:0"pekerjaan/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
pekerjaan/Reshape/shape?
pekerjaan/ReshapeReshapepekerjaan/Cast:y:0 pekerjaan/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
pekerjaan/Reshape?
2pekerjaan_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????24
2pekerjaan_indicator/to_sparse_input/ignore_value/x?
0pekerjaan_indicator/to_sparse_input/ignore_valueCast;pekerjaan_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: 22
0pekerjaan_indicator/to_sparse_input/ignore_value?
,pekerjaan_indicator/to_sparse_input/NotEqualNotEqualfeatures_pekerjaan4pekerjaan_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:?????????2.
,pekerjaan_indicator/to_sparse_input/NotEqual?
+pekerjaan_indicator/to_sparse_input/indicesWhere0pekerjaan_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2-
+pekerjaan_indicator/to_sparse_input/indices?
*pekerjaan_indicator/to_sparse_input/valuesGatherNdfeatures_pekerjaan3pekerjaan_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????2,
*pekerjaan_indicator/to_sparse_input/values?
/pekerjaan_indicator/to_sparse_input/dense_shapeShapefeatures_pekerjaan*
T0	*
_output_shapes
:*
out_type0	21
/pekerjaan_indicator/to_sparse_input/dense_shape?
1pekerjaan_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2>pekerjaan_indicator_none_lookup_lookuptablefindv2_table_handle3pekerjaan_indicator/to_sparse_input/values:output:0?pekerjaan_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????23
1pekerjaan_indicator/None_Lookup/LookupTableFindV2?
/pekerjaan_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????21
/pekerjaan_indicator/SparseToDense/default_value?
!pekerjaan_indicator/SparseToDenseSparseToDense3pekerjaan_indicator/to_sparse_input/indices:index:08pekerjaan_indicator/to_sparse_input/dense_shape:output:0:pekerjaan_indicator/None_Lookup/LookupTableFindV2:values:08pekerjaan_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????2#
!pekerjaan_indicator/SparseToDense?
!pekerjaan_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!pekerjaan_indicator/one_hot/Const?
#pekerjaan_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2%
#pekerjaan_indicator/one_hot/Const_1?
!pekerjaan_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2#
!pekerjaan_indicator/one_hot/depth?
pekerjaan_indicator/one_hotOneHot)pekerjaan_indicator/SparseToDense:dense:0*pekerjaan_indicator/one_hot/depth:output:0*pekerjaan_indicator/one_hot/Const:output:0,pekerjaan_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????2
pekerjaan_indicator/one_hot?
)pekerjaan_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)pekerjaan_indicator/Sum/reduction_indices?
pekerjaan_indicator/SumSum$pekerjaan_indicator/one_hot:output:02pekerjaan_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
pekerjaan_indicator/Sum?
pekerjaan_indicator/ShapeShape pekerjaan_indicator/Sum:output:0*
T0*
_output_shapes
:2
pekerjaan_indicator/Shape?
'pekerjaan_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'pekerjaan_indicator/strided_slice/stack?
)pekerjaan_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)pekerjaan_indicator/strided_slice/stack_1?
)pekerjaan_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)pekerjaan_indicator/strided_slice/stack_2?
!pekerjaan_indicator/strided_sliceStridedSlice"pekerjaan_indicator/Shape:output:00pekerjaan_indicator/strided_slice/stack:output:02pekerjaan_indicator/strided_slice/stack_1:output:02pekerjaan_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!pekerjaan_indicator/strided_slice?
#pekerjaan_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#pekerjaan_indicator/Reshape/shape/1?
!pekerjaan_indicator/Reshape/shapePack*pekerjaan_indicator/strided_slice:output:0,pekerjaan_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!pekerjaan_indicator/Reshape/shape?
pekerjaan_indicator/ReshapeReshape pekerjaan_indicator/Sum:output:0*pekerjaan_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
pekerjaan_indicator/Reshape?
tanggungan/CastCastfeatures_tanggungan*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
tanggungan/Castg
tanggungan/ShapeShapetanggungan/Cast:y:0*
T0*
_output_shapes
:2
tanggungan/Shape?
tanggungan/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
tanggungan/strided_slice/stack?
 tanggungan/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 tanggungan/strided_slice/stack_1?
 tanggungan/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 tanggungan/strided_slice/stack_2?
tanggungan/strided_sliceStridedSlicetanggungan/Shape:output:0'tanggungan/strided_slice/stack:output:0)tanggungan/strided_slice/stack_1:output:0)tanggungan/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
tanggungan/strided_slicez
tanggungan/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
tanggungan/Reshape/shape/1?
tanggungan/Reshape/shapePack!tanggungan/strided_slice:output:0#tanggungan/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
tanggungan/Reshape/shape?
tanggungan/ReshapeReshapetanggungan/Cast:y:0!tanggungan/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
tanggungan/Reshapen
	umur/CastCastfeatures_umur*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
	umur/CastU

umur/ShapeShapeumur/Cast:y:0*
T0*
_output_shapes
:2

umur/Shape~
umur/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
umur/strided_slice/stack?
umur/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
umur/strided_slice/stack_1?
umur/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
umur/strided_slice/stack_2?
umur/strided_sliceStridedSliceumur/Shape:output:0!umur/strided_slice/stack:output:0#umur/strided_slice/stack_1:output:0#umur/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
umur/strided_slicen
umur/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
umur/Reshape/shape/1?
umur/Reshape/shapePackumur/strided_slice:output:0umur/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
umur/Reshape/shape?
umur/ReshapeReshapeumur/Cast:y:0umur/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
umur/Reshape?
umur_bucketized/Bucketize	Bucketizeumur/Cast:y:0*
T0*'
_output_shapes
:?????????*.

boundaries 
"  ?A  B  ,B  PB  tB  ?B  ?B2
umur_bucketized/Bucketize?
umur_bucketized/CastCast"umur_bucketized/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:?????????2
umur_bucketized/Cast?
umur_bucketized/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
umur_bucketized/one_hot/Const?
umur_bucketized/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2!
umur_bucketized/one_hot/Const_1?
umur_bucketized/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2
umur_bucketized/one_hot/depth?
umur_bucketized/one_hotOneHotumur_bucketized/Cast:y:0&umur_bucketized/one_hot/depth:output:0&umur_bucketized/one_hot/Const:output:0(umur_bucketized/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????2
umur_bucketized/one_hot~
umur_bucketized/ShapeShape umur_bucketized/one_hot:output:0*
T0*
_output_shapes
:2
umur_bucketized/Shape?
#umur_bucketized/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#umur_bucketized/strided_slice/stack?
%umur_bucketized/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%umur_bucketized/strided_slice/stack_1?
%umur_bucketized/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%umur_bucketized/strided_slice/stack_2?
umur_bucketized/strided_sliceStridedSliceumur_bucketized/Shape:output:0,umur_bucketized/strided_slice/stack:output:0.umur_bucketized/strided_slice/stack_1:output:0.umur_bucketized/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
umur_bucketized/strided_slice?
umur_bucketized/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
umur_bucketized/Reshape/shape/1?
umur_bucketized/Reshape/shapePack&umur_bucketized/strided_slice:output:0(umur_bucketized/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
umur_bucketized/Reshape/shape?
umur_bucketized/ReshapeReshape umur_bucketized/one_hot:output:0&umur_bucketized/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
umur_bucketized/Reshapee
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2gaji/Reshape:output:0pekerjaan/Reshape:output:0$pekerjaan_indicator/Reshape:output:0tanggungan/Reshape:output:0umur/Reshape:output:0 umur_bucketized/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
concat?
IdentityIdentityconcat:output:02^pekerjaan_indicator/None_Lookup/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:?????????:?????????:?????????:?????????: : 2f
1pekerjaan_indicator/None_Lookup/LookupTableFindV21pekerjaan_indicator/None_Lookup/LookupTableFindV2:V R
'
_output_shapes
:?????????
'
_user_specified_namefeatures/gaji:[W
'
_output_shapes
:?????????
,
_user_specified_namefeatures/pekerjaan:\X
'
_output_shapes
:?????????
-
_user_specified_namefeatures/tanggungan:VR
'
_output_shapes
:?????????
'
_user_specified_namefeatures/umur:

_output_shapes
: 
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_5822
gaji
	pekerjaan	

tanggungan	
umur	
dense_features_3_5801
dense_features_3_5803	

dense_5806:@

dense_5808:@
dense_1_5811:@@
dense_1_5813:@
dense_2_5816:@
dense_2_5818:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?(dense_features_3/StatefulPartitionedCall}
dense_features_3/CastCastgaji*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_features_3/Cast?
(dense_features_3/StatefulPartitionedCallStatefulPartitionedCalldense_features_3/Cast:y:0	pekerjaan
tanggunganumurdense_features_3_5801dense_features_3_5803*
Tin

2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_3_layer_call_and_return_conditional_losses_56592*
(dense_features_3/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall1dense_features_3/StatefulPartitionedCall:output:0
dense_5806
dense_5808*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_54682
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_5811dense_1_5813*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_54852!
dense_1/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_5816dense_2_5818*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_55022!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall)^dense_features_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2T
(dense_features_3/StatefulPartitionedCall(dense_features_3/StatefulPartitionedCall:M I
'
_output_shapes
:?????????

_user_specified_namegaji:RN
'
_output_shapes
:?????????
#
_user_specified_name	pekerjaan:SO
'
_output_shapes
:?????????
$
_user_specified_name
tanggungan:MI
'
_output_shapes
:?????????

_user_specified_nameumur:

_output_shapes
: 
?
?
)__inference_sequential_layer_call_fn_6088
inputs_gaji
inputs_pekerjaan	
inputs_tanggungan	
inputs_umur	
unknown
	unknown_0	
	unknown_1:@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_gajiinputs_pekerjaaninputs_tanggunganinputs_umurunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_55092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:?????????
%
_user_specified_nameinputs/gaji:YU
'
_output_shapes
:?????????
*
_user_specified_nameinputs/pekerjaan:ZV
'
_output_shapes
:?????????
+
_user_specified_nameinputs/tanggungan:TP
'
_output_shapes
:?????????
%
_user_specified_nameinputs/umur:

_output_shapes
: 
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_5509

inputs
inputs_1	
inputs_2	
inputs_3	
dense_features_3_5452
dense_features_3_5454	

dense_5469:@

dense_5471:@
dense_1_5486:@@
dense_1_5488:@
dense_2_5503:@
dense_2_5505:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?(dense_features_3/StatefulPartitionedCall
dense_features_3/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_features_3/Cast?
(dense_features_3/StatefulPartitionedCallStatefulPartitionedCalldense_features_3/Cast:y:0inputs_1inputs_2inputs_3dense_features_3_5452dense_features_3_5454*
Tin

2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_3_layer_call_and_return_conditional_losses_54512*
(dense_features_3/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall1dense_features_3/StatefulPartitionedCall:output:0
dense_5469
dense_5471*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_54682
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_5486dense_1_5488*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_54852!
dense_1/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_5503dense_2_5505*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_55022!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall)^dense_features_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2T
(dense_features_3/StatefulPartitionedCall(dense_features_3/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?

?
A__inference_dense_1_layer_call_and_return_conditional_losses_6333

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_5794
gaji
	pekerjaan	

tanggungan	
umur	
dense_features_3_5773
dense_features_3_5775	

dense_5778:@

dense_5780:@
dense_1_5783:@@
dense_1_5785:@
dense_2_5788:@
dense_2_5790:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?(dense_features_3/StatefulPartitionedCall}
dense_features_3/CastCastgaji*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_features_3/Cast?
(dense_features_3/StatefulPartitionedCallStatefulPartitionedCalldense_features_3/Cast:y:0	pekerjaan
tanggunganumurdense_features_3_5773dense_features_3_5775*
Tin

2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_3_layer_call_and_return_conditional_losses_54512*
(dense_features_3/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall1dense_features_3/StatefulPartitionedCall:output:0
dense_5778
dense_5780*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_54682
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_5783dense_1_5785*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_54852!
dense_1/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_5788dense_2_5790*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_55022!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall)^dense_features_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2T
(dense_features_3/StatefulPartitionedCall(dense_features_3/StatefulPartitionedCall:M I
'
_output_shapes
:?????????

_user_specified_namegaji:RN
'
_output_shapes
:?????????
#
_user_specified_name	pekerjaan:SO
'
_output_shapes
:?????????
$
_user_specified_name
tanggungan:MI
'
_output_shapes
:?????????

_user_specified_nameumur:

_output_shapes
: 
?
?
$__inference_dense_layer_call_fn_6322

inputs
unknown:@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_54682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
D__inference_sequential_layer_call_and_return_conditional_losses_6064
inputs_gaji
inputs_pekerjaan	
inputs_tanggungan	
inputs_umur	S
Odense_features_3_pekerjaan_indicator_none_lookup_lookuptablefindv2_table_handleT
Pdense_features_3_pekerjaan_indicator_none_lookup_lookuptablefindv2_default_value	6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@@5
'dense_1_biasadd_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@5
'dense_2_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?Bdense_features_3/pekerjaan_indicator/None_Lookup/LookupTableFindV2?
dense_features_3/CastCastinputs_gaji*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_features_3/Cast?
dense_features_3/gaji/ShapeShapedense_features_3/Cast:y:0*
T0*
_output_shapes
:2
dense_features_3/gaji/Shape?
)dense_features_3/gaji/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)dense_features_3/gaji/strided_slice/stack?
+dense_features_3/gaji/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+dense_features_3/gaji/strided_slice/stack_1?
+dense_features_3/gaji/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+dense_features_3/gaji/strided_slice/stack_2?
#dense_features_3/gaji/strided_sliceStridedSlice$dense_features_3/gaji/Shape:output:02dense_features_3/gaji/strided_slice/stack:output:04dense_features_3/gaji/strided_slice/stack_1:output:04dense_features_3/gaji/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#dense_features_3/gaji/strided_slice?
%dense_features_3/gaji/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%dense_features_3/gaji/Reshape/shape/1?
#dense_features_3/gaji/Reshape/shapePack,dense_features_3/gaji/strided_slice:output:0.dense_features_3/gaji/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2%
#dense_features_3/gaji/Reshape/shape?
dense_features_3/gaji/ReshapeReshapedense_features_3/Cast:y:0,dense_features_3/gaji/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
dense_features_3/gaji/Reshape?
dense_features_3/pekerjaan/CastCastinputs_pekerjaan*

DstT0*

SrcT0	*'
_output_shapes
:?????????2!
dense_features_3/pekerjaan/Cast?
 dense_features_3/pekerjaan/ShapeShape#dense_features_3/pekerjaan/Cast:y:0*
T0*
_output_shapes
:2"
 dense_features_3/pekerjaan/Shape?
.dense_features_3/pekerjaan/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.dense_features_3/pekerjaan/strided_slice/stack?
0dense_features_3/pekerjaan/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0dense_features_3/pekerjaan/strided_slice/stack_1?
0dense_features_3/pekerjaan/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0dense_features_3/pekerjaan/strided_slice/stack_2?
(dense_features_3/pekerjaan/strided_sliceStridedSlice)dense_features_3/pekerjaan/Shape:output:07dense_features_3/pekerjaan/strided_slice/stack:output:09dense_features_3/pekerjaan/strided_slice/stack_1:output:09dense_features_3/pekerjaan/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(dense_features_3/pekerjaan/strided_slice?
*dense_features_3/pekerjaan/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*dense_features_3/pekerjaan/Reshape/shape/1?
(dense_features_3/pekerjaan/Reshape/shapePack1dense_features_3/pekerjaan/strided_slice:output:03dense_features_3/pekerjaan/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2*
(dense_features_3/pekerjaan/Reshape/shape?
"dense_features_3/pekerjaan/ReshapeReshape#dense_features_3/pekerjaan/Cast:y:01dense_features_3/pekerjaan/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2$
"dense_features_3/pekerjaan/Reshape?
Cdense_features_3/pekerjaan_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????2E
Cdense_features_3/pekerjaan_indicator/to_sparse_input/ignore_value/x?
Adense_features_3/pekerjaan_indicator/to_sparse_input/ignore_valueCastLdense_features_3/pekerjaan_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2C
Adense_features_3/pekerjaan_indicator/to_sparse_input/ignore_value?
=dense_features_3/pekerjaan_indicator/to_sparse_input/NotEqualNotEqualinputs_pekerjaanEdense_features_3/pekerjaan_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:?????????2?
=dense_features_3/pekerjaan_indicator/to_sparse_input/NotEqual?
<dense_features_3/pekerjaan_indicator/to_sparse_input/indicesWhereAdense_features_3/pekerjaan_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2>
<dense_features_3/pekerjaan_indicator/to_sparse_input/indices?
;dense_features_3/pekerjaan_indicator/to_sparse_input/valuesGatherNdinputs_pekerjaanDdense_features_3/pekerjaan_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????2=
;dense_features_3/pekerjaan_indicator/to_sparse_input/values?
@dense_features_3/pekerjaan_indicator/to_sparse_input/dense_shapeShapeinputs_pekerjaan*
T0	*
_output_shapes
:*
out_type0	2B
@dense_features_3/pekerjaan_indicator/to_sparse_input/dense_shape?
Bdense_features_3/pekerjaan_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Odense_features_3_pekerjaan_indicator_none_lookup_lookuptablefindv2_table_handleDdense_features_3/pekerjaan_indicator/to_sparse_input/values:output:0Pdense_features_3_pekerjaan_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????2D
Bdense_features_3/pekerjaan_indicator/None_Lookup/LookupTableFindV2?
@dense_features_3/pekerjaan_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2B
@dense_features_3/pekerjaan_indicator/SparseToDense/default_value?
2dense_features_3/pekerjaan_indicator/SparseToDenseSparseToDenseDdense_features_3/pekerjaan_indicator/to_sparse_input/indices:index:0Idense_features_3/pekerjaan_indicator/to_sparse_input/dense_shape:output:0Kdense_features_3/pekerjaan_indicator/None_Lookup/LookupTableFindV2:values:0Idense_features_3/pekerjaan_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????24
2dense_features_3/pekerjaan_indicator/SparseToDense?
2dense_features_3/pekerjaan_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2dense_features_3/pekerjaan_indicator/one_hot/Const?
4dense_features_3/pekerjaan_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    26
4dense_features_3/pekerjaan_indicator/one_hot/Const_1?
2dense_features_3/pekerjaan_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :24
2dense_features_3/pekerjaan_indicator/one_hot/depth?
,dense_features_3/pekerjaan_indicator/one_hotOneHot:dense_features_3/pekerjaan_indicator/SparseToDense:dense:0;dense_features_3/pekerjaan_indicator/one_hot/depth:output:0;dense_features_3/pekerjaan_indicator/one_hot/Const:output:0=dense_features_3/pekerjaan_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????2.
,dense_features_3/pekerjaan_indicator/one_hot?
:dense_features_3/pekerjaan_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????2<
:dense_features_3/pekerjaan_indicator/Sum/reduction_indices?
(dense_features_3/pekerjaan_indicator/SumSum5dense_features_3/pekerjaan_indicator/one_hot:output:0Cdense_features_3/pekerjaan_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2*
(dense_features_3/pekerjaan_indicator/Sum?
*dense_features_3/pekerjaan_indicator/ShapeShape1dense_features_3/pekerjaan_indicator/Sum:output:0*
T0*
_output_shapes
:2,
*dense_features_3/pekerjaan_indicator/Shape?
8dense_features_3/pekerjaan_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8dense_features_3/pekerjaan_indicator/strided_slice/stack?
:dense_features_3/pekerjaan_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:dense_features_3/pekerjaan_indicator/strided_slice/stack_1?
:dense_features_3/pekerjaan_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:dense_features_3/pekerjaan_indicator/strided_slice/stack_2?
2dense_features_3/pekerjaan_indicator/strided_sliceStridedSlice3dense_features_3/pekerjaan_indicator/Shape:output:0Adense_features_3/pekerjaan_indicator/strided_slice/stack:output:0Cdense_features_3/pekerjaan_indicator/strided_slice/stack_1:output:0Cdense_features_3/pekerjaan_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2dense_features_3/pekerjaan_indicator/strided_slice?
4dense_features_3/pekerjaan_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :26
4dense_features_3/pekerjaan_indicator/Reshape/shape/1?
2dense_features_3/pekerjaan_indicator/Reshape/shapePack;dense_features_3/pekerjaan_indicator/strided_slice:output:0=dense_features_3/pekerjaan_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:24
2dense_features_3/pekerjaan_indicator/Reshape/shape?
,dense_features_3/pekerjaan_indicator/ReshapeReshape1dense_features_3/pekerjaan_indicator/Sum:output:0;dense_features_3/pekerjaan_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2.
,dense_features_3/pekerjaan_indicator/Reshape?
 dense_features_3/tanggungan/CastCastinputs_tanggungan*

DstT0*

SrcT0	*'
_output_shapes
:?????????2"
 dense_features_3/tanggungan/Cast?
!dense_features_3/tanggungan/ShapeShape$dense_features_3/tanggungan/Cast:y:0*
T0*
_output_shapes
:2#
!dense_features_3/tanggungan/Shape?
/dense_features_3/tanggungan/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_features_3/tanggungan/strided_slice/stack?
1dense_features_3/tanggungan/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_features_3/tanggungan/strided_slice/stack_1?
1dense_features_3/tanggungan/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_features_3/tanggungan/strided_slice/stack_2?
)dense_features_3/tanggungan/strided_sliceStridedSlice*dense_features_3/tanggungan/Shape:output:08dense_features_3/tanggungan/strided_slice/stack:output:0:dense_features_3/tanggungan/strided_slice/stack_1:output:0:dense_features_3/tanggungan/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_features_3/tanggungan/strided_slice?
+dense_features_3/tanggungan/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2-
+dense_features_3/tanggungan/Reshape/shape/1?
)dense_features_3/tanggungan/Reshape/shapePack2dense_features_3/tanggungan/strided_slice:output:04dense_features_3/tanggungan/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2+
)dense_features_3/tanggungan/Reshape/shape?
#dense_features_3/tanggungan/ReshapeReshape$dense_features_3/tanggungan/Cast:y:02dense_features_3/tanggungan/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2%
#dense_features_3/tanggungan/Reshape?
dense_features_3/umur/CastCastinputs_umur*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
dense_features_3/umur/Cast?
dense_features_3/umur/ShapeShapedense_features_3/umur/Cast:y:0*
T0*
_output_shapes
:2
dense_features_3/umur/Shape?
)dense_features_3/umur/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)dense_features_3/umur/strided_slice/stack?
+dense_features_3/umur/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+dense_features_3/umur/strided_slice/stack_1?
+dense_features_3/umur/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+dense_features_3/umur/strided_slice/stack_2?
#dense_features_3/umur/strided_sliceStridedSlice$dense_features_3/umur/Shape:output:02dense_features_3/umur/strided_slice/stack:output:04dense_features_3/umur/strided_slice/stack_1:output:04dense_features_3/umur/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#dense_features_3/umur/strided_slice?
%dense_features_3/umur/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%dense_features_3/umur/Reshape/shape/1?
#dense_features_3/umur/Reshape/shapePack,dense_features_3/umur/strided_slice:output:0.dense_features_3/umur/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2%
#dense_features_3/umur/Reshape/shape?
dense_features_3/umur/ReshapeReshapedense_features_3/umur/Cast:y:0,dense_features_3/umur/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
dense_features_3/umur/Reshape?
*dense_features_3/umur_bucketized/Bucketize	Bucketizedense_features_3/umur/Cast:y:0*
T0*'
_output_shapes
:?????????*.

boundaries 
"  ?A  B  ,B  PB  tB  ?B  ?B2,
*dense_features_3/umur_bucketized/Bucketize?
%dense_features_3/umur_bucketized/CastCast3dense_features_3/umur_bucketized/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:?????????2'
%dense_features_3/umur_bucketized/Cast?
.dense_features_3/umur_bucketized/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.dense_features_3/umur_bucketized/one_hot/Const?
0dense_features_3/umur_bucketized/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    22
0dense_features_3/umur_bucketized/one_hot/Const_1?
.dense_features_3/umur_bucketized/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :20
.dense_features_3/umur_bucketized/one_hot/depth?
(dense_features_3/umur_bucketized/one_hotOneHot)dense_features_3/umur_bucketized/Cast:y:07dense_features_3/umur_bucketized/one_hot/depth:output:07dense_features_3/umur_bucketized/one_hot/Const:output:09dense_features_3/umur_bucketized/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????2*
(dense_features_3/umur_bucketized/one_hot?
&dense_features_3/umur_bucketized/ShapeShape1dense_features_3/umur_bucketized/one_hot:output:0*
T0*
_output_shapes
:2(
&dense_features_3/umur_bucketized/Shape?
4dense_features_3/umur_bucketized/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4dense_features_3/umur_bucketized/strided_slice/stack?
6dense_features_3/umur_bucketized/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6dense_features_3/umur_bucketized/strided_slice/stack_1?
6dense_features_3/umur_bucketized/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6dense_features_3/umur_bucketized/strided_slice/stack_2?
.dense_features_3/umur_bucketized/strided_sliceStridedSlice/dense_features_3/umur_bucketized/Shape:output:0=dense_features_3/umur_bucketized/strided_slice/stack:output:0?dense_features_3/umur_bucketized/strided_slice/stack_1:output:0?dense_features_3/umur_bucketized/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.dense_features_3/umur_bucketized/strided_slice?
0dense_features_3/umur_bucketized/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
0dense_features_3/umur_bucketized/Reshape/shape/1?
.dense_features_3/umur_bucketized/Reshape/shapePack7dense_features_3/umur_bucketized/strided_slice:output:09dense_features_3/umur_bucketized/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:20
.dense_features_3/umur_bucketized/Reshape/shape?
(dense_features_3/umur_bucketized/ReshapeReshape1dense_features_3/umur_bucketized/one_hot:output:07dense_features_3/umur_bucketized/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2*
(dense_features_3/umur_bucketized/Reshape?
dense_features_3/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
dense_features_3/concat/axis?
dense_features_3/concatConcatV2&dense_features_3/gaji/Reshape:output:0+dense_features_3/pekerjaan/Reshape:output:05dense_features_3/pekerjaan_indicator/Reshape:output:0,dense_features_3/tanggungan/Reshape:output:0&dense_features_3/umur/Reshape:output:01dense_features_3/umur_bucketized/Reshape:output:0%dense_features_3/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
dense_features_3/concat?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMul dense_features_3/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2

dense/Relu?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/BiasAddp
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_1/Relu?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_2/Sigmoid?
IdentityIdentitydense_2/Sigmoid:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOpC^dense_features_3/pekerjaan_indicator/None_Lookup/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2?
Bdense_features_3/pekerjaan_indicator/None_Lookup/LookupTableFindV2Bdense_features_3/pekerjaan_indicator/None_Lookup/LookupTableFindV2:T P
'
_output_shapes
:?????????
%
_user_specified_nameinputs/gaji:YU
'
_output_shapes
:?????????
*
_user_specified_nameinputs/pekerjaan:ZV
'
_output_shapes
:?????????
+
_user_specified_nameinputs/tanggungan:TP
'
_output_shapes
:?????????
%
_user_specified_nameinputs/umur:

_output_shapes
: 
?
?
__inference__initializer_63752
.table_init279_lookuptableimportv2_table_handle*
&table_init279_lookuptableimportv2_keys	,
(table_init279_lookuptableimportv2_values	
identity??!table_init279/LookupTableImportV2?
!table_init279/LookupTableImportV2LookupTableImportV2.table_init279_lookuptableimportv2_table_handle&table_init279_lookuptableimportv2_keys(table_init279_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 2#
!table_init279/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constu
IdentityIdentityConst:output:0"^table_init279/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init279/LookupTableImportV2!table_init279/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?

?
A__inference_dense_1_layer_call_and_return_conditional_losses_5485

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
"__inference_signature_wrapper_5854
gaji
	pekerjaan	

tanggungan	
umur	
unknown
	unknown_0	
	unknown_1:@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallgaji	pekerjaan
tanggunganumurunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_53542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:?????????

_user_specified_namegaji:RN
'
_output_shapes
:?????????
#
_user_specified_name	pekerjaan:SO
'
_output_shapes
:?????????
$
_user_specified_name
tanggungan:MI
'
_output_shapes
:?????????

_user_specified_nameumur:

_output_shapes
: 
?
?
)__inference_sequential_layer_call_fn_5528
gaji
	pekerjaan	

tanggungan	
umur	
unknown
	unknown_0	
	unknown_1:@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallgaji	pekerjaan
tanggunganumurunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_55092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:?????????

_user_specified_namegaji:RN
'
_output_shapes
:?????????
#
_user_specified_name	pekerjaan:SO
'
_output_shapes
:?????????
$
_user_specified_name
tanggungan:MI
'
_output_shapes
:?????????

_user_specified_nameumur:

_output_shapes
: 
??
?
__inference__traced_save_6500
file_prefix6
2savev2_sequential_dense_kernel_read_readvariableop4
0savev2_sequential_dense_bias_read_readvariableop8
4savev2_sequential_dense_1_kernel_read_readvariableop6
2savev2_sequential_dense_1_bias_read_readvariableop8
4savev2_sequential_dense_2_kernel_read_readvariableop6
2savev2_sequential_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop=
9savev2_adam_sequential_dense_kernel_m_read_readvariableop;
7savev2_adam_sequential_dense_bias_m_read_readvariableop?
;savev2_adam_sequential_dense_1_kernel_m_read_readvariableop=
9savev2_adam_sequential_dense_1_bias_m_read_readvariableop?
;savev2_adam_sequential_dense_2_kernel_m_read_readvariableop=
9savev2_adam_sequential_dense_2_bias_m_read_readvariableop=
9savev2_adam_sequential_dense_kernel_v_read_readvariableop;
7savev2_adam_sequential_dense_bias_v_read_readvariableop?
;savev2_adam_sequential_dense_1_kernel_v_read_readvariableop=
9savev2_adam_sequential_dense_1_bias_v_read_readvariableop?
;savev2_adam_sequential_dense_2_kernel_v_read_readvariableop=
9savev2_adam_sequential_dense_2_bias_v_read_readvariableop
savev2_const_3

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_sequential_dense_kernel_read_readvariableop0savev2_sequential_dense_bias_read_readvariableop4savev2_sequential_dense_1_kernel_read_readvariableop2savev2_sequential_dense_1_bias_read_readvariableop4savev2_sequential_dense_2_kernel_read_readvariableop2savev2_sequential_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop9savev2_adam_sequential_dense_kernel_m_read_readvariableop7savev2_adam_sequential_dense_bias_m_read_readvariableop;savev2_adam_sequential_dense_1_kernel_m_read_readvariableop9savev2_adam_sequential_dense_1_bias_m_read_readvariableop;savev2_adam_sequential_dense_2_kernel_m_read_readvariableop9savev2_adam_sequential_dense_2_bias_m_read_readvariableop9savev2_adam_sequential_dense_kernel_v_read_readvariableop7savev2_adam_sequential_dense_bias_v_read_readvariableop;savev2_adam_sequential_dense_1_kernel_v_read_readvariableop9savev2_adam_sequential_dense_1_bias_v_read_readvariableop;savev2_adam_sequential_dense_2_kernel_v_read_readvariableop9savev2_adam_sequential_dense_2_bias_v_read_readvariableopsavev2_const_3"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :@:@:@@:@:@:: : : : : : : : : :@:@:@@:@:@::@:@:@@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
5
gaji-
serving_default_gaji:0?????????
?
	pekerjaan2
serving_default_pekerjaan:0	?????????
A

tanggungan3
serving_default_tanggungan:0	?????????
5
umur-
serving_default_umur:0	?????????>
output_12
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:??
?B
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
_build_input_shape
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
\_default_save_signature
*]&call_and_return_all_conditional_losses
^__call__"??
_tf_keras_sequential??{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "DenseFeatures", "config": {"name": "dense_features_3", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "NumericColumn", "config": {"key": "gaji", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "pekerjaan", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "IndicatorColumn", "config": {"categorical_column": {"class_name": "VocabularyListCategoricalColumn", "config": {"key": "pekerjaan", "vocabulary_list": {"class_name": "__tuple__", "items": [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]}, "dtype": "int64", "default_value": -1, "num_oov_buckets": 0}}}}, {"class_name": "NumericColumn", "config": {"key": "tanggungan", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "umur", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "BucketizedColumn", "config": {"source_column": {"class_name": "NumericColumn", "config": {"key": "umur", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, "boundaries": {"class_name": "__tuple__", "items": [25, 34, 43, 52, 61, 70, 79]}}}], "partitioner": null}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}], "build_input_shape": {"umur": {"class_name": "__tuple__", "items": [null, 1]}, "gaji": {"class_name": "__tuple__", "items": [null, 1]}, "tanggungan": {"class_name": "__tuple__", "items": [null, 1]}, "pekerjaan": {"class_name": "__tuple__", "items": [null, 1]}}}, "shared_object_id": 10, "build_input_shape": {"umur": {"class_name": "__tuple__", "items": [null, 1]}, "gaji": {"class_name": "__tuple__", "items": [null, 1]}, "tanggungan": {"class_name": "__tuple__", "items": [null, 1]}, "pekerjaan": {"class_name": "__tuple__", "items": [null, 1]}}, "is_graph_network": false, "save_spec": {"umur": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int64", "umur"]}, "gaji": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "float64", "gaji"]}, "tanggungan": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int64", "tanggungan"]}, "pekerjaan": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int64", "pekerjaan"]}}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "DenseFeatures", "config": {"name": "dense_features_3", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "NumericColumn", "config": {"key": "gaji", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "pekerjaan", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "IndicatorColumn", "config": {"categorical_column": {"class_name": "VocabularyListCategoricalColumn", "config": {"key": "pekerjaan", "vocabulary_list": {"class_name": "__tuple__", "items": [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]}, "dtype": "int64", "default_value": -1, "num_oov_buckets": 0}}}}, {"class_name": "NumericColumn", "config": {"key": "tanggungan", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "umur", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "BucketizedColumn", "config": {"source_column": {"class_name": "NumericColumn", "config": {"key": "umur", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, "boundaries": {"class_name": "__tuple__", "items": [25, 34, 43, 52, 61, 70, 79]}}}], "partitioner": null}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9}], "build_input_shape": {"umur": {"class_name": "__tuple__", "items": [null, 1]}, "gaji": {"class_name": "__tuple__", "items": [null, 1]}, "tanggungan": {"class_name": "__tuple__", "items": [null, 1]}, "pekerjaan": {"class_name": "__tuple__", "items": [null, 1]}}}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 11}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
_feature_columns

_resources
	variables
trainable_variables
regularization_losses
	keras_api
*_&call_and_return_all_conditional_losses
`__call__"?
_tf_keras_layer?{"name": "dense_features_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "DenseFeatures", "config": {"name": "dense_features_3", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "NumericColumn", "config": {"key": "gaji", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "pekerjaan", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "IndicatorColumn", "config": {"categorical_column": {"class_name": "VocabularyListCategoricalColumn", "config": {"key": "pekerjaan", "vocabulary_list": {"class_name": "__tuple__", "items": [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]}, "dtype": "int64", "default_value": -1, "num_oov_buckets": 0}}}}, {"class_name": "NumericColumn", "config": {"key": "tanggungan", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "umur", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "BucketizedColumn", "config": {"source_column": {"class_name": "NumericColumn", "config": {"key": "umur", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, "boundaries": {"class_name": "__tuple__", "items": [25, 34, 43, 52, 61, 70, 79]}}}], "partitioner": null}, "shared_object_id": 0, "build_input_shape": {"umur": {"class_name": "TensorShape", "items": [null, 1]}, "gaji": {"class_name": "TensorShape", "items": [null, 1]}, "tanggungan": {"class_name": "TensorShape", "items": [null, 1]}, "pekerjaan": {"class_name": "TensorShape", "items": [null, 1]}}, "_is_feature_layer": true}
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*a&call_and_return_all_conditional_losses
b__call__"?
_tf_keras_layer?{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 23}}, "shared_object_id": 12}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 23]}}
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*c&call_and_return_all_conditional_losses
d__call__"?
_tf_keras_layer?{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 13}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
*e&call_and_return_all_conditional_losses
f__call__"?
_tf_keras_layer?{"name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?
$iter

%beta_1

&beta_2
	'decay
(learning_ratemPmQmRmSmTmUvVvWvXvYvZv["
	optimizer
 "
trackable_dict_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
?

)layers
	variables
*layer_regularization_losses
+layer_metrics
trainable_variables
	regularization_losses
,metrics
-non_trainable_variables
^__call__
\_default_save_signature
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
,
gserving_default"
signature_map
 "
trackable_list_wrapper
-
.	pekerjaan"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
/non_trainable_variables
	variables
0layer_metrics
1layer_regularization_losses
trainable_variables
regularization_losses
2metrics

3layers
`__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
):'@2sequential/dense/kernel
#:!@2sequential/dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
4non_trainable_variables
	variables
5layer_metrics
6layer_regularization_losses
trainable_variables
regularization_losses
7metrics

8layers
b__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
+:)@@2sequential/dense_1/kernel
%:#@2sequential/dense_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
9non_trainable_variables
	variables
:layer_metrics
;layer_regularization_losses
trainable_variables
regularization_losses
<metrics

=layers
d__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
+:)@2sequential/dense_2/kernel
%:#2sequential/dense_2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
>non_trainable_variables
 	variables
?layer_metrics
@layer_regularization_losses
!trainable_variables
"regularization_losses
Ametrics

Blayers
f__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
4
Epekerjaan_lookup"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	Ftotal
	Gcount
H	variables
I	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 15}
?
	Jtotal
	Kcount
L
_fn_kwargs
M	variables
N	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 11}
R
O_initializer
h_create_resource
i_initialize
j_destroy_resourceR 
:  (2total
:  (2count
.
F0
G1"
trackable_list_wrapper
-
H	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
J0
K1"
trackable_list_wrapper
-
M	variables"
_generic_user_object
"
_generic_user_object
.:,@2Adam/sequential/dense/kernel/m
(:&@2Adam/sequential/dense/bias/m
0:.@@2 Adam/sequential/dense_1/kernel/m
*:(@2Adam/sequential/dense_1/bias/m
0:.@2 Adam/sequential/dense_2/kernel/m
*:(2Adam/sequential/dense_2/bias/m
.:,@2Adam/sequential/dense/kernel/v
(:&@2Adam/sequential/dense/bias/v
0:.@@2 Adam/sequential/dense_1/kernel/v
*:(@2Adam/sequential/dense_1/bias/v
0:.@2 Adam/sequential/dense_2/kernel/v
*:(2Adam/sequential/dense_2/bias/v
?2?
__inference__wrapped_model_5354?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *???
???
&
gaji?
gaji?????????
0
	pekerjaan#? 
	pekerjaan?????????	
2

tanggungan$?!

tanggungan?????????	
&
umur?
umur?????????	
?2?
D__inference_sequential_layer_call_and_return_conditional_losses_5959
D__inference_sequential_layer_call_and_return_conditional_losses_6064
D__inference_sequential_layer_call_and_return_conditional_losses_5794
D__inference_sequential_layer_call_and_return_conditional_losses_5822?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_sequential_layer_call_fn_5528
)__inference_sequential_layer_call_fn_6088
)__inference_sequential_layer_call_fn_6112
)__inference_sequential_layer_call_fn_5766?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_dense_features_3_layer_call_and_return_conditional_losses_6195
J__inference_dense_features_3_layer_call_and_return_conditional_losses_6278?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_dense_features_3_layer_call_fn_6290
/__inference_dense_features_3_layer_call_fn_6302?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
?__inference_dense_layer_call_and_return_conditional_losses_6313?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_dense_layer_call_fn_6322?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_1_layer_call_and_return_conditional_losses_6333?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_1_layer_call_fn_6342?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_2_layer_call_and_return_conditional_losses_6353?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_2_layer_call_fn_6362?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
"__inference_signature_wrapper_5854gaji	pekerjaan
tanggunganumur"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference__creator_6367?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_6375?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_6380?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
	J
Const
J	
Const_1
J	
Const_25
__inference__creator_6367?

? 
? "? 7
__inference__destroyer_6380?

? 
? "? >
__inference__initializer_6375Elm?

? 
? "? ?
__inference__wrapped_model_5354?Ek???
???
???
&
gaji?
gaji?????????
0
	pekerjaan#? 
	pekerjaan?????????	
2

tanggungan$?!

tanggungan?????????	
&
umur?
umur?????????	
? "3?0
.
output_1"?
output_1??????????
A__inference_dense_1_layer_call_and_return_conditional_losses_6333\/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????@
? y
&__inference_dense_1_layer_call_fn_6342O/?,
%?"
 ?
inputs?????????@
? "??????????@?
A__inference_dense_2_layer_call_and_return_conditional_losses_6353\/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? y
&__inference_dense_2_layer_call_fn_6362O/?,
%?"
 ?
inputs?????????@
? "???????????
J__inference_dense_features_3_layer_call_and_return_conditional_losses_6195?Ek???
???
???
/
gaji'?$
features/gaji?????????
9
	pekerjaan,?)
features/pekerjaan?????????	
;

tanggungan-?*
features/tanggungan?????????	
/
umur'?$
features/umur?????????	

 
p 
? "%?"
?
0?????????
? ?
J__inference_dense_features_3_layer_call_and_return_conditional_losses_6278?Ek???
???
???
/
gaji'?$
features/gaji?????????
9
	pekerjaan,?)
features/pekerjaan?????????	
;

tanggungan-?*
features/tanggungan?????????	
/
umur'?$
features/umur?????????	

 
p
? "%?"
?
0?????????
? ?
/__inference_dense_features_3_layer_call_fn_6290?Ek???
???
???
/
gaji'?$
features/gaji?????????
9
	pekerjaan,?)
features/pekerjaan?????????	
;

tanggungan-?*
features/tanggungan?????????	
/
umur'?$
features/umur?????????	

 
p 
? "???????????
/__inference_dense_features_3_layer_call_fn_6302?Ek???
???
???
/
gaji'?$
features/gaji?????????
9
	pekerjaan,?)
features/pekerjaan?????????	
;

tanggungan-?*
features/tanggungan?????????	
/
umur'?$
features/umur?????????	

 
p
? "???????????
?__inference_dense_layer_call_and_return_conditional_losses_6313\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????@
? w
$__inference_dense_layer_call_fn_6322O/?,
%?"
 ?
inputs?????????
? "??????????@?
D__inference_sequential_layer_call_and_return_conditional_losses_5794?Ek???
???
???
&
gaji?
gaji?????????
0
	pekerjaan#? 
	pekerjaan?????????	
2

tanggungan$?!

tanggungan?????????	
&
umur?
umur?????????	
p 

 
? "%?"
?
0?????????
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_5822?Ek???
???
???
&
gaji?
gaji?????????
0
	pekerjaan#? 
	pekerjaan?????????	
2

tanggungan$?!

tanggungan?????????	
&
umur?
umur?????????	
p

 
? "%?"
?
0?????????
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_5959?Ek???
???
???
-
gaji%?"
inputs/gaji?????????
7
	pekerjaan*?'
inputs/pekerjaan?????????	
9

tanggungan+?(
inputs/tanggungan?????????	
-
umur%?"
inputs/umur?????????	
p 

 
? "%?"
?
0?????????
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_6064?Ek???
???
???
-
gaji%?"
inputs/gaji?????????
7
	pekerjaan*?'
inputs/pekerjaan?????????	
9

tanggungan+?(
inputs/tanggungan?????????	
-
umur%?"
inputs/umur?????????	
p

 
? "%?"
?
0?????????
? ?
)__inference_sequential_layer_call_fn_5528?Ek???
???
???
&
gaji?
gaji?????????
0
	pekerjaan#? 
	pekerjaan?????????	
2

tanggungan$?!

tanggungan?????????	
&
umur?
umur?????????	
p 

 
? "???????????
)__inference_sequential_layer_call_fn_5766?Ek???
???
???
&
gaji?
gaji?????????
0
	pekerjaan#? 
	pekerjaan?????????	
2

tanggungan$?!

tanggungan?????????	
&
umur?
umur?????????	
p

 
? "???????????
)__inference_sequential_layer_call_fn_6088?Ek???
???
???
-
gaji%?"
inputs/gaji?????????
7
	pekerjaan*?'
inputs/pekerjaan?????????	
9

tanggungan+?(
inputs/tanggungan?????????	
-
umur%?"
inputs/umur?????????	
p 

 
? "???????????
)__inference_sequential_layer_call_fn_6112?Ek???
???
???
-
gaji%?"
inputs/gaji?????????
7
	pekerjaan*?'
inputs/pekerjaan?????????	
9

tanggungan+?(
inputs/tanggungan?????????	
-
umur%?"
inputs/umur?????????	
p

 
? "???????????
"__inference_signature_wrapper_5854?Ek???
? 
???
&
gaji?
gaji?????????
0
	pekerjaan#? 
	pekerjaan?????????	
2

tanggungan$?!

tanggungan?????????	
&
umur?
umur?????????	"3?0
.
output_1"?
output_1?????????