       �K"	  �Z���Abrain.Event:2��l[�     �';J	玩Z���A"��
n
InputData/XPlaceholder*
dtype0*'
_output_shapes
:���������9*
shape:���������9
�
3FullyConnected/W/Initializer/truncated_normal/shapeConst*
valueB"9      *#
_class
loc:@FullyConnected/W*
dtype0*
_output_shapes
:
�
2FullyConnected/W/Initializer/truncated_normal/meanConst*
valueB
 *    *#
_class
loc:@FullyConnected/W*
dtype0*
_output_shapes
: 
�
4FullyConnected/W/Initializer/truncated_normal/stddevConst*
valueB
 *
ף<*#
_class
loc:@FullyConnected/W*
dtype0*
_output_shapes
: 
�
=FullyConnected/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal3FullyConnected/W/Initializer/truncated_normal/shape*
dtype0*
_output_shapes

:9*

seed *
T0*#
_class
loc:@FullyConnected/W*
seed2 
�
1FullyConnected/W/Initializer/truncated_normal/mulMul=FullyConnected/W/Initializer/truncated_normal/TruncatedNormal4FullyConnected/W/Initializer/truncated_normal/stddev*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes

:9
�
-FullyConnected/W/Initializer/truncated_normalAdd1FullyConnected/W/Initializer/truncated_normal/mul2FullyConnected/W/Initializer/truncated_normal/mean*
_output_shapes

:9*
T0*#
_class
loc:@FullyConnected/W
�
FullyConnected/W
VariableV2*
	container *
shape
:9*
dtype0*
_output_shapes

:9*
shared_name *#
_class
loc:@FullyConnected/W
�
FullyConnected/W/AssignAssignFullyConnected/W-FullyConnected/W/Initializer/truncated_normal*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes

:9
�
FullyConnected/W/readIdentityFullyConnected/W*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes

:9
�
"FullyConnected/b/Initializer/ConstConst*
valueB*    *#
_class
loc:@FullyConnected/b*
dtype0*
_output_shapes
:
�
FullyConnected/b
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *#
_class
loc:@FullyConnected/b*
	container 
�
FullyConnected/b/AssignAssignFullyConnected/b"FullyConnected/b/Initializer/Const*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes
:
}
FullyConnected/b/readIdentityFullyConnected/b*
T0*#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
FullyConnected/MatMulMatMulInputData/XFullyConnected/W/read*'
_output_shapes
:���������*
transpose_a( *
transpose_b( *
T0
�
FullyConnected/BiasAddBiasAddFullyConnected/MatMulFullyConnected/b/read*
data_formatNHWC*'
_output_shapes
:���������*
T0
�
5FullyConnected_1/W/Initializer/truncated_normal/shapeConst*
valueB"      *%
_class
loc:@FullyConnected_1/W*
dtype0*
_output_shapes
:
�
4FullyConnected_1/W/Initializer/truncated_normal/meanConst*
valueB
 *    *%
_class
loc:@FullyConnected_1/W*
dtype0*
_output_shapes
: 
�
6FullyConnected_1/W/Initializer/truncated_normal/stddevConst*
valueB
 *
ף<*%
_class
loc:@FullyConnected_1/W*
dtype0*
_output_shapes
: 
�
?FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5FullyConnected_1/W/Initializer/truncated_normal/shape*
T0*%
_class
loc:@FullyConnected_1/W*
seed2 *
dtype0*
_output_shapes

:*

seed 
�
3FullyConnected_1/W/Initializer/truncated_normal/mulMul?FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormal6FullyConnected_1/W/Initializer/truncated_normal/stddev*
_output_shapes

:*
T0*%
_class
loc:@FullyConnected_1/W
�
/FullyConnected_1/W/Initializer/truncated_normalAdd3FullyConnected_1/W/Initializer/truncated_normal/mul4FullyConnected_1/W/Initializer/truncated_normal/mean*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
FullyConnected_1/W
VariableV2*%
_class
loc:@FullyConnected_1/W*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
�
FullyConnected_1/W/AssignAssignFullyConnected_1/W/FullyConnected_1/W/Initializer/truncated_normal*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W
�
FullyConnected_1/W/readIdentityFullyConnected_1/W*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
$FullyConnected_1/b/Initializer/ConstConst*
valueB*    *%
_class
loc:@FullyConnected_1/b*
dtype0*
_output_shapes
:
�
FullyConnected_1/b
VariableV2*
shared_name *%
_class
loc:@FullyConnected_1/b*
	container *
shape:*
dtype0*
_output_shapes
:
�
FullyConnected_1/b/AssignAssignFullyConnected_1/b$FullyConnected_1/b/Initializer/Const*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
�
FullyConnected_1/b/readIdentityFullyConnected_1/b*
_output_shapes
:*
T0*%
_class
loc:@FullyConnected_1/b
�
FullyConnected_1/MatMulMatMulFullyConnected/BiasAddFullyConnected_1/W/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
�
FullyConnected_1/BiasAddBiasAddFullyConnected_1/MatMulFullyConnected_1/b/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
�
5FullyConnected_2/W/Initializer/truncated_normal/shapeConst*
valueB"   
   *%
_class
loc:@FullyConnected_2/W*
dtype0*
_output_shapes
:
�
4FullyConnected_2/W/Initializer/truncated_normal/meanConst*
valueB
 *    *%
_class
loc:@FullyConnected_2/W*
dtype0*
_output_shapes
: 
�
6FullyConnected_2/W/Initializer/truncated_normal/stddevConst*
valueB
 *
ף<*%
_class
loc:@FullyConnected_2/W*
dtype0*
_output_shapes
: 
�
?FullyConnected_2/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5FullyConnected_2/W/Initializer/truncated_normal/shape*
dtype0*
_output_shapes

:
*

seed *
T0*%
_class
loc:@FullyConnected_2/W*
seed2 
�
3FullyConnected_2/W/Initializer/truncated_normal/mulMul?FullyConnected_2/W/Initializer/truncated_normal/TruncatedNormal6FullyConnected_2/W/Initializer/truncated_normal/stddev*
_output_shapes

:
*
T0*%
_class
loc:@FullyConnected_2/W
�
/FullyConnected_2/W/Initializer/truncated_normalAdd3FullyConnected_2/W/Initializer/truncated_normal/mul4FullyConnected_2/W/Initializer/truncated_normal/mean*
T0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:

�
FullyConnected_2/W
VariableV2*%
_class
loc:@FullyConnected_2/W*
	container *
shape
:
*
dtype0*
_output_shapes

:
*
shared_name 
�
FullyConnected_2/W/AssignAssignFullyConnected_2/W/FullyConnected_2/W/Initializer/truncated_normal*
validate_shape(*
_output_shapes

:
*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/W
�
FullyConnected_2/W/readIdentityFullyConnected_2/W*
T0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:

�
$FullyConnected_2/b/Initializer/ConstConst*
valueB
*    *%
_class
loc:@FullyConnected_2/b*
dtype0*
_output_shapes
:

�
FullyConnected_2/b
VariableV2*
shared_name *%
_class
loc:@FullyConnected_2/b*
	container *
shape:
*
dtype0*
_output_shapes
:

�
FullyConnected_2/b/AssignAssignFullyConnected_2/b$FullyConnected_2/b/Initializer/Const*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(*
_output_shapes
:
*
use_locking(
�
FullyConnected_2/b/readIdentityFullyConnected_2/b*
T0*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:

�
FullyConnected_2/MatMulMatMulFullyConnected_1/BiasAddFullyConnected_2/W/read*
T0*'
_output_shapes
:���������
*
transpose_a( *
transpose_b( 
�
FullyConnected_2/BiasAddBiasAddFullyConnected_2/MatMulFullyConnected_2/b/read*
T0*
data_formatNHWC*'
_output_shapes
:���������

o
FullyConnected_2/SoftmaxSoftmaxFullyConnected_2/BiasAdd*
T0*'
_output_shapes
:���������

p
TargetsData/YPlaceholder*
dtype0*'
_output_shapes
:���������
*
shape:���������

[
Accuracy/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
Accuracy/ArgMaxArgMaxFullyConnected_2/SoftmaxAccuracy/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:���������
]
Accuracy/ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
Accuracy/ArgMax_1ArgMaxTargetsData/YAccuracy/ArgMax_1/dimension*
T0*
output_type0	*#
_output_shapes
:���������*

Tidx0
i
Accuracy/EqualEqualAccuracy/ArgMaxAccuracy/ArgMax_1*
T0	*#
_output_shapes
:���������
b
Accuracy/CastCastAccuracy/Equal*#
_output_shapes
:���������*

DstT0*

SrcT0

X
Accuracy/ConstConst*
_output_shapes
:*
valueB: *
dtype0
r
Accuracy/MeanMeanAccuracy/CastAccuracy/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
d
"Crossentropy/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
Crossentropy/SumSumFullyConnected_2/Softmax"Crossentropy/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0*'
_output_shapes
:���������
}
Crossentropy/truedivRealDivFullyConnected_2/SoftmaxCrossentropy/Sum*'
_output_shapes
:���������
*
T0
X
Crossentropy/Cast/xConst*
dtype0*
_output_shapes
: *
valueB
 *���.
Z
Crossentropy/Cast_1/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
"Crossentropy/clip_by_value/MinimumMinimumCrossentropy/truedivCrossentropy/Cast_1/x*
T0*'
_output_shapes
:���������

�
Crossentropy/clip_by_valueMaximum"Crossentropy/clip_by_value/MinimumCrossentropy/Cast/x*
T0*'
_output_shapes
:���������

e
Crossentropy/LogLogCrossentropy/clip_by_value*
T0*'
_output_shapes
:���������

j
Crossentropy/mulMulTargetsData/YCrossentropy/Log*
T0*'
_output_shapes
:���������

f
$Crossentropy/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
Crossentropy/Sum_1SumCrossentropy/mul$Crossentropy/Sum_1/reduction_indices*
T0*#
_output_shapes
:���������*

Tidx0*
	keep_dims( 
Y
Crossentropy/NegNegCrossentropy/Sum_1*
T0*#
_output_shapes
:���������
\
Crossentropy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
}
Crossentropy/MeanMeanCrossentropy/NegCrossentropy/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
`
Training_step/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
q
Training_step
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
Training_step/AssignAssignTraining_stepTraining_step/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@Training_step
p
Training_step/readIdentityTraining_step*
T0* 
_class
loc:@Training_step*
_output_shapes
: 

is_training/Initializer/ConstConst*
value	B
 Z *
_class
loc:@is_training*
dtype0
*
_output_shapes
: 
�
is_training
VariableV2*
shared_name *
_class
loc:@is_training*
	container *
shape: *
dtype0
*
_output_shapes
: 
�
is_training/AssignAssignis_trainingis_training/Initializer/Const*
use_locking(*
T0
*
_class
loc:@is_training*
validate_shape(*
_output_shapes
: 
j
is_training/readIdentityis_training*
_output_shapes
: *
T0
*
_class
loc:@is_training
N
Assign/valueConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
�
AssignAssignis_trainingAssign/value*
use_locking(*
T0
*
_class
loc:@is_training*
validate_shape(*
_output_shapes
: 
P
Assign_1/valueConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
�
Assign_1Assignis_trainingAssign_1/value*
_class
loc:@is_training*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

^
Global_Step/initial_valueConst*
_output_shapes
: *
valueB
 *    *
dtype0
o
Global_Step
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
Global_Step/AssignAssignGlobal_StepGlobal_Step/initial_value*
T0*
_class
loc:@Global_Step*
validate_shape(*
_output_shapes
: *
use_locking(
j
Global_Step/readIdentityGlobal_Step*
T0*
_class
loc:@Global_Step*
_output_shapes
: 
J
Add/yConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
D
AddAddGlobal_Step/readAdd/y*
T0*
_output_shapes
: 
�
Assign_2AssignGlobal_StepAdd*
use_locking(*
T0*
_class
loc:@Global_Step*
validate_shape(*
_output_shapes
: 
[
val_loss/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
l
val_loss
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
val_loss/AssignAssignval_lossval_loss/initial_value*
use_locking(*
T0*
_class
loc:@val_loss*
validate_shape(*
_output_shapes
: 
a
val_loss/readIdentityval_loss*
_output_shapes
: *
T0*
_class
loc:@val_loss
Z
val_acc/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
val_acc
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
�
val_acc/AssignAssignval_accval_acc/initial_value*
use_locking(*
T0*
_class
loc:@val_acc*
validate_shape(*
_output_shapes
: 
^
val_acc/readIdentityval_acc*
_output_shapes
: *
T0*
_class
loc:@val_acc
Y
placeholder/val_lossPlaceholder*
dtype0*
_output_shapes
:*
shape:
X
placeholder/val_accPlaceholder*
dtype0*
_output_shapes
:*
shape:
�
assign/val_lossAssignval_lossplaceholder/val_loss*
use_locking(*
T0*
_class
loc:@val_loss*
validate_shape(*
_output_shapes
: 
�
assign/val_accAssignval_accplaceholder/val_acc*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@val_acc
�
:Accuracy/Mean/moving_avg/Initializer/zeros/shape_as_tensorConst*
valueB *+
_class!
loc:@Accuracy/Mean/moving_avg*
dtype0*
_output_shapes
: 
�
0Accuracy/Mean/moving_avg/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *+
_class!
loc:@Accuracy/Mean/moving_avg
�
*Accuracy/Mean/moving_avg/Initializer/zerosFill:Accuracy/Mean/moving_avg/Initializer/zeros/shape_as_tensor0Accuracy/Mean/moving_avg/Initializer/zeros/Const*
_output_shapes
: *
T0*

index_type0*+
_class!
loc:@Accuracy/Mean/moving_avg
�
Accuracy/Mean/moving_avg
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *+
_class!
loc:@Accuracy/Mean/moving_avg
�
Accuracy/Mean/moving_avg/AssignAssignAccuracy/Mean/moving_avg*Accuracy/Mean/moving_avg/Initializer/zeros*+
_class!
loc:@Accuracy/Mean/moving_avg*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
Accuracy/Mean/moving_avg/readIdentityAccuracy/Mean/moving_avg*
_output_shapes
: *
T0*+
_class!
loc:@Accuracy/Mean/moving_avg
U
moving_avg/decayConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
U
moving_avg/add/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
\
moving_avg/addAddmoving_avg/add/xTraining_step/read*
_output_shapes
: *
T0
W
moving_avg/add_1/xConst*
_output_shapes
: *
valueB
 *   A*
dtype0
`
moving_avg/add_1Addmoving_avg/add_1/xTraining_step/read*
T0*
_output_shapes
: 
`
moving_avg/truedivRealDivmoving_avg/addmoving_avg/add_1*
T0*
_output_shapes
: 
d
moving_avg/MinimumMinimummoving_avg/decaymoving_avg/truediv*
_output_shapes
: *
T0
�
 moving_avg/AssignMovingAvg/sub/xConst*
_output_shapes
: *
valueB
 *  �?*+
_class!
loc:@Accuracy/Mean/moving_avg*
dtype0
�
moving_avg/AssignMovingAvg/subSub moving_avg/AssignMovingAvg/sub/xmoving_avg/Minimum*
_output_shapes
: *
T0*+
_class!
loc:@Accuracy/Mean/moving_avg
�
 moving_avg/AssignMovingAvg/sub_1SubAccuracy/Mean/moving_avg/readAccuracy/Mean*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
�
moving_avg/AssignMovingAvg/mulMul moving_avg/AssignMovingAvg/sub_1moving_avg/AssignMovingAvg/sub*
_output_shapes
: *
T0*+
_class!
loc:@Accuracy/Mean/moving_avg
�
moving_avg/AssignMovingAvg	AssignSubAccuracy/Mean/moving_avgmoving_avg/AssignMovingAvg/mul*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: *
use_locking( *
T0
/

moving_avgNoOp^moving_avg/AssignMovingAvg
O
Adam/Total_LossIdentityCrossentropy/Mean*
T0*
_output_shapes
: 
�
>Crossentropy/Mean/moving_avg/Initializer/zeros/shape_as_tensorConst*
valueB */
_class%
#!loc:@Crossentropy/Mean/moving_avg*
dtype0*
_output_shapes
: 
�
4Crossentropy/Mean/moving_avg/Initializer/zeros/ConstConst*
valueB
 *    */
_class%
#!loc:@Crossentropy/Mean/moving_avg*
dtype0*
_output_shapes
: 
�
.Crossentropy/Mean/moving_avg/Initializer/zerosFill>Crossentropy/Mean/moving_avg/Initializer/zeros/shape_as_tensor4Crossentropy/Mean/moving_avg/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
�
Crossentropy/Mean/moving_avg
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name */
_class%
#!loc:@Crossentropy/Mean/moving_avg
�
#Crossentropy/Mean/moving_avg/AssignAssignCrossentropy/Mean/moving_avg.Crossentropy/Mean/moving_avg/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
validate_shape(*
_output_shapes
: 
�
!Crossentropy/Mean/moving_avg/readIdentityCrossentropy/Mean/moving_avg*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
Z
Adam/moving_avg/decayConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Z
Adam/moving_avg/add/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
Adam/moving_avg/addAddAdam/moving_avg/add/xTraining_step/read*
T0*
_output_shapes
: 
\
Adam/moving_avg/add_1/xConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
j
Adam/moving_avg/add_1AddAdam/moving_avg/add_1/xTraining_step/read*
_output_shapes
: *
T0
o
Adam/moving_avg/truedivRealDivAdam/moving_avg/addAdam/moving_avg/add_1*
T0*
_output_shapes
: 
s
Adam/moving_avg/MinimumMinimumAdam/moving_avg/decayAdam/moving_avg/truediv*
_output_shapes
: *
T0
�
%Adam/moving_avg/AssignMovingAvg/sub/xConst*
valueB
 *  �?*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
dtype0*
_output_shapes
: 
�
#Adam/moving_avg/AssignMovingAvg/subSub%Adam/moving_avg/AssignMovingAvg/sub/xAdam/moving_avg/Minimum*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
�
%Adam/moving_avg/AssignMovingAvg/sub_1Sub!Crossentropy/Mean/moving_avg/readCrossentropy/Mean*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
�
#Adam/moving_avg/AssignMovingAvg/mulMul%Adam/moving_avg/AssignMovingAvg/sub_1#Adam/moving_avg/AssignMovingAvg/sub*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
�
Adam/moving_avg/AssignMovingAvg	AssignSubCrossentropy/Mean/moving_avg#Adam/moving_avg/AssignMovingAvg/mul*
use_locking( *
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
9
Adam/moving_avgNoOp ^Adam/moving_avg/AssignMovingAvg
N
	Loss/tagsConst*
valueB
 BLoss*
dtype0*
_output_shapes
: 
d
LossScalarSummary	Loss/tags!Crossentropy/Mean/moving_avg/read*
T0*
_output_shapes
: 
`
Adam/Loss/raw/tagsConst*
valueB BAdam/Loss/raw*
dtype0*
_output_shapes
: 
f
Adam/Loss/rawScalarSummaryAdam/Loss/raw/tagsCrossentropy/Mean*
T0*
_output_shapes
: 
v
Adam/gradients/ShapeConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
valueB *
dtype0
|
Adam/gradients/grad_ys_0Const^Adam/moving_avg^moving_avg*
valueB
 *  �?*
dtype0*
_output_shapes
: 
~
Adam/gradients/FillFillAdam/gradients/ShapeAdam/gradients/grad_ys_0*

index_type0*
_output_shapes
: *
T0
�
3Adam/gradients/Crossentropy/Mean_grad/Reshape/shapeConst^Adam/moving_avg^moving_avg*
valueB:*
dtype0*
_output_shapes
:
�
-Adam/gradients/Crossentropy/Mean_grad/ReshapeReshapeAdam/gradients/Fill3Adam/gradients/Crossentropy/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
�
+Adam/gradients/Crossentropy/Mean_grad/ShapeShapeCrossentropy/Neg^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
�
*Adam/gradients/Crossentropy/Mean_grad/TileTile-Adam/gradients/Crossentropy/Mean_grad/Reshape+Adam/gradients/Crossentropy/Mean_grad/Shape*#
_output_shapes
:���������*

Tmultiples0*
T0
�
-Adam/gradients/Crossentropy/Mean_grad/Shape_1ShapeCrossentropy/Neg^Adam/moving_avg^moving_avg*
_output_shapes
:*
T0*
out_type0
�
-Adam/gradients/Crossentropy/Mean_grad/Shape_2Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
�
+Adam/gradients/Crossentropy/Mean_grad/ConstConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*
valueB: 
�
*Adam/gradients/Crossentropy/Mean_grad/ProdProd-Adam/gradients/Crossentropy/Mean_grad/Shape_1+Adam/gradients/Crossentropy/Mean_grad/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
-Adam/gradients/Crossentropy/Mean_grad/Const_1Const^Adam/moving_avg^moving_avg*
_output_shapes
:*
valueB: *
dtype0
�
,Adam/gradients/Crossentropy/Mean_grad/Prod_1Prod-Adam/gradients/Crossentropy/Mean_grad/Shape_2-Adam/gradients/Crossentropy/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
�
/Adam/gradients/Crossentropy/Mean_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*
_output_shapes
: 
�
-Adam/gradients/Crossentropy/Mean_grad/MaximumMaximum,Adam/gradients/Crossentropy/Mean_grad/Prod_1/Adam/gradients/Crossentropy/Mean_grad/Maximum/y*
_output_shapes
: *
T0
�
.Adam/gradients/Crossentropy/Mean_grad/floordivFloorDiv*Adam/gradients/Crossentropy/Mean_grad/Prod-Adam/gradients/Crossentropy/Mean_grad/Maximum*
_output_shapes
: *
T0
�
*Adam/gradients/Crossentropy/Mean_grad/CastCast.Adam/gradients/Crossentropy/Mean_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0
�
-Adam/gradients/Crossentropy/Mean_grad/truedivRealDiv*Adam/gradients/Crossentropy/Mean_grad/Tile*Adam/gradients/Crossentropy/Mean_grad/Cast*
T0*#
_output_shapes
:���������
�
(Adam/gradients/Crossentropy/Neg_grad/NegNeg-Adam/gradients/Crossentropy/Mean_grad/truediv*
T0*#
_output_shapes
:���������
�
,Adam/gradients/Crossentropy/Sum_1_grad/ShapeShapeCrossentropy/mul^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
+Adam/gradients/Crossentropy/Sum_1_grad/SizeConst^Adam/moving_avg^moving_avg*
value	B :*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
dtype0*
_output_shapes
: 
�
*Adam/gradients/Crossentropy/Sum_1_grad/addAdd$Crossentropy/Sum_1/reduction_indices+Adam/gradients/Crossentropy/Sum_1_grad/Size*
T0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
*Adam/gradients/Crossentropy/Sum_1_grad/modFloorMod*Adam/gradients/Crossentropy/Sum_1_grad/add+Adam/gradients/Crossentropy/Sum_1_grad/Size*
T0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
.Adam/gradients/Crossentropy/Sum_1_grad/Shape_1Const^Adam/moving_avg^moving_avg*
_output_shapes
: *
valueB *?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
dtype0
�
2Adam/gradients/Crossentropy/Sum_1_grad/range/startConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
value	B : *?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
dtype0
�
2Adam/gradients/Crossentropy/Sum_1_grad/range/deltaConst^Adam/moving_avg^moving_avg*
value	B :*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
dtype0*
_output_shapes
: 
�
,Adam/gradients/Crossentropy/Sum_1_grad/rangeRange2Adam/gradients/Crossentropy/Sum_1_grad/range/start+Adam/gradients/Crossentropy/Sum_1_grad/Size2Adam/gradients/Crossentropy/Sum_1_grad/range/delta*
_output_shapes
:*

Tidx0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape
�
1Adam/gradients/Crossentropy/Sum_1_grad/Fill/valueConst^Adam/moving_avg^moving_avg*
value	B :*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
dtype0*
_output_shapes
: 
�
+Adam/gradients/Crossentropy/Sum_1_grad/FillFill.Adam/gradients/Crossentropy/Sum_1_grad/Shape_11Adam/gradients/Crossentropy/Sum_1_grad/Fill/value*
T0*

index_type0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitchDynamicStitch,Adam/gradients/Crossentropy/Sum_1_grad/range*Adam/gradients/Crossentropy/Sum_1_grad/mod,Adam/gradients/Crossentropy/Sum_1_grad/Shape+Adam/gradients/Crossentropy/Sum_1_grad/Fill*
T0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
N*#
_output_shapes
:���������
�
0Adam/gradients/Crossentropy/Sum_1_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B :*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape
�
.Adam/gradients/Crossentropy/Sum_1_grad/MaximumMaximum4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitch0Adam/gradients/Crossentropy/Sum_1_grad/Maximum/y*#
_output_shapes
:���������*
T0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape
�
/Adam/gradients/Crossentropy/Sum_1_grad/floordivFloorDiv,Adam/gradients/Crossentropy/Sum_1_grad/Shape.Adam/gradients/Crossentropy/Sum_1_grad/Maximum*
T0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
:
�
.Adam/gradients/Crossentropy/Sum_1_grad/ReshapeReshape(Adam/gradients/Crossentropy/Neg_grad/Neg4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitch*
Tshape0*
_output_shapes
:*
T0
�
+Adam/gradients/Crossentropy/Sum_1_grad/TileTile.Adam/gradients/Crossentropy/Sum_1_grad/Reshape/Adam/gradients/Crossentropy/Sum_1_grad/floordiv*'
_output_shapes
:���������
*

Tmultiples0*
T0
�
*Adam/gradients/Crossentropy/mul_grad/ShapeShapeTargetsData/Y^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
,Adam/gradients/Crossentropy/mul_grad/Shape_1ShapeCrossentropy/Log^Adam/moving_avg^moving_avg*
_output_shapes
:*
T0*
out_type0
�
:Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgsBroadcastGradientArgs*Adam/gradients/Crossentropy/mul_grad/Shape,Adam/gradients/Crossentropy/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
(Adam/gradients/Crossentropy/mul_grad/MulMul+Adam/gradients/Crossentropy/Sum_1_grad/TileCrossentropy/Log*'
_output_shapes
:���������
*
T0
�
(Adam/gradients/Crossentropy/mul_grad/SumSum(Adam/gradients/Crossentropy/mul_grad/Mul:Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
,Adam/gradients/Crossentropy/mul_grad/ReshapeReshape(Adam/gradients/Crossentropy/mul_grad/Sum*Adam/gradients/Crossentropy/mul_grad/Shape*
Tshape0*'
_output_shapes
:���������
*
T0
�
*Adam/gradients/Crossentropy/mul_grad/Mul_1MulTargetsData/Y+Adam/gradients/Crossentropy/Sum_1_grad/Tile*
T0*'
_output_shapes
:���������

�
*Adam/gradients/Crossentropy/mul_grad/Sum_1Sum*Adam/gradients/Crossentropy/mul_grad/Mul_1<Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
.Adam/gradients/Crossentropy/mul_grad/Reshape_1Reshape*Adam/gradients/Crossentropy/mul_grad/Sum_1,Adam/gradients/Crossentropy/mul_grad/Shape_1*'
_output_shapes
:���������
*
T0*
Tshape0
�
/Adam/gradients/Crossentropy/Log_grad/Reciprocal
ReciprocalCrossentropy/clip_by_value^Adam/moving_avg^moving_avg/^Adam/gradients/Crossentropy/mul_grad/Reshape_1*
T0*'
_output_shapes
:���������

�
(Adam/gradients/Crossentropy/Log_grad/mulMul.Adam/gradients/Crossentropy/mul_grad/Reshape_1/Adam/gradients/Crossentropy/Log_grad/Reciprocal*
T0*'
_output_shapes
:���������

�
4Adam/gradients/Crossentropy/clip_by_value_grad/ShapeShape"Crossentropy/clip_by_value/Minimum^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
�
6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_2Shape(Adam/gradients/Crossentropy/Log_grad/mul*
_output_shapes
:*
T0*
out_type0
�
:Adam/gradients/Crossentropy/clip_by_value_grad/zeros/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *    *
dtype0*
_output_shapes
: 
�
4Adam/gradients/Crossentropy/clip_by_value_grad/zerosFill6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_2:Adam/gradients/Crossentropy/clip_by_value_grad/zeros/Const*
T0*

index_type0*'
_output_shapes
:���������

�
;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqualGreaterEqual"Crossentropy/clip_by_value/MinimumCrossentropy/Cast/x^Adam/moving_avg^moving_avg*
T0*'
_output_shapes
:���������

�
DAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs4Adam/gradients/Crossentropy/clip_by_value_grad/Shape6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
5Adam/gradients/Crossentropy/clip_by_value_grad/SelectSelect;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqual(Adam/gradients/Crossentropy/Log_grad/mul4Adam/gradients/Crossentropy/clip_by_value_grad/zeros*
T0*'
_output_shapes
:���������

�
7Adam/gradients/Crossentropy/clip_by_value_grad/Select_1Select;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqual4Adam/gradients/Crossentropy/clip_by_value_grad/zeros(Adam/gradients/Crossentropy/Log_grad/mul*'
_output_shapes
:���������
*
T0
�
2Adam/gradients/Crossentropy/clip_by_value_grad/SumSum5Adam/gradients/Crossentropy/clip_by_value_grad/SelectDAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
6Adam/gradients/Crossentropy/clip_by_value_grad/ReshapeReshape2Adam/gradients/Crossentropy/clip_by_value_grad/Sum4Adam/gradients/Crossentropy/clip_by_value_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������

�
4Adam/gradients/Crossentropy/clip_by_value_grad/Sum_1Sum7Adam/gradients/Crossentropy/clip_by_value_grad/Select_1FAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
8Adam/gradients/Crossentropy/clip_by_value_grad/Reshape_1Reshape4Adam/gradients/Crossentropy/clip_by_value_grad/Sum_16Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
�
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ShapeShapeCrossentropy/truediv^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
�
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_2Shape6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape*
T0*
out_type0*
_output_shapes
:
�
BAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *    *
dtype0*
_output_shapes
: 
�
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zerosFill>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_2BAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros/Const*'
_output_shapes
:���������
*
T0*

index_type0
�
@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualCrossentropy/truedivCrossentropy/Cast_1/x^Adam/moving_avg^moving_avg*
T0*'
_output_shapes
:���������

�
LAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
=Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SelectSelect@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:���������
*
T0
�
?Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Select_1Select@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape*
T0*'
_output_shapes
:���������

�
:Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SumSum=Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SelectLAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ReshapeReshape:Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape*'
_output_shapes
:���������
*
T0*
Tshape0
�
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum_1Sum?Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Select_1NAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshape<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum_1>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
.Adam/gradients/Crossentropy/truediv_grad/ShapeShapeFullyConnected_2/Softmax^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
0Adam/gradients/Crossentropy/truediv_grad/Shape_1ShapeCrossentropy/Sum^Adam/moving_avg^moving_avg*
_output_shapes
:*
T0*
out_type0
�
>Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs.Adam/gradients/Crossentropy/truediv_grad/Shape0Adam/gradients/Crossentropy/truediv_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
0Adam/gradients/Crossentropy/truediv_grad/RealDivRealDiv>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ReshapeCrossentropy/Sum*'
_output_shapes
:���������
*
T0
�
,Adam/gradients/Crossentropy/truediv_grad/SumSum0Adam/gradients/Crossentropy/truediv_grad/RealDiv>Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
0Adam/gradients/Crossentropy/truediv_grad/ReshapeReshape,Adam/gradients/Crossentropy/truediv_grad/Sum.Adam/gradients/Crossentropy/truediv_grad/Shape*
Tshape0*'
_output_shapes
:���������
*
T0
�
,Adam/gradients/Crossentropy/truediv_grad/NegNegFullyConnected_2/Softmax^Adam/moving_avg^moving_avg*
T0*'
_output_shapes
:���������

�
2Adam/gradients/Crossentropy/truediv_grad/RealDiv_1RealDiv,Adam/gradients/Crossentropy/truediv_grad/NegCrossentropy/Sum*'
_output_shapes
:���������
*
T0
�
2Adam/gradients/Crossentropy/truediv_grad/RealDiv_2RealDiv2Adam/gradients/Crossentropy/truediv_grad/RealDiv_1Crossentropy/Sum*
T0*'
_output_shapes
:���������

�
,Adam/gradients/Crossentropy/truediv_grad/mulMul>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Reshape2Adam/gradients/Crossentropy/truediv_grad/RealDiv_2*'
_output_shapes
:���������
*
T0
�
.Adam/gradients/Crossentropy/truediv_grad/Sum_1Sum,Adam/gradients/Crossentropy/truediv_grad/mul@Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
2Adam/gradients/Crossentropy/truediv_grad/Reshape_1Reshape.Adam/gradients/Crossentropy/truediv_grad/Sum_10Adam/gradients/Crossentropy/truediv_grad/Shape_1*
Tshape0*'
_output_shapes
:���������*
T0
�
*Adam/gradients/Crossentropy/Sum_grad/ShapeShapeFullyConnected_2/Softmax^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
)Adam/gradients/Crossentropy/Sum_grad/SizeConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B :*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape
�
(Adam/gradients/Crossentropy/Sum_grad/addAdd"Crossentropy/Sum/reduction_indices)Adam/gradients/Crossentropy/Sum_grad/Size*
_output_shapes
: *
T0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape
�
(Adam/gradients/Crossentropy/Sum_grad/modFloorMod(Adam/gradients/Crossentropy/Sum_grad/add)Adam/gradients/Crossentropy/Sum_grad/Size*
T0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
: 
�
,Adam/gradients/Crossentropy/Sum_grad/Shape_1Const^Adam/moving_avg^moving_avg*
_output_shapes
: *
valueB *=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
dtype0
�
0Adam/gradients/Crossentropy/Sum_grad/range/startConst^Adam/moving_avg^moving_avg*
value	B : *=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
0Adam/gradients/Crossentropy/Sum_grad/range/deltaConst^Adam/moving_avg^moving_avg*
value	B :*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
*Adam/gradients/Crossentropy/Sum_grad/rangeRange0Adam/gradients/Crossentropy/Sum_grad/range/start)Adam/gradients/Crossentropy/Sum_grad/Size0Adam/gradients/Crossentropy/Sum_grad/range/delta*

Tidx0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
:
�
/Adam/gradients/Crossentropy/Sum_grad/Fill/valueConst^Adam/moving_avg^moving_avg*
value	B :*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
)Adam/gradients/Crossentropy/Sum_grad/FillFill,Adam/gradients/Crossentropy/Sum_grad/Shape_1/Adam/gradients/Crossentropy/Sum_grad/Fill/value*
T0*

index_type0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
: 
�
2Adam/gradients/Crossentropy/Sum_grad/DynamicStitchDynamicStitch*Adam/gradients/Crossentropy/Sum_grad/range(Adam/gradients/Crossentropy/Sum_grad/mod*Adam/gradients/Crossentropy/Sum_grad/Shape)Adam/gradients/Crossentropy/Sum_grad/Fill*
N*#
_output_shapes
:���������*
T0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape
�
.Adam/gradients/Crossentropy/Sum_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
value	B :*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
,Adam/gradients/Crossentropy/Sum_grad/MaximumMaximum2Adam/gradients/Crossentropy/Sum_grad/DynamicStitch.Adam/gradients/Crossentropy/Sum_grad/Maximum/y*
T0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*#
_output_shapes
:���������
�
-Adam/gradients/Crossentropy/Sum_grad/floordivFloorDiv*Adam/gradients/Crossentropy/Sum_grad/Shape,Adam/gradients/Crossentropy/Sum_grad/Maximum*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
:*
T0
�
,Adam/gradients/Crossentropy/Sum_grad/ReshapeReshape2Adam/gradients/Crossentropy/truediv_grad/Reshape_12Adam/gradients/Crossentropy/Sum_grad/DynamicStitch*
Tshape0*
_output_shapes
:*
T0
�
)Adam/gradients/Crossentropy/Sum_grad/TileTile,Adam/gradients/Crossentropy/Sum_grad/Reshape-Adam/gradients/Crossentropy/Sum_grad/floordiv*'
_output_shapes
:���������
*

Tmultiples0*
T0
�
Adam/gradients/AddNAddN0Adam/gradients/Crossentropy/truediv_grad/Reshape)Adam/gradients/Crossentropy/Sum_grad/Tile*'
_output_shapes
:���������
*
T0*C
_class9
75loc:@Adam/gradients/Crossentropy/truediv_grad/Reshape*
N
�
0Adam/gradients/FullyConnected_2/Softmax_grad/mulMulAdam/gradients/AddNFullyConnected_2/Softmax*'
_output_shapes
:���������
*
T0
�
BAdam/gradients/FullyConnected_2/Softmax_grad/Sum/reduction_indicesConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*
valueB:
�
0Adam/gradients/FullyConnected_2/Softmax_grad/SumSum0Adam/gradients/FullyConnected_2/Softmax_grad/mulBAdam/gradients/FullyConnected_2/Softmax_grad/Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:���������
�
:Adam/gradients/FullyConnected_2/Softmax_grad/Reshape/shapeConst^Adam/moving_avg^moving_avg*
valueB"����   *
dtype0*
_output_shapes
:
�
4Adam/gradients/FullyConnected_2/Softmax_grad/ReshapeReshape0Adam/gradients/FullyConnected_2/Softmax_grad/Sum:Adam/gradients/FullyConnected_2/Softmax_grad/Reshape/shape*'
_output_shapes
:���������*
T0*
Tshape0
�
0Adam/gradients/FullyConnected_2/Softmax_grad/subSubAdam/gradients/AddN4Adam/gradients/FullyConnected_2/Softmax_grad/Reshape*
T0*'
_output_shapes
:���������

�
2Adam/gradients/FullyConnected_2/Softmax_grad/mul_1Mul0Adam/gradients/FullyConnected_2/Softmax_grad/subFullyConnected_2/Softmax*
T0*'
_output_shapes
:���������

�
8Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGradBiasAddGrad2Adam/gradients/FullyConnected_2/Softmax_grad/mul_1*
data_formatNHWC*
_output_shapes
:
*
T0
�
2Adam/gradients/FullyConnected_2/MatMul_grad/MatMulMatMul2Adam/gradients/FullyConnected_2/Softmax_grad/mul_1FullyConnected_2/W/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b(
�
4Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1MatMulFullyConnected_1/BiasAdd2Adam/gradients/FullyConnected_2/Softmax_grad/mul_1*
_output_shapes

:
*
transpose_a(*
transpose_b( *
T0
�
8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGradBiasAddGrad2Adam/gradients/FullyConnected_2/MatMul_grad/MatMul*
T0*
data_formatNHWC*
_output_shapes
:
�
2Adam/gradients/FullyConnected_1/MatMul_grad/MatMulMatMul2Adam/gradients/FullyConnected_2/MatMul_grad/MatMulFullyConnected_1/W/read*'
_output_shapes
:���������*
transpose_a( *
transpose_b(*
T0
�
4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1MatMulFullyConnected/BiasAdd2Adam/gradients/FullyConnected_2/MatMul_grad/MatMul*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
�
6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGradBiasAddGrad2Adam/gradients/FullyConnected_1/MatMul_grad/MatMul*
data_formatNHWC*
_output_shapes
:*
T0
�
0Adam/gradients/FullyConnected/MatMul_grad/MatMulMatMul2Adam/gradients/FullyConnected_1/MatMul_grad/MatMulFullyConnected/W/read*'
_output_shapes
:���������9*
transpose_a( *
transpose_b(*
T0
�
2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1MatMulInputData/X2Adam/gradients/FullyConnected_1/MatMul_grad/MatMul*
T0*
_output_shapes

:9*
transpose_a(*
transpose_b( 
�
Adam/global_norm/L2LossL2Loss2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
T0*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
_output_shapes
: 
�
Adam/global_norm/L2Loss_1L2Loss6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
�
Adam/global_norm/L2Loss_2L2Loss4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
_output_shapes
: 
�
Adam/global_norm/L2Loss_3L2Loss8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad
�
Adam/global_norm/L2Loss_4L2Loss4Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1*
_output_shapes
: *
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1
�
Adam/global_norm/L2Loss_5L2Loss8Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGrad*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
�
Adam/global_norm/stackPackAdam/global_norm/L2LossAdam/global_norm/L2Loss_1Adam/global_norm/L2Loss_2Adam/global_norm/L2Loss_3Adam/global_norm/L2Loss_4Adam/global_norm/L2Loss_5*
T0*

axis *
N*
_output_shapes
:

Adam/global_norm/ConstConst^Adam/moving_avg^moving_avg*
valueB: *
dtype0*
_output_shapes
:
�
Adam/global_norm/SumSumAdam/global_norm/stackAdam/global_norm/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
|
Adam/global_norm/Const_1Const^Adam/moving_avg^moving_avg*
valueB
 *   @*
dtype0*
_output_shapes
: 
l
Adam/global_norm/mulMulAdam/global_norm/SumAdam/global_norm/Const_1*
T0*
_output_shapes
: 
[
Adam/global_norm/global_normSqrtAdam/global_norm/mul*
_output_shapes
: *
T0
�
"Adam/clip_by_global_norm/truediv/xConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
 Adam/clip_by_global_norm/truedivRealDiv"Adam/clip_by_global_norm/truediv/xAdam/global_norm/global_norm*
_output_shapes
: *
T0
�
Adam/clip_by_global_norm/ConstConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
$Adam/clip_by_global_norm/truediv_1/yConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
valueB
 *  �@
�
"Adam/clip_by_global_norm/truediv_1RealDivAdam/clip_by_global_norm/Const$Adam/clip_by_global_norm/truediv_1/y*
T0*
_output_shapes
: 
�
 Adam/clip_by_global_norm/MinimumMinimum Adam/clip_by_global_norm/truediv"Adam/clip_by_global_norm/truediv_1*
T0*
_output_shapes
: 
�
Adam/clip_by_global_norm/mul/xConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
valueB
 *  �@*
dtype0
�
Adam/clip_by_global_norm/mulMulAdam/clip_by_global_norm/mul/x Adam/clip_by_global_norm/Minimum*
T0*
_output_shapes
: 
�
Adam/clip_by_global_norm/mul_1Mul2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
T0*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
_output_shapes

:9
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_0IdentityAdam/clip_by_global_norm/mul_1*
_output_shapes

:9*
T0*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1
�
Adam/clip_by_global_norm/mul_2Mul6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_1IdentityAdam/clip_by_global_norm/mul_2*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
�
Adam/clip_by_global_norm/mul_3Mul4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
_output_shapes

:
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_2IdentityAdam/clip_by_global_norm/mul_3*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
_output_shapes

:
�
Adam/clip_by_global_norm/mul_4Mul8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_3IdentityAdam/clip_by_global_norm/mul_4*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
Adam/clip_by_global_norm/mul_5Mul4Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*G
_class=
;9loc:@Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1*
_output_shapes

:
*
T0
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_4IdentityAdam/clip_by_global_norm/mul_5*
_output_shapes

:
*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1
�
Adam/clip_by_global_norm/mul_6Mul8Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:

�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_5IdentityAdam/clip_by_global_norm/mul_6*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:

�
Adam/beta1_power/initial_valueConst*
valueB
 *fff?*#
_class
loc:@FullyConnected/W*
dtype0*
_output_shapes
: 
�
Adam/beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@FullyConnected/W*
	container *
shape: 
�
Adam/beta1_power/AssignAssignAdam/beta1_powerAdam/beta1_power/initial_value*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
: 
y
Adam/beta1_power/readIdentityAdam/beta1_power*#
_class
loc:@FullyConnected/W*
_output_shapes
: *
T0
�
Adam/beta2_power/initial_valueConst*
valueB
 *w�?*#
_class
loc:@FullyConnected/W*
dtype0*
_output_shapes
: 
�
Adam/beta2_power
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@FullyConnected/W*
	container 
�
Adam/beta2_power/AssignAssignAdam/beta2_powerAdam/beta2_power/initial_value*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
: 
y
Adam/beta2_power/readIdentityAdam/beta2_power*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
7FullyConnected/W/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"9      *#
_class
loc:@FullyConnected/W*
dtype0*
_output_shapes
:
�
-FullyConnected/W/Adam/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@FullyConnected/W*
dtype0*
_output_shapes
: 
�
'FullyConnected/W/Adam/Initializer/zerosFill7FullyConnected/W/Adam/Initializer/zeros/shape_as_tensor-FullyConnected/W/Adam/Initializer/zeros/Const*

index_type0*#
_class
loc:@FullyConnected/W*
_output_shapes

:9*
T0
�
FullyConnected/W/Adam
VariableV2*
shape
:9*
dtype0*
_output_shapes

:9*
shared_name *#
_class
loc:@FullyConnected/W*
	container 
�
FullyConnected/W/Adam/AssignAssignFullyConnected/W/Adam'FullyConnected/W/Adam/Initializer/zeros*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes

:9*
use_locking(*
T0
�
FullyConnected/W/Adam/readIdentityFullyConnected/W/Adam*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes

:9
�
9FullyConnected/W/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"9      *#
_class
loc:@FullyConnected/W*
dtype0*
_output_shapes
:
�
/FullyConnected/W/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@FullyConnected/W*
dtype0*
_output_shapes
: 
�
)FullyConnected/W/Adam_1/Initializer/zerosFill9FullyConnected/W/Adam_1/Initializer/zeros/shape_as_tensor/FullyConnected/W/Adam_1/Initializer/zeros/Const*
T0*

index_type0*#
_class
loc:@FullyConnected/W*
_output_shapes

:9
�
FullyConnected/W/Adam_1
VariableV2*#
_class
loc:@FullyConnected/W*
	container *
shape
:9*
dtype0*
_output_shapes

:9*
shared_name 
�
FullyConnected/W/Adam_1/AssignAssignFullyConnected/W/Adam_1)FullyConnected/W/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes

:9
�
FullyConnected/W/Adam_1/readIdentityFullyConnected/W/Adam_1*#
_class
loc:@FullyConnected/W*
_output_shapes

:9*
T0
�
7FullyConnected/b/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*#
_class
loc:@FullyConnected/b*
dtype0*
_output_shapes
:
�
-FullyConnected/b/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *#
_class
loc:@FullyConnected/b*
dtype0
�
'FullyConnected/b/Adam/Initializer/zerosFill7FullyConnected/b/Adam/Initializer/zeros/shape_as_tensor-FullyConnected/b/Adam/Initializer/zeros/Const*

index_type0*#
_class
loc:@FullyConnected/b*
_output_shapes
:*
T0
�
FullyConnected/b/Adam
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *#
_class
loc:@FullyConnected/b*
	container 
�
FullyConnected/b/Adam/AssignAssignFullyConnected/b/Adam'FullyConnected/b/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes
:
�
FullyConnected/b/Adam/readIdentityFullyConnected/b/Adam*
_output_shapes
:*
T0*#
_class
loc:@FullyConnected/b
�
9FullyConnected/b/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*#
_class
loc:@FullyConnected/b*
dtype0*
_output_shapes
:
�
/FullyConnected/b/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@FullyConnected/b*
dtype0*
_output_shapes
: 
�
)FullyConnected/b/Adam_1/Initializer/zerosFill9FullyConnected/b/Adam_1/Initializer/zeros/shape_as_tensor/FullyConnected/b/Adam_1/Initializer/zeros/Const*

index_type0*#
_class
loc:@FullyConnected/b*
_output_shapes
:*
T0
�
FullyConnected/b/Adam_1
VariableV2*
shared_name *#
_class
loc:@FullyConnected/b*
	container *
shape:*
dtype0*
_output_shapes
:
�
FullyConnected/b/Adam_1/AssignAssignFullyConnected/b/Adam_1)FullyConnected/b/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes
:
�
FullyConnected/b/Adam_1/readIdentityFullyConnected/b/Adam_1*#
_class
loc:@FullyConnected/b*
_output_shapes
:*
T0
�
9FullyConnected_1/W/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB"      *%
_class
loc:@FullyConnected_1/W*
dtype0
�
/FullyConnected_1/W/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *%
_class
loc:@FullyConnected_1/W*
dtype0
�
)FullyConnected_1/W/Adam/Initializer/zerosFill9FullyConnected_1/W/Adam/Initializer/zeros/shape_as_tensor/FullyConnected_1/W/Adam/Initializer/zeros/Const*
_output_shapes

:*
T0*

index_type0*%
_class
loc:@FullyConnected_1/W
�
FullyConnected_1/W/Adam
VariableV2*
shared_name *%
_class
loc:@FullyConnected_1/W*
	container *
shape
:*
dtype0*
_output_shapes

:
�
FullyConnected_1/W/Adam/AssignAssignFullyConnected_1/W/Adam)FullyConnected_1/W/Adam/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes

:
�
FullyConnected_1/W/Adam/readIdentityFullyConnected_1/W/Adam*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:*
T0
�
;FullyConnected_1/W/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *%
_class
loc:@FullyConnected_1/W*
dtype0*
_output_shapes
:
�
1FullyConnected_1/W/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *%
_class
loc:@FullyConnected_1/W*
dtype0*
_output_shapes
: 
�
+FullyConnected_1/W/Adam_1/Initializer/zerosFill;FullyConnected_1/W/Adam_1/Initializer/zeros/shape_as_tensor1FullyConnected_1/W/Adam_1/Initializer/zeros/Const*

index_type0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:*
T0
�
FullyConnected_1/W/Adam_1
VariableV2*
shape
:*
dtype0*
_output_shapes

:*
shared_name *%
_class
loc:@FullyConnected_1/W*
	container 
�
 FullyConnected_1/W/Adam_1/AssignAssignFullyConnected_1/W/Adam_1+FullyConnected_1/W/Adam_1/Initializer/zeros*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes

:*
use_locking(*
T0
�
FullyConnected_1/W/Adam_1/readIdentityFullyConnected_1/W/Adam_1*
_output_shapes

:*
T0*%
_class
loc:@FullyConnected_1/W
�
9FullyConnected_1/b/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*%
_class
loc:@FullyConnected_1/b*
dtype0*
_output_shapes
:
�
/FullyConnected_1/b/Adam/Initializer/zeros/ConstConst*
valueB
 *    *%
_class
loc:@FullyConnected_1/b*
dtype0*
_output_shapes
: 
�
)FullyConnected_1/b/Adam/Initializer/zerosFill9FullyConnected_1/b/Adam/Initializer/zeros/shape_as_tensor/FullyConnected_1/b/Adam/Initializer/zeros/Const*
_output_shapes
:*
T0*

index_type0*%
_class
loc:@FullyConnected_1/b
�
FullyConnected_1/b/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *%
_class
loc:@FullyConnected_1/b*
	container *
shape:
�
FullyConnected_1/b/Adam/AssignAssignFullyConnected_1/b/Adam)FullyConnected_1/b/Adam/Initializer/zeros*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
FullyConnected_1/b/Adam/readIdentityFullyConnected_1/b/Adam*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0
�
;FullyConnected_1/b/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*%
_class
loc:@FullyConnected_1/b*
dtype0*
_output_shapes
:
�
1FullyConnected_1/b/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *%
_class
loc:@FullyConnected_1/b*
dtype0*
_output_shapes
: 
�
+FullyConnected_1/b/Adam_1/Initializer/zerosFill;FullyConnected_1/b/Adam_1/Initializer/zeros/shape_as_tensor1FullyConnected_1/b/Adam_1/Initializer/zeros/Const*
T0*

index_type0*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
FullyConnected_1/b/Adam_1
VariableV2*%
_class
loc:@FullyConnected_1/b*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
 FullyConnected_1/b/Adam_1/AssignAssignFullyConnected_1/b/Adam_1+FullyConnected_1/b/Adam_1/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
�
FullyConnected_1/b/Adam_1/readIdentityFullyConnected_1/b/Adam_1*
T0*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
9FullyConnected_2/W/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"   
   *%
_class
loc:@FullyConnected_2/W*
dtype0*
_output_shapes
:
�
/FullyConnected_2/W/Adam/Initializer/zeros/ConstConst*
valueB
 *    *%
_class
loc:@FullyConnected_2/W*
dtype0*
_output_shapes
: 
�
)FullyConnected_2/W/Adam/Initializer/zerosFill9FullyConnected_2/W/Adam/Initializer/zeros/shape_as_tensor/FullyConnected_2/W/Adam/Initializer/zeros/Const*
T0*

index_type0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:

�
FullyConnected_2/W/Adam
VariableV2*
dtype0*
_output_shapes

:
*
shared_name *%
_class
loc:@FullyConnected_2/W*
	container *
shape
:

�
FullyConnected_2/W/Adam/AssignAssignFullyConnected_2/W/Adam)FullyConnected_2/W/Adam/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/W*
validate_shape(*
_output_shapes

:

�
FullyConnected_2/W/Adam/readIdentityFullyConnected_2/W/Adam*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:
*
T0
�
;FullyConnected_2/W/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   
   *%
_class
loc:@FullyConnected_2/W*
dtype0*
_output_shapes
:
�
1FullyConnected_2/W/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *%
_class
loc:@FullyConnected_2/W*
dtype0*
_output_shapes
: 
�
+FullyConnected_2/W/Adam_1/Initializer/zerosFill;FullyConnected_2/W/Adam_1/Initializer/zeros/shape_as_tensor1FullyConnected_2/W/Adam_1/Initializer/zeros/Const*

index_type0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:
*
T0
�
FullyConnected_2/W/Adam_1
VariableV2*
_output_shapes

:
*
shared_name *%
_class
loc:@FullyConnected_2/W*
	container *
shape
:
*
dtype0
�
 FullyConnected_2/W/Adam_1/AssignAssignFullyConnected_2/W/Adam_1+FullyConnected_2/W/Adam_1/Initializer/zeros*
_output_shapes

:
*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/W*
validate_shape(
�
FullyConnected_2/W/Adam_1/readIdentityFullyConnected_2/W/Adam_1*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:
*
T0
�
9FullyConnected_2/b/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB:
*%
_class
loc:@FullyConnected_2/b*
dtype0
�
/FullyConnected_2/b/Adam/Initializer/zeros/ConstConst*
valueB
 *    *%
_class
loc:@FullyConnected_2/b*
dtype0*
_output_shapes
: 
�
)FullyConnected_2/b/Adam/Initializer/zerosFill9FullyConnected_2/b/Adam/Initializer/zeros/shape_as_tensor/FullyConnected_2/b/Adam/Initializer/zeros/Const*

index_type0*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:
*
T0
�
FullyConnected_2/b/Adam
VariableV2*
shape:
*
dtype0*
_output_shapes
:
*
shared_name *%
_class
loc:@FullyConnected_2/b*
	container 
�
FullyConnected_2/b/Adam/AssignAssignFullyConnected_2/b/Adam)FullyConnected_2/b/Adam/Initializer/zeros*
_output_shapes
:
*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(
�
FullyConnected_2/b/Adam/readIdentityFullyConnected_2/b/Adam*
_output_shapes
:
*
T0*%
_class
loc:@FullyConnected_2/b
�
;FullyConnected_2/b/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:
*%
_class
loc:@FullyConnected_2/b*
dtype0*
_output_shapes
:
�
1FullyConnected_2/b/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *%
_class
loc:@FullyConnected_2/b*
dtype0*
_output_shapes
: 
�
+FullyConnected_2/b/Adam_1/Initializer/zerosFill;FullyConnected_2/b/Adam_1/Initializer/zeros/shape_as_tensor1FullyConnected_2/b/Adam_1/Initializer/zeros/Const*
T0*

index_type0*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:

�
FullyConnected_2/b/Adam_1
VariableV2*
shared_name *%
_class
loc:@FullyConnected_2/b*
	container *
shape:
*
dtype0*
_output_shapes
:

�
 FullyConnected_2/b/Adam_1/AssignAssignFullyConnected_2/b/Adam_1+FullyConnected_2/b/Adam_1/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(*
_output_shapes
:

�
FullyConnected_2/b/Adam_1/readIdentityFullyConnected_2/b/Adam_1*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:
*
T0
g
"Adam/apply_grad_op_0/learning_rateConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
_
Adam/apply_grad_op_0/beta1Const*
_output_shapes
: *
valueB
 *fff?*
dtype0
_
Adam/apply_grad_op_0/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
a
Adam/apply_grad_op_0/epsilonConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
�
6Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam	ApplyAdamFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_0*
_output_shapes

:9*
use_locking( *
T0*#
_class
loc:@FullyConnected/W*
use_nesterov( 
�
6Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam	ApplyAdamFullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_1*
_output_shapes
:*
use_locking( *
T0*#
_class
loc:@FullyConnected/b*
use_nesterov( 
�
8Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam	ApplyAdamFullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_2*
use_locking( *
T0*%
_class
loc:@FullyConnected_1/W*
use_nesterov( *
_output_shapes

:
�
8Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam	ApplyAdamFullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_3*%
_class
loc:@FullyConnected_1/b*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0
�
8Adam/apply_grad_op_0/update_FullyConnected_2/W/ApplyAdam	ApplyAdamFullyConnected_2/WFullyConnected_2/W/AdamFullyConnected_2/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_4*%
_class
loc:@FullyConnected_2/W*
use_nesterov( *
_output_shapes

:
*
use_locking( *
T0
�
8Adam/apply_grad_op_0/update_FullyConnected_2/b/ApplyAdam	ApplyAdamFullyConnected_2/bFullyConnected_2/b/AdamFullyConnected_2/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_5*
_output_shapes
:
*
use_locking( *
T0*%
_class
loc:@FullyConnected_2/b*
use_nesterov( 
�
Adam/apply_grad_op_0/mulMulAdam/beta1_power/readAdam/apply_grad_op_0/beta17^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/b/ApplyAdam*#
_class
loc:@FullyConnected/W*
_output_shapes
: *
T0
�
Adam/apply_grad_op_0/AssignAssignAdam/beta1_powerAdam/apply_grad_op_0/mul*
use_locking( *
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
: 
�
Adam/apply_grad_op_0/mul_1MulAdam/beta2_power/readAdam/apply_grad_op_0/beta27^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/b/ApplyAdam*#
_class
loc:@FullyConnected/W*
_output_shapes
: *
T0
�
Adam/apply_grad_op_0/Assign_1AssignAdam/beta2_powerAdam/apply_grad_op_0/mul_1*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
: *
use_locking( *
T0
�
Adam/apply_grad_op_0/updateNoOp7^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/b/ApplyAdam^Adam/apply_grad_op_0/Assign^Adam/apply_grad_op_0/Assign_1
�
Adam/apply_grad_op_0/valueConst^Adam/apply_grad_op_0/update*
valueB
 *  �?* 
_class
loc:@Training_step*
dtype0*
_output_shapes
: 
�
Adam/apply_grad_op_0	AssignAddTraining_stepAdam/apply_grad_op_0/value*
_output_shapes
: *
use_locking( *
T0* 
_class
loc:@Training_step
]
Adam/Merge/MergeSummaryMergeSummaryLossAdam/Loss/raw*
N*
_output_shapes
: 
.
Adam/train_op_0NoOp^Adam/apply_grad_op_0
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst*
_output_shapes
:*�
value�B�BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BFullyConnected_2/WBFullyConnected_2/W/AdamBFullyConnected_2/W/Adam_1BFullyConnected_2/bBFullyConnected_2/b/AdamBFullyConnected_2/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
dtype0
�
save/SaveV2/shape_and_slicesConst*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAccuracy/Mean/moving_avgAdam/beta1_powerAdam/beta2_powerCrossentropy/Mean/moving_avgFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1FullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1FullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1FullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1FullyConnected_2/WFullyConnected_2/W/AdamFullyConnected_2/W/Adam_1FullyConnected_2/bFullyConnected_2/b/AdamFullyConnected_2/b/Adam_1Global_StepTraining_stepis_trainingval_accval_loss*)
dtypes
2

}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*�
value�B�BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BFullyConnected_2/WBFullyConnected_2/W/AdamBFullyConnected_2/W/Adam_1BFullyConnected_2/bBFullyConnected_2/b/AdamBFullyConnected_2/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
dtype0
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2

�
save/AssignAssignAccuracy/Mean/moving_avgsave/RestoreV2*
use_locking(*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
validate_shape(*
_output_shapes
: 
�
save/Assign_1AssignAdam/beta1_powersave/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
: 
�
save/Assign_2AssignAdam/beta2_powersave/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
: 
�
save/Assign_3AssignCrossentropy/Mean/moving_avgsave/RestoreV2:3*
use_locking(*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
validate_shape(*
_output_shapes
: 
�
save/Assign_4AssignFullyConnected/Wsave/RestoreV2:4*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes

:9*
use_locking(*
T0
�
save/Assign_5AssignFullyConnected/W/Adamsave/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes

:9
�
save/Assign_6AssignFullyConnected/W/Adam_1save/RestoreV2:6*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes

:9*
use_locking(*
T0
�
save/Assign_7AssignFullyConnected/bsave/RestoreV2:7*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save/Assign_8AssignFullyConnected/b/Adamsave/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes
:
�
save/Assign_9AssignFullyConnected/b/Adam_1save/RestoreV2:9*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save/Assign_10AssignFullyConnected_1/Wsave/RestoreV2:10*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes

:
�
save/Assign_11AssignFullyConnected_1/W/Adamsave/RestoreV2:11*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes

:*
use_locking(
�
save/Assign_12AssignFullyConnected_1/W/Adam_1save/RestoreV2:12*
_output_shapes

:*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(
�
save/Assign_13AssignFullyConnected_1/bsave/RestoreV2:13*
_output_shapes
:*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(
�
save/Assign_14AssignFullyConnected_1/b/Adamsave/RestoreV2:14*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
�
save/Assign_15AssignFullyConnected_1/b/Adam_1save/RestoreV2:15*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
�
save/Assign_16AssignFullyConnected_2/Wsave/RestoreV2:16*
_output_shapes

:
*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/W*
validate_shape(
�
save/Assign_17AssignFullyConnected_2/W/Adamsave/RestoreV2:17*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/W*
validate_shape(*
_output_shapes

:

�
save/Assign_18AssignFullyConnected_2/W/Adam_1save/RestoreV2:18*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/W*
validate_shape(*
_output_shapes

:

�
save/Assign_19AssignFullyConnected_2/bsave/RestoreV2:19*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(*
_output_shapes
:

�
save/Assign_20AssignFullyConnected_2/b/Adamsave/RestoreV2:20*
validate_shape(*
_output_shapes
:
*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/b
�
save/Assign_21AssignFullyConnected_2/b/Adam_1save/RestoreV2:21*%
_class
loc:@FullyConnected_2/b*
validate_shape(*
_output_shapes
:
*
use_locking(*
T0
�
save/Assign_22AssignGlobal_Stepsave/RestoreV2:22*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Global_Step*
validate_shape(
�
save/Assign_23AssignTraining_stepsave/RestoreV2:23*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@Training_step*
validate_shape(
�
save/Assign_24Assignis_trainingsave/RestoreV2:24*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
*
_class
loc:@is_training
�
save/Assign_25Assignval_accsave/RestoreV2:25*
use_locking(*
T0*
_class
loc:@val_acc*
validate_shape(*
_output_shapes
: 
�
save/Assign_26Assignval_losssave/RestoreV2:26*
use_locking(*
T0*
_class
loc:@val_loss*
validate_shape(*
_output_shapes
: 
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_1/SaveV2/tensor_namesConst*
_output_shapes
:*�
value�B�BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BFullyConnected_2/WBFullyConnected_2/W/AdamBFullyConnected_2/W/Adam_1BFullyConnected_2/bBFullyConnected_2/b/AdamBFullyConnected_2/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
dtype0
�
save_1/SaveV2/shape_and_slicesConst*
_output_shapes
:*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
�
save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesAccuracy/Mean/moving_avgAdam/beta1_powerAdam/beta2_powerCrossentropy/Mean/moving_avgFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1FullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1FullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1FullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1FullyConnected_2/WFullyConnected_2/W/AdamFullyConnected_2/W/Adam_1FullyConnected_2/bFullyConnected_2/b/AdamFullyConnected_2/b/Adam_1Global_StepTraining_stepis_trainingval_accval_loss*)
dtypes
2

�
save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
_class
loc:@save_1/Const*
_output_shapes
: *
T0
�
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*�
value�B�BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BFullyConnected_2/WBFullyConnected_2/W/AdamBFullyConnected_2/W/Adam_1BFullyConnected_2/bBFullyConnected_2/b/AdamBFullyConnected_2/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss
�
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2

�
save_1/AssignAssignAccuracy/Mean/moving_avgsave_1/RestoreV2*
use_locking(*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
validate_shape(*
_output_shapes
: 
�
save_1/Assign_1AssignAdam/beta1_powersave_1/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
: 
�
save_1/Assign_2AssignAdam/beta2_powersave_1/RestoreV2:2*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_1/Assign_3AssignCrossentropy/Mean/moving_avgsave_1/RestoreV2:3*
_output_shapes
: *
use_locking(*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
validate_shape(
�
save_1/Assign_4AssignFullyConnected/Wsave_1/RestoreV2:4*
_output_shapes

:9*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(
�
save_1/Assign_5AssignFullyConnected/W/Adamsave_1/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes

:9
�
save_1/Assign_6AssignFullyConnected/W/Adam_1save_1/RestoreV2:6*
_output_shapes

:9*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(
�
save_1/Assign_7AssignFullyConnected/bsave_1/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes
:
�
save_1/Assign_8AssignFullyConnected/b/Adamsave_1/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes
:
�
save_1/Assign_9AssignFullyConnected/b/Adam_1save_1/RestoreV2:9*
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(
�
save_1/Assign_10AssignFullyConnected_1/Wsave_1/RestoreV2:10*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes

:
�
save_1/Assign_11AssignFullyConnected_1/W/Adamsave_1/RestoreV2:11*
_output_shapes

:*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(
�
save_1/Assign_12AssignFullyConnected_1/W/Adam_1save_1/RestoreV2:12*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes

:
�
save_1/Assign_13AssignFullyConnected_1/bsave_1/RestoreV2:13*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b
�
save_1/Assign_14AssignFullyConnected_1/b/Adamsave_1/RestoreV2:14*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
�
save_1/Assign_15AssignFullyConnected_1/b/Adam_1save_1/RestoreV2:15*
_output_shapes
:*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(
�
save_1/Assign_16AssignFullyConnected_2/Wsave_1/RestoreV2:16*
T0*%
_class
loc:@FullyConnected_2/W*
validate_shape(*
_output_shapes

:
*
use_locking(
�
save_1/Assign_17AssignFullyConnected_2/W/Adamsave_1/RestoreV2:17*
T0*%
_class
loc:@FullyConnected_2/W*
validate_shape(*
_output_shapes

:
*
use_locking(
�
save_1/Assign_18AssignFullyConnected_2/W/Adam_1save_1/RestoreV2:18*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/W*
validate_shape(*
_output_shapes

:

�
save_1/Assign_19AssignFullyConnected_2/bsave_1/RestoreV2:19*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(*
_output_shapes
:
*
use_locking(
�
save_1/Assign_20AssignFullyConnected_2/b/Adamsave_1/RestoreV2:20*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(*
_output_shapes
:

�
save_1/Assign_21AssignFullyConnected_2/b/Adam_1save_1/RestoreV2:21*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(*
_output_shapes
:

�
save_1/Assign_22AssignGlobal_Stepsave_1/RestoreV2:22*
use_locking(*
T0*
_class
loc:@Global_Step*
validate_shape(*
_output_shapes
: 
�
save_1/Assign_23AssignTraining_stepsave_1/RestoreV2:23*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@Training_step*
validate_shape(
�
save_1/Assign_24Assignis_trainingsave_1/RestoreV2:24*
_output_shapes
: *
use_locking(*
T0
*
_class
loc:@is_training*
validate_shape(
�
save_1/Assign_25Assignval_accsave_1/RestoreV2:25*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@val_acc*
validate_shape(
�
save_1/Assign_26Assignval_losssave_1/RestoreV2:26*
use_locking(*
T0*
_class
loc:@val_loss*
validate_shape(*
_output_shapes
: 
�
save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26
R
save_2/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_2/SaveV2/tensor_namesConst*�
value~B|BFullyConnected/WBFullyConnected/bBFullyConnected_1/WBFullyConnected_1/bBFullyConnected_2/WBFullyConnected_2/b*
dtype0*
_output_shapes
:
q
save_2/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0*
_output_shapes
:
�
save_2/SaveV2SaveV2save_2/Constsave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesFullyConnected/WFullyConnected/bFullyConnected_1/WFullyConnected_1/bFullyConnected_2/WFullyConnected_2/b*
dtypes

2
�
save_2/control_dependencyIdentitysave_2/Const^save_2/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save_2/Const
�
save_2/RestoreV2/tensor_namesConst"/device:CPU:0*�
value~B|BFullyConnected/WBFullyConnected/bBFullyConnected_1/WBFullyConnected_1/bBFullyConnected_2/WBFullyConnected_2/b*
dtype0*
_output_shapes
:
�
!save_2/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B B B B B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices"/device:CPU:0*,
_output_shapes
::::::*
dtypes

2
�
save_2/AssignAssignFullyConnected/Wsave_2/RestoreV2*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes

:9*
use_locking(*
T0
�
save_2/Assign_1AssignFullyConnected/bsave_2/RestoreV2:1*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_2/Assign_2AssignFullyConnected_1/Wsave_2/RestoreV2:2*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes

:
�
save_2/Assign_3AssignFullyConnected_1/bsave_2/RestoreV2:3*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
�
save_2/Assign_4AssignFullyConnected_2/Wsave_2/RestoreV2:4*
_output_shapes

:
*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/W*
validate_shape(
�
save_2/Assign_5AssignFullyConnected_2/bsave_2/RestoreV2:5*
_output_shapes
:
*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(
�
save_2/restore_allNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_2^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5
�
initNoOp^FullyConnected/W/Assign^FullyConnected/b/Assign^FullyConnected_1/W/Assign^FullyConnected_1/b/Assign^FullyConnected_2/W/Assign^FullyConnected_2/b/Assign^Training_step/Assign^is_training/Assign^Global_Step/Assign^val_loss/Assign^val_acc/Assign ^Accuracy/Mean/moving_avg/Assign$^Crossentropy/Mean/moving_avg/Assign^Adam/beta1_power/Assign^Adam/beta2_power/Assign^FullyConnected/W/Adam/Assign^FullyConnected/W/Adam_1/Assign^FullyConnected/b/Adam/Assign^FullyConnected/b/Adam_1/Assign^FullyConnected_1/W/Adam/Assign!^FullyConnected_1/W/Adam_1/Assign^FullyConnected_1/b/Adam/Assign!^FullyConnected_1/b/Adam_1/Assign^FullyConnected_2/W/Adam/Assign!^FullyConnected_2/W/Adam_1/Assign^FullyConnected_2/b/Adam/Assign!^FullyConnected_2/b/Adam_1/Assign

init_1NoOp
"

group_depsNoOp^init^init_1
#
init_2NoOp^is_training/Assign
R
save_3/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
�
save_3/SaveV2/tensor_namesConst*�
value�B�BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BFullyConnected_2/WBFullyConnected_2/W/AdamBFullyConnected_2/W/Adam_1BFullyConnected_2/bBFullyConnected_2/b/AdamBFullyConnected_2/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
dtype0*
_output_shapes
:
�
save_3/SaveV2/shape_and_slicesConst*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_3/SaveV2SaveV2save_3/Constsave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesAccuracy/Mean/moving_avgAdam/beta1_powerAdam/beta2_powerCrossentropy/Mean/moving_avgFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1FullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1FullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1FullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1FullyConnected_2/WFullyConnected_2/W/AdamFullyConnected_2/W/Adam_1FullyConnected_2/bFullyConnected_2/b/AdamFullyConnected_2/b/Adam_1Global_StepTraining_stepis_trainingval_accval_loss*)
dtypes
2

�
save_3/control_dependencyIdentitysave_3/Const^save_3/SaveV2*
T0*
_class
loc:@save_3/Const*
_output_shapes
: 
�
save_3/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BFullyConnected_2/WBFullyConnected_2/W/AdamBFullyConnected_2/W/Adam_1BFullyConnected_2/bBFullyConnected_2/b/AdamBFullyConnected_2/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
dtype0*
_output_shapes
:
�
!save_3/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2

�
save_3/AssignAssignAccuracy/Mean/moving_avgsave_3/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg
�
save_3/Assign_1AssignAdam/beta1_powersave_3/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(
�
save_3/Assign_2AssignAdam/beta2_powersave_3/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
: 
�
save_3/Assign_3AssignCrossentropy/Mean/moving_avgsave_3/RestoreV2:3*
use_locking(*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
validate_shape(*
_output_shapes
: 
�
save_3/Assign_4AssignFullyConnected/Wsave_3/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes

:9
�
save_3/Assign_5AssignFullyConnected/W/Adamsave_3/RestoreV2:5*
_output_shapes

:9*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(
�
save_3/Assign_6AssignFullyConnected/W/Adam_1save_3/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes

:9
�
save_3/Assign_7AssignFullyConnected/bsave_3/RestoreV2:7*
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(
�
save_3/Assign_8AssignFullyConnected/b/Adamsave_3/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes
:
�
save_3/Assign_9AssignFullyConnected/b/Adam_1save_3/RestoreV2:9*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_3/Assign_10AssignFullyConnected_1/Wsave_3/RestoreV2:10*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes

:*
use_locking(
�
save_3/Assign_11AssignFullyConnected_1/W/Adamsave_3/RestoreV2:11*
_output_shapes

:*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(
�
save_3/Assign_12AssignFullyConnected_1/W/Adam_1save_3/RestoreV2:12*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes

:
�
save_3/Assign_13AssignFullyConnected_1/bsave_3/RestoreV2:13*
_output_shapes
:*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(
�
save_3/Assign_14AssignFullyConnected_1/b/Adamsave_3/RestoreV2:14*
_output_shapes
:*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(
�
save_3/Assign_15AssignFullyConnected_1/b/Adam_1save_3/RestoreV2:15*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_3/Assign_16AssignFullyConnected_2/Wsave_3/RestoreV2:16*
validate_shape(*
_output_shapes

:
*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/W
�
save_3/Assign_17AssignFullyConnected_2/W/Adamsave_3/RestoreV2:17*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/W*
validate_shape(*
_output_shapes

:

�
save_3/Assign_18AssignFullyConnected_2/W/Adam_1save_3/RestoreV2:18*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/W*
validate_shape(*
_output_shapes

:

�
save_3/Assign_19AssignFullyConnected_2/bsave_3/RestoreV2:19*
_output_shapes
:
*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(
�
save_3/Assign_20AssignFullyConnected_2/b/Adamsave_3/RestoreV2:20*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(*
_output_shapes
:

�
save_3/Assign_21AssignFullyConnected_2/b/Adam_1save_3/RestoreV2:21*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(*
_output_shapes
:
*
use_locking(
�
save_3/Assign_22AssignGlobal_Stepsave_3/RestoreV2:22*
_class
loc:@Global_Step*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_3/Assign_23AssignTraining_stepsave_3/RestoreV2:23*
T0* 
_class
loc:@Training_step*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_3/Assign_24Assignis_trainingsave_3/RestoreV2:24*
T0
*
_class
loc:@is_training*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_3/Assign_25Assignval_accsave_3/RestoreV2:25*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@val_acc*
validate_shape(
�
save_3/Assign_26Assignval_losssave_3/RestoreV2:26*
use_locking(*
T0*
_class
loc:@val_loss*
validate_shape(*
_output_shapes
: 
�
save_3/restore_allNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_2^save_3/Assign_3^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_19^save_3/Assign_20^save_3/Assign_21^save_3/Assign_22^save_3/Assign_23^save_3/Assign_24^save_3/Assign_25^save_3/Assign_26"�CUS��     s�Q	Id�Z���AJ��
�!�!
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	��
�
	ApplyAdam
var"T�	
m"T�	
v"T�
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T�" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
�
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
s
	AssignAdd
ref"T�

value"T

output_ref"T�" 
Ttype:
2	"
use_lockingbool( 
s
	AssignSub
ref"T�

value"T

output_ref"T�" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
B
Equal
x"T
y"T
z
"
Ttype:
2	
�
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
8
FloorMod
x"T
y"T
z"T"
Ttype:	
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
2
L2Loss
t"T
output"T"
Ttype:
2
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	�
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
;
Minimum
x"T
y"T
z"T"
Ttype:

2	�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
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
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
�
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �*1.7.02v1.7.0-3-g024aecf414��
n
InputData/XPlaceholder*
shape:���������9*
dtype0*'
_output_shapes
:���������9
�
3FullyConnected/W/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"9      *#
_class
loc:@FullyConnected/W
�
2FullyConnected/W/Initializer/truncated_normal/meanConst*
valueB
 *    *#
_class
loc:@FullyConnected/W*
dtype0*
_output_shapes
: 
�
4FullyConnected/W/Initializer/truncated_normal/stddevConst*
valueB
 *
ף<*#
_class
loc:@FullyConnected/W*
dtype0*
_output_shapes
: 
�
=FullyConnected/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal3FullyConnected/W/Initializer/truncated_normal/shape*
dtype0*
_output_shapes

:9*

seed *
T0*#
_class
loc:@FullyConnected/W*
seed2 
�
1FullyConnected/W/Initializer/truncated_normal/mulMul=FullyConnected/W/Initializer/truncated_normal/TruncatedNormal4FullyConnected/W/Initializer/truncated_normal/stddev*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes

:9
�
-FullyConnected/W/Initializer/truncated_normalAdd1FullyConnected/W/Initializer/truncated_normal/mul2FullyConnected/W/Initializer/truncated_normal/mean*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes

:9
�
FullyConnected/W
VariableV2*
shape
:9*
dtype0*
_output_shapes

:9*
shared_name *#
_class
loc:@FullyConnected/W*
	container 
�
FullyConnected/W/AssignAssignFullyConnected/W-FullyConnected/W/Initializer/truncated_normal*
_output_shapes

:9*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(
�
FullyConnected/W/readIdentityFullyConnected/W*
_output_shapes

:9*
T0*#
_class
loc:@FullyConnected/W
�
"FullyConnected/b/Initializer/ConstConst*
_output_shapes
:*
valueB*    *#
_class
loc:@FullyConnected/b*
dtype0
�
FullyConnected/b
VariableV2*
dtype0*
_output_shapes
:*
shared_name *#
_class
loc:@FullyConnected/b*
	container *
shape:
�
FullyConnected/b/AssignAssignFullyConnected/b"FullyConnected/b/Initializer/Const*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes
:
}
FullyConnected/b/readIdentityFullyConnected/b*
_output_shapes
:*
T0*#
_class
loc:@FullyConnected/b
�
FullyConnected/MatMulMatMulInputData/XFullyConnected/W/read*
transpose_b( *
T0*'
_output_shapes
:���������*
transpose_a( 
�
FullyConnected/BiasAddBiasAddFullyConnected/MatMulFullyConnected/b/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
�
5FullyConnected_1/W/Initializer/truncated_normal/shapeConst*
valueB"      *%
_class
loc:@FullyConnected_1/W*
dtype0*
_output_shapes
:
�
4FullyConnected_1/W/Initializer/truncated_normal/meanConst*
valueB
 *    *%
_class
loc:@FullyConnected_1/W*
dtype0*
_output_shapes
: 
�
6FullyConnected_1/W/Initializer/truncated_normal/stddevConst*
valueB
 *
ף<*%
_class
loc:@FullyConnected_1/W*
dtype0*
_output_shapes
: 
�
?FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5FullyConnected_1/W/Initializer/truncated_normal/shape*

seed *
T0*%
_class
loc:@FullyConnected_1/W*
seed2 *
dtype0*
_output_shapes

:
�
3FullyConnected_1/W/Initializer/truncated_normal/mulMul?FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormal6FullyConnected_1/W/Initializer/truncated_normal/stddev*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
/FullyConnected_1/W/Initializer/truncated_normalAdd3FullyConnected_1/W/Initializer/truncated_normal/mul4FullyConnected_1/W/Initializer/truncated_normal/mean*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:*
T0
�
FullyConnected_1/W
VariableV2*
shape
:*
dtype0*
_output_shapes

:*
shared_name *%
_class
loc:@FullyConnected_1/W*
	container 
�
FullyConnected_1/W/AssignAssignFullyConnected_1/W/FullyConnected_1/W/Initializer/truncated_normal*
_output_shapes

:*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(
�
FullyConnected_1/W/readIdentityFullyConnected_1/W*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
$FullyConnected_1/b/Initializer/ConstConst*
valueB*    *%
_class
loc:@FullyConnected_1/b*
dtype0*
_output_shapes
:
�
FullyConnected_1/b
VariableV2*
dtype0*
_output_shapes
:*
shared_name *%
_class
loc:@FullyConnected_1/b*
	container *
shape:
�
FullyConnected_1/b/AssignAssignFullyConnected_1/b$FullyConnected_1/b/Initializer/Const*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b
�
FullyConnected_1/b/readIdentityFullyConnected_1/b*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0
�
FullyConnected_1/MatMulMatMulFullyConnected/BiasAddFullyConnected_1/W/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
�
FullyConnected_1/BiasAddBiasAddFullyConnected_1/MatMulFullyConnected_1/b/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
�
5FullyConnected_2/W/Initializer/truncated_normal/shapeConst*
valueB"   
   *%
_class
loc:@FullyConnected_2/W*
dtype0*
_output_shapes
:
�
4FullyConnected_2/W/Initializer/truncated_normal/meanConst*
valueB
 *    *%
_class
loc:@FullyConnected_2/W*
dtype0*
_output_shapes
: 
�
6FullyConnected_2/W/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
valueB
 *
ף<*%
_class
loc:@FullyConnected_2/W*
dtype0
�
?FullyConnected_2/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5FullyConnected_2/W/Initializer/truncated_normal/shape*
dtype0*
_output_shapes

:
*

seed *
T0*%
_class
loc:@FullyConnected_2/W*
seed2 
�
3FullyConnected_2/W/Initializer/truncated_normal/mulMul?FullyConnected_2/W/Initializer/truncated_normal/TruncatedNormal6FullyConnected_2/W/Initializer/truncated_normal/stddev*
_output_shapes

:
*
T0*%
_class
loc:@FullyConnected_2/W
�
/FullyConnected_2/W/Initializer/truncated_normalAdd3FullyConnected_2/W/Initializer/truncated_normal/mul4FullyConnected_2/W/Initializer/truncated_normal/mean*
T0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:

�
FullyConnected_2/W
VariableV2*%
_class
loc:@FullyConnected_2/W*
	container *
shape
:
*
dtype0*
_output_shapes

:
*
shared_name 
�
FullyConnected_2/W/AssignAssignFullyConnected_2/W/FullyConnected_2/W/Initializer/truncated_normal*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/W*
validate_shape(*
_output_shapes

:

�
FullyConnected_2/W/readIdentityFullyConnected_2/W*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:
*
T0
�
$FullyConnected_2/b/Initializer/ConstConst*
valueB
*    *%
_class
loc:@FullyConnected_2/b*
dtype0*
_output_shapes
:

�
FullyConnected_2/b
VariableV2*
_output_shapes
:
*
shared_name *%
_class
loc:@FullyConnected_2/b*
	container *
shape:
*
dtype0
�
FullyConnected_2/b/AssignAssignFullyConnected_2/b$FullyConnected_2/b/Initializer/Const*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(*
_output_shapes
:

�
FullyConnected_2/b/readIdentityFullyConnected_2/b*
T0*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:

�
FullyConnected_2/MatMulMatMulFullyConnected_1/BiasAddFullyConnected_2/W/read*
transpose_b( *
T0*'
_output_shapes
:���������
*
transpose_a( 
�
FullyConnected_2/BiasAddBiasAddFullyConnected_2/MatMulFullyConnected_2/b/read*
T0*
data_formatNHWC*'
_output_shapes
:���������

o
FullyConnected_2/SoftmaxSoftmaxFullyConnected_2/BiasAdd*
T0*'
_output_shapes
:���������

p
TargetsData/YPlaceholder*
dtype0*'
_output_shapes
:���������
*
shape:���������

[
Accuracy/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
Accuracy/ArgMaxArgMaxFullyConnected_2/SoftmaxAccuracy/ArgMax/dimension*
output_type0	*#
_output_shapes
:���������*

Tidx0*
T0
]
Accuracy/ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
Accuracy/ArgMax_1ArgMaxTargetsData/YAccuracy/ArgMax_1/dimension*
T0*
output_type0	*#
_output_shapes
:���������*

Tidx0
i
Accuracy/EqualEqualAccuracy/ArgMaxAccuracy/ArgMax_1*#
_output_shapes
:���������*
T0	
b
Accuracy/CastCastAccuracy/Equal*#
_output_shapes
:���������*

DstT0*

SrcT0

X
Accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
r
Accuracy/MeanMeanAccuracy/CastAccuracy/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
d
"Crossentropy/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
Crossentropy/SumSumFullyConnected_2/Softmax"Crossentropy/Sum/reduction_indices*'
_output_shapes
:���������*

Tidx0*
	keep_dims(*
T0
}
Crossentropy/truedivRealDivFullyConnected_2/SoftmaxCrossentropy/Sum*
T0*'
_output_shapes
:���������

X
Crossentropy/Cast/xConst*
valueB
 *���.*
dtype0*
_output_shapes
: 
Z
Crossentropy/Cast_1/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
"Crossentropy/clip_by_value/MinimumMinimumCrossentropy/truedivCrossentropy/Cast_1/x*'
_output_shapes
:���������
*
T0
�
Crossentropy/clip_by_valueMaximum"Crossentropy/clip_by_value/MinimumCrossentropy/Cast/x*
T0*'
_output_shapes
:���������

e
Crossentropy/LogLogCrossentropy/clip_by_value*
T0*'
_output_shapes
:���������

j
Crossentropy/mulMulTargetsData/YCrossentropy/Log*
T0*'
_output_shapes
:���������

f
$Crossentropy/Sum_1/reduction_indicesConst*
_output_shapes
: *
value	B :*
dtype0
�
Crossentropy/Sum_1SumCrossentropy/mul$Crossentropy/Sum_1/reduction_indices*#
_output_shapes
:���������*

Tidx0*
	keep_dims( *
T0
Y
Crossentropy/NegNegCrossentropy/Sum_1*
T0*#
_output_shapes
:���������
\
Crossentropy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
}
Crossentropy/MeanMeanCrossentropy/NegCrossentropy/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
`
Training_step/initial_valueConst*
_output_shapes
: *
valueB
 *    *
dtype0
q
Training_step
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
�
Training_step/AssignAssignTraining_stepTraining_step/initial_value*
use_locking(*
T0* 
_class
loc:@Training_step*
validate_shape(*
_output_shapes
: 
p
Training_step/readIdentityTraining_step*
_output_shapes
: *
T0* 
_class
loc:@Training_step

is_training/Initializer/ConstConst*
value	B
 Z *
_class
loc:@is_training*
dtype0
*
_output_shapes
: 
�
is_training
VariableV2*
dtype0
*
_output_shapes
: *
shared_name *
_class
loc:@is_training*
	container *
shape: 
�
is_training/AssignAssignis_trainingis_training/Initializer/Const*
use_locking(*
T0
*
_class
loc:@is_training*
validate_shape(*
_output_shapes
: 
j
is_training/readIdentityis_training*
T0
*
_class
loc:@is_training*
_output_shapes
: 
N
Assign/valueConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
�
AssignAssignis_trainingAssign/value*
use_locking(*
T0
*
_class
loc:@is_training*
validate_shape(*
_output_shapes
: 
P
Assign_1/valueConst*
dtype0
*
_output_shapes
: *
value	B
 Z 
�
Assign_1Assignis_trainingAssign_1/value*
use_locking(*
T0
*
_class
loc:@is_training*
validate_shape(*
_output_shapes
: 
^
Global_Step/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
Global_Step
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
Global_Step/AssignAssignGlobal_StepGlobal_Step/initial_value*
use_locking(*
T0*
_class
loc:@Global_Step*
validate_shape(*
_output_shapes
: 
j
Global_Step/readIdentityGlobal_Step*
T0*
_class
loc:@Global_Step*
_output_shapes
: 
J
Add/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
D
AddAddGlobal_Step/readAdd/y*
T0*
_output_shapes
: 
�
Assign_2AssignGlobal_StepAdd*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Global_Step*
validate_shape(
[
val_loss/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
l
val_loss
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
�
val_loss/AssignAssignval_lossval_loss/initial_value*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@val_loss*
validate_shape(
a
val_loss/readIdentityval_loss*
T0*
_class
loc:@val_loss*
_output_shapes
: 
Z
val_acc/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
k
val_acc
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
val_acc/AssignAssignval_accval_acc/initial_value*
use_locking(*
T0*
_class
loc:@val_acc*
validate_shape(*
_output_shapes
: 
^
val_acc/readIdentityval_acc*
T0*
_class
loc:@val_acc*
_output_shapes
: 
Y
placeholder/val_lossPlaceholder*
dtype0*
_output_shapes
:*
shape:
X
placeholder/val_accPlaceholder*
dtype0*
_output_shapes
:*
shape:
�
assign/val_lossAssignval_lossplaceholder/val_loss*
_class
loc:@val_loss*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
assign/val_accAssignval_accplaceholder/val_acc*
_class
loc:@val_acc*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
:Accuracy/Mean/moving_avg/Initializer/zeros/shape_as_tensorConst*
_output_shapes
: *
valueB *+
_class!
loc:@Accuracy/Mean/moving_avg*
dtype0
�
0Accuracy/Mean/moving_avg/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *+
_class!
loc:@Accuracy/Mean/moving_avg
�
*Accuracy/Mean/moving_avg/Initializer/zerosFill:Accuracy/Mean/moving_avg/Initializer/zeros/shape_as_tensor0Accuracy/Mean/moving_avg/Initializer/zeros/Const*

index_type0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: *
T0
�
Accuracy/Mean/moving_avg
VariableV2*
shared_name *+
_class!
loc:@Accuracy/Mean/moving_avg*
	container *
shape: *
dtype0*
_output_shapes
: 
�
Accuracy/Mean/moving_avg/AssignAssignAccuracy/Mean/moving_avg*Accuracy/Mean/moving_avg/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg
�
Accuracy/Mean/moving_avg/readIdentityAccuracy/Mean/moving_avg*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
U
moving_avg/decayConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
U
moving_avg/add/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
\
moving_avg/addAddmoving_avg/add/xTraining_step/read*
_output_shapes
: *
T0
W
moving_avg/add_1/xConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
`
moving_avg/add_1Addmoving_avg/add_1/xTraining_step/read*
T0*
_output_shapes
: 
`
moving_avg/truedivRealDivmoving_avg/addmoving_avg/add_1*
_output_shapes
: *
T0
d
moving_avg/MinimumMinimummoving_avg/decaymoving_avg/truediv*
_output_shapes
: *
T0
�
 moving_avg/AssignMovingAvg/sub/xConst*
valueB
 *  �?*+
_class!
loc:@Accuracy/Mean/moving_avg*
dtype0*
_output_shapes
: 
�
moving_avg/AssignMovingAvg/subSub moving_avg/AssignMovingAvg/sub/xmoving_avg/Minimum*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
�
 moving_avg/AssignMovingAvg/sub_1SubAccuracy/Mean/moving_avg/readAccuracy/Mean*
_output_shapes
: *
T0*+
_class!
loc:@Accuracy/Mean/moving_avg
�
moving_avg/AssignMovingAvg/mulMul moving_avg/AssignMovingAvg/sub_1moving_avg/AssignMovingAvg/sub*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
�
moving_avg/AssignMovingAvg	AssignSubAccuracy/Mean/moving_avgmoving_avg/AssignMovingAvg/mul*
use_locking( *
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
/

moving_avgNoOp^moving_avg/AssignMovingAvg
O
Adam/Total_LossIdentityCrossentropy/Mean*
T0*
_output_shapes
: 
�
>Crossentropy/Mean/moving_avg/Initializer/zeros/shape_as_tensorConst*
valueB */
_class%
#!loc:@Crossentropy/Mean/moving_avg*
dtype0*
_output_shapes
: 
�
4Crossentropy/Mean/moving_avg/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    */
_class%
#!loc:@Crossentropy/Mean/moving_avg
�
.Crossentropy/Mean/moving_avg/Initializer/zerosFill>Crossentropy/Mean/moving_avg/Initializer/zeros/shape_as_tensor4Crossentropy/Mean/moving_avg/Initializer/zeros/Const*

index_type0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: *
T0
�
Crossentropy/Mean/moving_avg
VariableV2*
shared_name */
_class%
#!loc:@Crossentropy/Mean/moving_avg*
	container *
shape: *
dtype0*
_output_shapes
: 
�
#Crossentropy/Mean/moving_avg/AssignAssignCrossentropy/Mean/moving_avg.Crossentropy/Mean/moving_avg/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
validate_shape(
�
!Crossentropy/Mean/moving_avg/readIdentityCrossentropy/Mean/moving_avg*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
Z
Adam/moving_avg/decayConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Z
Adam/moving_avg/add/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
Adam/moving_avg/addAddAdam/moving_avg/add/xTraining_step/read*
_output_shapes
: *
T0
\
Adam/moving_avg/add_1/xConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
j
Adam/moving_avg/add_1AddAdam/moving_avg/add_1/xTraining_step/read*
T0*
_output_shapes
: 
o
Adam/moving_avg/truedivRealDivAdam/moving_avg/addAdam/moving_avg/add_1*
T0*
_output_shapes
: 
s
Adam/moving_avg/MinimumMinimumAdam/moving_avg/decayAdam/moving_avg/truediv*
T0*
_output_shapes
: 
�
%Adam/moving_avg/AssignMovingAvg/sub/xConst*
valueB
 *  �?*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
dtype0*
_output_shapes
: 
�
#Adam/moving_avg/AssignMovingAvg/subSub%Adam/moving_avg/AssignMovingAvg/sub/xAdam/moving_avg/Minimum*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
�
%Adam/moving_avg/AssignMovingAvg/sub_1Sub!Crossentropy/Mean/moving_avg/readCrossentropy/Mean*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: *
T0
�
#Adam/moving_avg/AssignMovingAvg/mulMul%Adam/moving_avg/AssignMovingAvg/sub_1#Adam/moving_avg/AssignMovingAvg/sub*
_output_shapes
: *
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg
�
Adam/moving_avg/AssignMovingAvg	AssignSubCrossentropy/Mean/moving_avg#Adam/moving_avg/AssignMovingAvg/mul*
use_locking( *
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
9
Adam/moving_avgNoOp ^Adam/moving_avg/AssignMovingAvg
N
	Loss/tagsConst*
valueB
 BLoss*
dtype0*
_output_shapes
: 
d
LossScalarSummary	Loss/tags!Crossentropy/Mean/moving_avg/read*
_output_shapes
: *
T0
`
Adam/Loss/raw/tagsConst*
valueB BAdam/Loss/raw*
dtype0*
_output_shapes
: 
f
Adam/Loss/rawScalarSummaryAdam/Loss/raw/tagsCrossentropy/Mean*
_output_shapes
: *
T0
v
Adam/gradients/ShapeConst^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
|
Adam/gradients/grad_ys_0Const^Adam/moving_avg^moving_avg*
_output_shapes
: *
valueB
 *  �?*
dtype0
~
Adam/gradients/FillFillAdam/gradients/ShapeAdam/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
�
3Adam/gradients/Crossentropy/Mean_grad/Reshape/shapeConst^Adam/moving_avg^moving_avg*
_output_shapes
:*
valueB:*
dtype0
�
-Adam/gradients/Crossentropy/Mean_grad/ReshapeReshapeAdam/gradients/Fill3Adam/gradients/Crossentropy/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
�
+Adam/gradients/Crossentropy/Mean_grad/ShapeShapeCrossentropy/Neg^Adam/moving_avg^moving_avg*
_output_shapes
:*
T0*
out_type0
�
*Adam/gradients/Crossentropy/Mean_grad/TileTile-Adam/gradients/Crossentropy/Mean_grad/Reshape+Adam/gradients/Crossentropy/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:���������
�
-Adam/gradients/Crossentropy/Mean_grad/Shape_1ShapeCrossentropy/Neg^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
�
-Adam/gradients/Crossentropy/Mean_grad/Shape_2Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
�
+Adam/gradients/Crossentropy/Mean_grad/ConstConst^Adam/moving_avg^moving_avg*
valueB: *
dtype0*
_output_shapes
:
�
*Adam/gradients/Crossentropy/Mean_grad/ProdProd-Adam/gradients/Crossentropy/Mean_grad/Shape_1+Adam/gradients/Crossentropy/Mean_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
�
-Adam/gradients/Crossentropy/Mean_grad/Const_1Const^Adam/moving_avg^moving_avg*
valueB: *
dtype0*
_output_shapes
:
�
,Adam/gradients/Crossentropy/Mean_grad/Prod_1Prod-Adam/gradients/Crossentropy/Mean_grad/Shape_2-Adam/gradients/Crossentropy/Mean_grad/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
/Adam/gradients/Crossentropy/Mean_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
value	B :*
dtype0
�
-Adam/gradients/Crossentropy/Mean_grad/MaximumMaximum,Adam/gradients/Crossentropy/Mean_grad/Prod_1/Adam/gradients/Crossentropy/Mean_grad/Maximum/y*
_output_shapes
: *
T0
�
.Adam/gradients/Crossentropy/Mean_grad/floordivFloorDiv*Adam/gradients/Crossentropy/Mean_grad/Prod-Adam/gradients/Crossentropy/Mean_grad/Maximum*
T0*
_output_shapes
: 
�
*Adam/gradients/Crossentropy/Mean_grad/CastCast.Adam/gradients/Crossentropy/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
�
-Adam/gradients/Crossentropy/Mean_grad/truedivRealDiv*Adam/gradients/Crossentropy/Mean_grad/Tile*Adam/gradients/Crossentropy/Mean_grad/Cast*
T0*#
_output_shapes
:���������
�
(Adam/gradients/Crossentropy/Neg_grad/NegNeg-Adam/gradients/Crossentropy/Mean_grad/truediv*#
_output_shapes
:���������*
T0
�
,Adam/gradients/Crossentropy/Sum_1_grad/ShapeShapeCrossentropy/mul^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
+Adam/gradients/Crossentropy/Sum_1_grad/SizeConst^Adam/moving_avg^moving_avg*
value	B :*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
dtype0*
_output_shapes
: 
�
*Adam/gradients/Crossentropy/Sum_1_grad/addAdd$Crossentropy/Sum_1/reduction_indices+Adam/gradients/Crossentropy/Sum_1_grad/Size*
T0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
*Adam/gradients/Crossentropy/Sum_1_grad/modFloorMod*Adam/gradients/Crossentropy/Sum_1_grad/add+Adam/gradients/Crossentropy/Sum_1_grad/Size*
T0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
.Adam/gradients/Crossentropy/Sum_1_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
dtype0*
_output_shapes
: 
�
2Adam/gradients/Crossentropy/Sum_1_grad/range/startConst^Adam/moving_avg^moving_avg*
value	B : *?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
dtype0*
_output_shapes
: 
�
2Adam/gradients/Crossentropy/Sum_1_grad/range/deltaConst^Adam/moving_avg^moving_avg*
value	B :*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
dtype0*
_output_shapes
: 
�
,Adam/gradients/Crossentropy/Sum_1_grad/rangeRange2Adam/gradients/Crossentropy/Sum_1_grad/range/start+Adam/gradients/Crossentropy/Sum_1_grad/Size2Adam/gradients/Crossentropy/Sum_1_grad/range/delta*

Tidx0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
:
�
1Adam/gradients/Crossentropy/Sum_1_grad/Fill/valueConst^Adam/moving_avg^moving_avg*
value	B :*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
dtype0*
_output_shapes
: 
�
+Adam/gradients/Crossentropy/Sum_1_grad/FillFill.Adam/gradients/Crossentropy/Sum_1_grad/Shape_11Adam/gradients/Crossentropy/Sum_1_grad/Fill/value*
_output_shapes
: *
T0*

index_type0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape
�
4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitchDynamicStitch,Adam/gradients/Crossentropy/Sum_1_grad/range*Adam/gradients/Crossentropy/Sum_1_grad/mod,Adam/gradients/Crossentropy/Sum_1_grad/Shape+Adam/gradients/Crossentropy/Sum_1_grad/Fill*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
N*#
_output_shapes
:���������*
T0
�
0Adam/gradients/Crossentropy/Sum_1_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
value	B :*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
dtype0*
_output_shapes
: 
�
.Adam/gradients/Crossentropy/Sum_1_grad/MaximumMaximum4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitch0Adam/gradients/Crossentropy/Sum_1_grad/Maximum/y*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*#
_output_shapes
:���������*
T0
�
/Adam/gradients/Crossentropy/Sum_1_grad/floordivFloorDiv,Adam/gradients/Crossentropy/Sum_1_grad/Shape.Adam/gradients/Crossentropy/Sum_1_grad/Maximum*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
:*
T0
�
.Adam/gradients/Crossentropy/Sum_1_grad/ReshapeReshape(Adam/gradients/Crossentropy/Neg_grad/Neg4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitch*
Tshape0*
_output_shapes
:*
T0
�
+Adam/gradients/Crossentropy/Sum_1_grad/TileTile.Adam/gradients/Crossentropy/Sum_1_grad/Reshape/Adam/gradients/Crossentropy/Sum_1_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:���������

�
*Adam/gradients/Crossentropy/mul_grad/ShapeShapeTargetsData/Y^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
,Adam/gradients/Crossentropy/mul_grad/Shape_1ShapeCrossentropy/Log^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
�
:Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgsBroadcastGradientArgs*Adam/gradients/Crossentropy/mul_grad/Shape,Adam/gradients/Crossentropy/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
(Adam/gradients/Crossentropy/mul_grad/MulMul+Adam/gradients/Crossentropy/Sum_1_grad/TileCrossentropy/Log*'
_output_shapes
:���������
*
T0
�
(Adam/gradients/Crossentropy/mul_grad/SumSum(Adam/gradients/Crossentropy/mul_grad/Mul:Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
,Adam/gradients/Crossentropy/mul_grad/ReshapeReshape(Adam/gradients/Crossentropy/mul_grad/Sum*Adam/gradients/Crossentropy/mul_grad/Shape*
Tshape0*'
_output_shapes
:���������
*
T0
�
*Adam/gradients/Crossentropy/mul_grad/Mul_1MulTargetsData/Y+Adam/gradients/Crossentropy/Sum_1_grad/Tile*
T0*'
_output_shapes
:���������

�
*Adam/gradients/Crossentropy/mul_grad/Sum_1Sum*Adam/gradients/Crossentropy/mul_grad/Mul_1<Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
.Adam/gradients/Crossentropy/mul_grad/Reshape_1Reshape*Adam/gradients/Crossentropy/mul_grad/Sum_1,Adam/gradients/Crossentropy/mul_grad/Shape_1*
Tshape0*'
_output_shapes
:���������
*
T0
�
/Adam/gradients/Crossentropy/Log_grad/Reciprocal
ReciprocalCrossentropy/clip_by_value^Adam/moving_avg^moving_avg/^Adam/gradients/Crossentropy/mul_grad/Reshape_1*
T0*'
_output_shapes
:���������

�
(Adam/gradients/Crossentropy/Log_grad/mulMul.Adam/gradients/Crossentropy/mul_grad/Reshape_1/Adam/gradients/Crossentropy/Log_grad/Reciprocal*
T0*'
_output_shapes
:���������

�
4Adam/gradients/Crossentropy/clip_by_value_grad/ShapeShape"Crossentropy/clip_by_value/Minimum^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1Const^Adam/moving_avg^moving_avg*
_output_shapes
: *
valueB *
dtype0
�
6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_2Shape(Adam/gradients/Crossentropy/Log_grad/mul*
T0*
out_type0*
_output_shapes
:
�
:Adam/gradients/Crossentropy/clip_by_value_grad/zeros/ConstConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
valueB
 *    *
dtype0
�
4Adam/gradients/Crossentropy/clip_by_value_grad/zerosFill6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_2:Adam/gradients/Crossentropy/clip_by_value_grad/zeros/Const*
T0*

index_type0*'
_output_shapes
:���������

�
;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqualGreaterEqual"Crossentropy/clip_by_value/MinimumCrossentropy/Cast/x^Adam/moving_avg^moving_avg*'
_output_shapes
:���������
*
T0
�
DAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs4Adam/gradients/Crossentropy/clip_by_value_grad/Shape6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
5Adam/gradients/Crossentropy/clip_by_value_grad/SelectSelect;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqual(Adam/gradients/Crossentropy/Log_grad/mul4Adam/gradients/Crossentropy/clip_by_value_grad/zeros*
T0*'
_output_shapes
:���������

�
7Adam/gradients/Crossentropy/clip_by_value_grad/Select_1Select;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqual4Adam/gradients/Crossentropy/clip_by_value_grad/zeros(Adam/gradients/Crossentropy/Log_grad/mul*
T0*'
_output_shapes
:���������

�
2Adam/gradients/Crossentropy/clip_by_value_grad/SumSum5Adam/gradients/Crossentropy/clip_by_value_grad/SelectDAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
6Adam/gradients/Crossentropy/clip_by_value_grad/ReshapeReshape2Adam/gradients/Crossentropy/clip_by_value_grad/Sum4Adam/gradients/Crossentropy/clip_by_value_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������

�
4Adam/gradients/Crossentropy/clip_by_value_grad/Sum_1Sum7Adam/gradients/Crossentropy/clip_by_value_grad/Select_1FAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
8Adam/gradients/Crossentropy/clip_by_value_grad/Reshape_1Reshape4Adam/gradients/Crossentropy/clip_by_value_grad/Sum_16Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
�
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ShapeShapeCrossentropy/truediv^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
�
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_2Shape6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape*
T0*
out_type0*
_output_shapes
:
�
BAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *    *
dtype0*
_output_shapes
: 
�
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zerosFill>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_2BAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*'
_output_shapes
:���������

�
@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualCrossentropy/truedivCrossentropy/Cast_1/x^Adam/moving_avg^moving_avg*
T0*'
_output_shapes
:���������

�
LAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
=Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SelectSelect@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:���������

�
?Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Select_1Select@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape*
T0*'
_output_shapes
:���������

�
:Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SumSum=Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SelectLAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ReshapeReshape:Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������

�
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum_1Sum?Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Select_1NAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshape<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum_1>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
.Adam/gradients/Crossentropy/truediv_grad/ShapeShapeFullyConnected_2/Softmax^Adam/moving_avg^moving_avg*
_output_shapes
:*
T0*
out_type0
�
0Adam/gradients/Crossentropy/truediv_grad/Shape_1ShapeCrossentropy/Sum^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
>Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs.Adam/gradients/Crossentropy/truediv_grad/Shape0Adam/gradients/Crossentropy/truediv_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
0Adam/gradients/Crossentropy/truediv_grad/RealDivRealDiv>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ReshapeCrossentropy/Sum*'
_output_shapes
:���������
*
T0
�
,Adam/gradients/Crossentropy/truediv_grad/SumSum0Adam/gradients/Crossentropy/truediv_grad/RealDiv>Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
0Adam/gradients/Crossentropy/truediv_grad/ReshapeReshape,Adam/gradients/Crossentropy/truediv_grad/Sum.Adam/gradients/Crossentropy/truediv_grad/Shape*
Tshape0*'
_output_shapes
:���������
*
T0
�
,Adam/gradients/Crossentropy/truediv_grad/NegNegFullyConnected_2/Softmax^Adam/moving_avg^moving_avg*
T0*'
_output_shapes
:���������

�
2Adam/gradients/Crossentropy/truediv_grad/RealDiv_1RealDiv,Adam/gradients/Crossentropy/truediv_grad/NegCrossentropy/Sum*'
_output_shapes
:���������
*
T0
�
2Adam/gradients/Crossentropy/truediv_grad/RealDiv_2RealDiv2Adam/gradients/Crossentropy/truediv_grad/RealDiv_1Crossentropy/Sum*'
_output_shapes
:���������
*
T0
�
,Adam/gradients/Crossentropy/truediv_grad/mulMul>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Reshape2Adam/gradients/Crossentropy/truediv_grad/RealDiv_2*
T0*'
_output_shapes
:���������

�
.Adam/gradients/Crossentropy/truediv_grad/Sum_1Sum,Adam/gradients/Crossentropy/truediv_grad/mul@Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
2Adam/gradients/Crossentropy/truediv_grad/Reshape_1Reshape.Adam/gradients/Crossentropy/truediv_grad/Sum_10Adam/gradients/Crossentropy/truediv_grad/Shape_1*
Tshape0*'
_output_shapes
:���������*
T0
�
*Adam/gradients/Crossentropy/Sum_grad/ShapeShapeFullyConnected_2/Softmax^Adam/moving_avg^moving_avg*
_output_shapes
:*
T0*
out_type0
�
)Adam/gradients/Crossentropy/Sum_grad/SizeConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
value	B :*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
dtype0
�
(Adam/gradients/Crossentropy/Sum_grad/addAdd"Crossentropy/Sum/reduction_indices)Adam/gradients/Crossentropy/Sum_grad/Size*
_output_shapes
: *
T0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape
�
(Adam/gradients/Crossentropy/Sum_grad/modFloorMod(Adam/gradients/Crossentropy/Sum_grad/add)Adam/gradients/Crossentropy/Sum_grad/Size*
_output_shapes
: *
T0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape
�
,Adam/gradients/Crossentropy/Sum_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
0Adam/gradients/Crossentropy/Sum_grad/range/startConst^Adam/moving_avg^moving_avg*
value	B : *=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
0Adam/gradients/Crossentropy/Sum_grad/range/deltaConst^Adam/moving_avg^moving_avg*
value	B :*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
*Adam/gradients/Crossentropy/Sum_grad/rangeRange0Adam/gradients/Crossentropy/Sum_grad/range/start)Adam/gradients/Crossentropy/Sum_grad/Size0Adam/gradients/Crossentropy/Sum_grad/range/delta*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
:*

Tidx0
�
/Adam/gradients/Crossentropy/Sum_grad/Fill/valueConst^Adam/moving_avg^moving_avg*
value	B :*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
)Adam/gradients/Crossentropy/Sum_grad/FillFill,Adam/gradients/Crossentropy/Sum_grad/Shape_1/Adam/gradients/Crossentropy/Sum_grad/Fill/value*
T0*

index_type0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
: 
�
2Adam/gradients/Crossentropy/Sum_grad/DynamicStitchDynamicStitch*Adam/gradients/Crossentropy/Sum_grad/range(Adam/gradients/Crossentropy/Sum_grad/mod*Adam/gradients/Crossentropy/Sum_grad/Shape)Adam/gradients/Crossentropy/Sum_grad/Fill*
T0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
N*#
_output_shapes
:���������
�
.Adam/gradients/Crossentropy/Sum_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
value	B :*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
,Adam/gradients/Crossentropy/Sum_grad/MaximumMaximum2Adam/gradients/Crossentropy/Sum_grad/DynamicStitch.Adam/gradients/Crossentropy/Sum_grad/Maximum/y*
T0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*#
_output_shapes
:���������
�
-Adam/gradients/Crossentropy/Sum_grad/floordivFloorDiv*Adam/gradients/Crossentropy/Sum_grad/Shape,Adam/gradients/Crossentropy/Sum_grad/Maximum*
T0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
:
�
,Adam/gradients/Crossentropy/Sum_grad/ReshapeReshape2Adam/gradients/Crossentropy/truediv_grad/Reshape_12Adam/gradients/Crossentropy/Sum_grad/DynamicStitch*
Tshape0*
_output_shapes
:*
T0
�
)Adam/gradients/Crossentropy/Sum_grad/TileTile,Adam/gradients/Crossentropy/Sum_grad/Reshape-Adam/gradients/Crossentropy/Sum_grad/floordiv*'
_output_shapes
:���������
*

Tmultiples0*
T0
�
Adam/gradients/AddNAddN0Adam/gradients/Crossentropy/truediv_grad/Reshape)Adam/gradients/Crossentropy/Sum_grad/Tile*
T0*C
_class9
75loc:@Adam/gradients/Crossentropy/truediv_grad/Reshape*
N*'
_output_shapes
:���������

�
0Adam/gradients/FullyConnected_2/Softmax_grad/mulMulAdam/gradients/AddNFullyConnected_2/Softmax*
T0*'
_output_shapes
:���������

�
BAdam/gradients/FullyConnected_2/Softmax_grad/Sum/reduction_indicesConst^Adam/moving_avg^moving_avg*
valueB:*
dtype0*
_output_shapes
:
�
0Adam/gradients/FullyConnected_2/Softmax_grad/SumSum0Adam/gradients/FullyConnected_2/Softmax_grad/mulBAdam/gradients/FullyConnected_2/Softmax_grad/Sum/reduction_indices*#
_output_shapes
:���������*

Tidx0*
	keep_dims( *
T0
�
:Adam/gradients/FullyConnected_2/Softmax_grad/Reshape/shapeConst^Adam/moving_avg^moving_avg*
valueB"����   *
dtype0*
_output_shapes
:
�
4Adam/gradients/FullyConnected_2/Softmax_grad/ReshapeReshape0Adam/gradients/FullyConnected_2/Softmax_grad/Sum:Adam/gradients/FullyConnected_2/Softmax_grad/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:���������
�
0Adam/gradients/FullyConnected_2/Softmax_grad/subSubAdam/gradients/AddN4Adam/gradients/FullyConnected_2/Softmax_grad/Reshape*
T0*'
_output_shapes
:���������

�
2Adam/gradients/FullyConnected_2/Softmax_grad/mul_1Mul0Adam/gradients/FullyConnected_2/Softmax_grad/subFullyConnected_2/Softmax*'
_output_shapes
:���������
*
T0
�
8Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGradBiasAddGrad2Adam/gradients/FullyConnected_2/Softmax_grad/mul_1*
data_formatNHWC*
_output_shapes
:
*
T0
�
2Adam/gradients/FullyConnected_2/MatMul_grad/MatMulMatMul2Adam/gradients/FullyConnected_2/Softmax_grad/mul_1FullyConnected_2/W/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b(
�
4Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1MatMulFullyConnected_1/BiasAdd2Adam/gradients/FullyConnected_2/Softmax_grad/mul_1*
_output_shapes

:
*
transpose_a(*
transpose_b( *
T0
�
8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGradBiasAddGrad2Adam/gradients/FullyConnected_2/MatMul_grad/MatMul*
T0*
data_formatNHWC*
_output_shapes
:
�
2Adam/gradients/FullyConnected_1/MatMul_grad/MatMulMatMul2Adam/gradients/FullyConnected_2/MatMul_grad/MatMulFullyConnected_1/W/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b(
�
4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1MatMulFullyConnected/BiasAdd2Adam/gradients/FullyConnected_2/MatMul_grad/MatMul*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
�
6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGradBiasAddGrad2Adam/gradients/FullyConnected_1/MatMul_grad/MatMul*
T0*
data_formatNHWC*
_output_shapes
:
�
0Adam/gradients/FullyConnected/MatMul_grad/MatMulMatMul2Adam/gradients/FullyConnected_1/MatMul_grad/MatMulFullyConnected/W/read*
T0*'
_output_shapes
:���������9*
transpose_a( *
transpose_b(
�
2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1MatMulInputData/X2Adam/gradients/FullyConnected_1/MatMul_grad/MatMul*
T0*
_output_shapes

:9*
transpose_a(*
transpose_b( 
�
Adam/global_norm/L2LossL2Loss2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
T0*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
_output_shapes
: 
�
Adam/global_norm/L2Loss_1L2Loss6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
�
Adam/global_norm/L2Loss_2L2Loss4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
_output_shapes
: *
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1
�
Adam/global_norm/L2Loss_3L2Loss8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
�
Adam/global_norm/L2Loss_4L2Loss4Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1*G
_class=
;9loc:@Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1*
_output_shapes
: *
T0
�
Adam/global_norm/L2Loss_5L2Loss8Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGrad*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
�
Adam/global_norm/stackPackAdam/global_norm/L2LossAdam/global_norm/L2Loss_1Adam/global_norm/L2Loss_2Adam/global_norm/L2Loss_3Adam/global_norm/L2Loss_4Adam/global_norm/L2Loss_5*
T0*

axis *
N*
_output_shapes
:

Adam/global_norm/ConstConst^Adam/moving_avg^moving_avg*
valueB: *
dtype0*
_output_shapes
:
�
Adam/global_norm/SumSumAdam/global_norm/stackAdam/global_norm/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
|
Adam/global_norm/Const_1Const^Adam/moving_avg^moving_avg*
valueB
 *   @*
dtype0*
_output_shapes
: 
l
Adam/global_norm/mulMulAdam/global_norm/SumAdam/global_norm/Const_1*
_output_shapes
: *
T0
[
Adam/global_norm/global_normSqrtAdam/global_norm/mul*
_output_shapes
: *
T0
�
"Adam/clip_by_global_norm/truediv/xConst^Adam/moving_avg^moving_avg*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
 Adam/clip_by_global_norm/truedivRealDiv"Adam/clip_by_global_norm/truediv/xAdam/global_norm/global_norm*
T0*
_output_shapes
: 
�
Adam/clip_by_global_norm/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
$Adam/clip_by_global_norm/truediv_1/yConst^Adam/moving_avg^moving_avg*
valueB
 *  �@*
dtype0*
_output_shapes
: 
�
"Adam/clip_by_global_norm/truediv_1RealDivAdam/clip_by_global_norm/Const$Adam/clip_by_global_norm/truediv_1/y*
T0*
_output_shapes
: 
�
 Adam/clip_by_global_norm/MinimumMinimum Adam/clip_by_global_norm/truediv"Adam/clip_by_global_norm/truediv_1*
T0*
_output_shapes
: 
�
Adam/clip_by_global_norm/mul/xConst^Adam/moving_avg^moving_avg*
valueB
 *  �@*
dtype0*
_output_shapes
: 
�
Adam/clip_by_global_norm/mulMulAdam/clip_by_global_norm/mul/x Adam/clip_by_global_norm/Minimum*
_output_shapes
: *
T0
�
Adam/clip_by_global_norm/mul_1Mul2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
_output_shapes

:9*
T0*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_0IdentityAdam/clip_by_global_norm/mul_1*
T0*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
_output_shapes

:9
�
Adam/clip_by_global_norm/mul_2Mul6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_1IdentityAdam/clip_by_global_norm/mul_2*
T0*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
Adam/clip_by_global_norm/mul_3Mul4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
_output_shapes

:
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_2IdentityAdam/clip_by_global_norm/mul_3*
_output_shapes

:*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1
�
Adam/clip_by_global_norm/mul_4Mul8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_3IdentityAdam/clip_by_global_norm/mul_4*
_output_shapes
:*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad
�
Adam/clip_by_global_norm/mul_5Mul4Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1*
_output_shapes

:

�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_4IdentityAdam/clip_by_global_norm/mul_5*
_output_shapes

:
*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1
�
Adam/clip_by_global_norm/mul_6Mul8Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:

�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_5IdentityAdam/clip_by_global_norm/mul_6*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:

�
Adam/beta1_power/initial_valueConst*
_output_shapes
: *
valueB
 *fff?*#
_class
loc:@FullyConnected/W*
dtype0
�
Adam/beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@FullyConnected/W*
	container *
shape: 
�
Adam/beta1_power/AssignAssignAdam/beta1_powerAdam/beta1_power/initial_value*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(
y
Adam/beta1_power/readIdentityAdam/beta1_power*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
Adam/beta2_power/initial_valueConst*
valueB
 *w�?*#
_class
loc:@FullyConnected/W*
dtype0*
_output_shapes
: 
�
Adam/beta2_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@FullyConnected/W
�
Adam/beta2_power/AssignAssignAdam/beta2_powerAdam/beta2_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@FullyConnected/W
y
Adam/beta2_power/readIdentityAdam/beta2_power*
_output_shapes
: *
T0*#
_class
loc:@FullyConnected/W
�
7FullyConnected/W/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"9      *#
_class
loc:@FullyConnected/W*
dtype0*
_output_shapes
:
�
-FullyConnected/W/Adam/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@FullyConnected/W*
dtype0*
_output_shapes
: 
�
'FullyConnected/W/Adam/Initializer/zerosFill7FullyConnected/W/Adam/Initializer/zeros/shape_as_tensor-FullyConnected/W/Adam/Initializer/zeros/Const*

index_type0*#
_class
loc:@FullyConnected/W*
_output_shapes

:9*
T0
�
FullyConnected/W/Adam
VariableV2*
shared_name *#
_class
loc:@FullyConnected/W*
	container *
shape
:9*
dtype0*
_output_shapes

:9
�
FullyConnected/W/Adam/AssignAssignFullyConnected/W/Adam'FullyConnected/W/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes

:9
�
FullyConnected/W/Adam/readIdentityFullyConnected/W/Adam*
_output_shapes

:9*
T0*#
_class
loc:@FullyConnected/W
�
9FullyConnected/W/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB"9      *#
_class
loc:@FullyConnected/W*
dtype0
�
/FullyConnected/W/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@FullyConnected/W*
dtype0*
_output_shapes
: 
�
)FullyConnected/W/Adam_1/Initializer/zerosFill9FullyConnected/W/Adam_1/Initializer/zeros/shape_as_tensor/FullyConnected/W/Adam_1/Initializer/zeros/Const*
T0*

index_type0*#
_class
loc:@FullyConnected/W*
_output_shapes

:9
�
FullyConnected/W/Adam_1
VariableV2*
_output_shapes

:9*
shared_name *#
_class
loc:@FullyConnected/W*
	container *
shape
:9*
dtype0
�
FullyConnected/W/Adam_1/AssignAssignFullyConnected/W/Adam_1)FullyConnected/W/Adam_1/Initializer/zeros*
_output_shapes

:9*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(
�
FullyConnected/W/Adam_1/readIdentityFullyConnected/W/Adam_1*
_output_shapes

:9*
T0*#
_class
loc:@FullyConnected/W
�
7FullyConnected/b/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*#
_class
loc:@FullyConnected/b*
dtype0*
_output_shapes
:
�
-FullyConnected/b/Adam/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@FullyConnected/b*
dtype0*
_output_shapes
: 
�
'FullyConnected/b/Adam/Initializer/zerosFill7FullyConnected/b/Adam/Initializer/zeros/shape_as_tensor-FullyConnected/b/Adam/Initializer/zeros/Const*
_output_shapes
:*
T0*

index_type0*#
_class
loc:@FullyConnected/b
�
FullyConnected/b/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *#
_class
loc:@FullyConnected/b*
	container *
shape:
�
FullyConnected/b/Adam/AssignAssignFullyConnected/b/Adam'FullyConnected/b/Adam/Initializer/zeros*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
FullyConnected/b/Adam/readIdentityFullyConnected/b/Adam*
T0*#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
9FullyConnected/b/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*#
_class
loc:@FullyConnected/b*
dtype0*
_output_shapes
:
�
/FullyConnected/b/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@FullyConnected/b*
dtype0*
_output_shapes
: 
�
)FullyConnected/b/Adam_1/Initializer/zerosFill9FullyConnected/b/Adam_1/Initializer/zeros/shape_as_tensor/FullyConnected/b/Adam_1/Initializer/zeros/Const*
T0*

index_type0*#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
FullyConnected/b/Adam_1
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *#
_class
loc:@FullyConnected/b*
	container 
�
FullyConnected/b/Adam_1/AssignAssignFullyConnected/b/Adam_1)FullyConnected/b/Adam_1/Initializer/zeros*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
FullyConnected/b/Adam_1/readIdentityFullyConnected/b/Adam_1*
T0*#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
9FullyConnected_1/W/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB"      *%
_class
loc:@FullyConnected_1/W*
dtype0
�
/FullyConnected_1/W/Adam/Initializer/zeros/ConstConst*
valueB
 *    *%
_class
loc:@FullyConnected_1/W*
dtype0*
_output_shapes
: 
�
)FullyConnected_1/W/Adam/Initializer/zerosFill9FullyConnected_1/W/Adam/Initializer/zeros/shape_as_tensor/FullyConnected_1/W/Adam/Initializer/zeros/Const*
T0*

index_type0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
FullyConnected_1/W/Adam
VariableV2*
shape
:*
dtype0*
_output_shapes

:*
shared_name *%
_class
loc:@FullyConnected_1/W*
	container 
�
FullyConnected_1/W/Adam/AssignAssignFullyConnected_1/W/Adam)FullyConnected_1/W/Adam/Initializer/zeros*
_output_shapes

:*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(
�
FullyConnected_1/W/Adam/readIdentityFullyConnected_1/W/Adam*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
;FullyConnected_1/W/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB"      *%
_class
loc:@FullyConnected_1/W*
dtype0
�
1FullyConnected_1/W/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *%
_class
loc:@FullyConnected_1/W*
dtype0*
_output_shapes
: 
�
+FullyConnected_1/W/Adam_1/Initializer/zerosFill;FullyConnected_1/W/Adam_1/Initializer/zeros/shape_as_tensor1FullyConnected_1/W/Adam_1/Initializer/zeros/Const*

index_type0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:*
T0
�
FullyConnected_1/W/Adam_1
VariableV2*
shared_name *%
_class
loc:@FullyConnected_1/W*
	container *
shape
:*
dtype0*
_output_shapes

:
�
 FullyConnected_1/W/Adam_1/AssignAssignFullyConnected_1/W/Adam_1+FullyConnected_1/W/Adam_1/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes

:
�
FullyConnected_1/W/Adam_1/readIdentityFullyConnected_1/W/Adam_1*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:*
T0
�
9FullyConnected_1/b/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*%
_class
loc:@FullyConnected_1/b*
dtype0*
_output_shapes
:
�
/FullyConnected_1/b/Adam/Initializer/zeros/ConstConst*
valueB
 *    *%
_class
loc:@FullyConnected_1/b*
dtype0*
_output_shapes
: 
�
)FullyConnected_1/b/Adam/Initializer/zerosFill9FullyConnected_1/b/Adam/Initializer/zeros/shape_as_tensor/FullyConnected_1/b/Adam/Initializer/zeros/Const*
_output_shapes
:*
T0*

index_type0*%
_class
loc:@FullyConnected_1/b
�
FullyConnected_1/b/Adam
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *%
_class
loc:@FullyConnected_1/b
�
FullyConnected_1/b/Adam/AssignAssignFullyConnected_1/b/Adam)FullyConnected_1/b/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b
�
FullyConnected_1/b/Adam/readIdentityFullyConnected_1/b/Adam*
T0*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
;FullyConnected_1/b/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*%
_class
loc:@FullyConnected_1/b*
dtype0*
_output_shapes
:
�
1FullyConnected_1/b/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *%
_class
loc:@FullyConnected_1/b*
dtype0*
_output_shapes
: 
�
+FullyConnected_1/b/Adam_1/Initializer/zerosFill;FullyConnected_1/b/Adam_1/Initializer/zeros/shape_as_tensor1FullyConnected_1/b/Adam_1/Initializer/zeros/Const*
_output_shapes
:*
T0*

index_type0*%
_class
loc:@FullyConnected_1/b
�
FullyConnected_1/b/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *%
_class
loc:@FullyConnected_1/b*
	container *
shape:
�
 FullyConnected_1/b/Adam_1/AssignAssignFullyConnected_1/b/Adam_1+FullyConnected_1/b/Adam_1/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(
�
FullyConnected_1/b/Adam_1/readIdentityFullyConnected_1/b/Adam_1*
_output_shapes
:*
T0*%
_class
loc:@FullyConnected_1/b
�
9FullyConnected_2/W/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"   
   *%
_class
loc:@FullyConnected_2/W*
dtype0*
_output_shapes
:
�
/FullyConnected_2/W/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *%
_class
loc:@FullyConnected_2/W
�
)FullyConnected_2/W/Adam/Initializer/zerosFill9FullyConnected_2/W/Adam/Initializer/zeros/shape_as_tensor/FullyConnected_2/W/Adam/Initializer/zeros/Const*
_output_shapes

:
*
T0*

index_type0*%
_class
loc:@FullyConnected_2/W
�
FullyConnected_2/W/Adam
VariableV2*
dtype0*
_output_shapes

:
*
shared_name *%
_class
loc:@FullyConnected_2/W*
	container *
shape
:

�
FullyConnected_2/W/Adam/AssignAssignFullyConnected_2/W/Adam)FullyConnected_2/W/Adam/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/W*
validate_shape(*
_output_shapes

:

�
FullyConnected_2/W/Adam/readIdentityFullyConnected_2/W/Adam*
T0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:

�
;FullyConnected_2/W/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB"   
   *%
_class
loc:@FullyConnected_2/W*
dtype0
�
1FullyConnected_2/W/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *%
_class
loc:@FullyConnected_2/W
�
+FullyConnected_2/W/Adam_1/Initializer/zerosFill;FullyConnected_2/W/Adam_1/Initializer/zeros/shape_as_tensor1FullyConnected_2/W/Adam_1/Initializer/zeros/Const*
_output_shapes

:
*
T0*

index_type0*%
_class
loc:@FullyConnected_2/W
�
FullyConnected_2/W/Adam_1
VariableV2*
	container *
shape
:
*
dtype0*
_output_shapes

:
*
shared_name *%
_class
loc:@FullyConnected_2/W
�
 FullyConnected_2/W/Adam_1/AssignAssignFullyConnected_2/W/Adam_1+FullyConnected_2/W/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes

:
*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/W
�
FullyConnected_2/W/Adam_1/readIdentityFullyConnected_2/W/Adam_1*
T0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:

�
9FullyConnected_2/b/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:
*%
_class
loc:@FullyConnected_2/b*
dtype0*
_output_shapes
:
�
/FullyConnected_2/b/Adam/Initializer/zeros/ConstConst*
valueB
 *    *%
_class
loc:@FullyConnected_2/b*
dtype0*
_output_shapes
: 
�
)FullyConnected_2/b/Adam/Initializer/zerosFill9FullyConnected_2/b/Adam/Initializer/zeros/shape_as_tensor/FullyConnected_2/b/Adam/Initializer/zeros/Const*
_output_shapes
:
*
T0*

index_type0*%
_class
loc:@FullyConnected_2/b
�
FullyConnected_2/b/Adam
VariableV2*
dtype0*
_output_shapes
:
*
shared_name *%
_class
loc:@FullyConnected_2/b*
	container *
shape:

�
FullyConnected_2/b/Adam/AssignAssignFullyConnected_2/b/Adam)FullyConnected_2/b/Adam/Initializer/zeros*
_output_shapes
:
*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(
�
FullyConnected_2/b/Adam/readIdentityFullyConnected_2/b/Adam*
T0*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:

�
;FullyConnected_2/b/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:
*%
_class
loc:@FullyConnected_2/b*
dtype0*
_output_shapes
:
�
1FullyConnected_2/b/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *%
_class
loc:@FullyConnected_2/b*
dtype0*
_output_shapes
: 
�
+FullyConnected_2/b/Adam_1/Initializer/zerosFill;FullyConnected_2/b/Adam_1/Initializer/zeros/shape_as_tensor1FullyConnected_2/b/Adam_1/Initializer/zeros/Const*
T0*

index_type0*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:

�
FullyConnected_2/b/Adam_1
VariableV2*
dtype0*
_output_shapes
:
*
shared_name *%
_class
loc:@FullyConnected_2/b*
	container *
shape:

�
 FullyConnected_2/b/Adam_1/AssignAssignFullyConnected_2/b/Adam_1+FullyConnected_2/b/Adam_1/Initializer/zeros*
_output_shapes
:
*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(
�
FullyConnected_2/b/Adam_1/readIdentityFullyConnected_2/b/Adam_1*
T0*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:

g
"Adam/apply_grad_op_0/learning_rateConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
_
Adam/apply_grad_op_0/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
_
Adam/apply_grad_op_0/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
a
Adam/apply_grad_op_0/epsilonConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
�
6Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam	ApplyAdamFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_0*
use_nesterov( *
_output_shapes

:9*
use_locking( *
T0*#
_class
loc:@FullyConnected/W
�
6Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam	ApplyAdamFullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_1*
use_locking( *
T0*#
_class
loc:@FullyConnected/b*
use_nesterov( *
_output_shapes
:
�
8Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam	ApplyAdamFullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_2*
use_nesterov( *
_output_shapes

:*
use_locking( *
T0*%
_class
loc:@FullyConnected_1/W
�
8Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam	ApplyAdamFullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_3*
T0*%
_class
loc:@FullyConnected_1/b*
use_nesterov( *
_output_shapes
:*
use_locking( 
�
8Adam/apply_grad_op_0/update_FullyConnected_2/W/ApplyAdam	ApplyAdamFullyConnected_2/WFullyConnected_2/W/AdamFullyConnected_2/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_4*
use_locking( *
T0*%
_class
loc:@FullyConnected_2/W*
use_nesterov( *
_output_shapes

:

�
8Adam/apply_grad_op_0/update_FullyConnected_2/b/ApplyAdam	ApplyAdamFullyConnected_2/bFullyConnected_2/b/AdamFullyConnected_2/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_5*
T0*%
_class
loc:@FullyConnected_2/b*
use_nesterov( *
_output_shapes
:
*
use_locking( 
�
Adam/apply_grad_op_0/mulMulAdam/beta1_power/readAdam/apply_grad_op_0/beta17^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/b/ApplyAdam*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
Adam/apply_grad_op_0/AssignAssignAdam/beta1_powerAdam/apply_grad_op_0/mul*
use_locking( *
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
: 
�
Adam/apply_grad_op_0/mul_1MulAdam/beta2_power/readAdam/apply_grad_op_0/beta27^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/b/ApplyAdam*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
Adam/apply_grad_op_0/Assign_1AssignAdam/beta2_powerAdam/apply_grad_op_0/mul_1*
use_locking( *
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
: 
�
Adam/apply_grad_op_0/updateNoOp7^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/b/ApplyAdam^Adam/apply_grad_op_0/Assign^Adam/apply_grad_op_0/Assign_1
�
Adam/apply_grad_op_0/valueConst^Adam/apply_grad_op_0/update*
valueB
 *  �?* 
_class
loc:@Training_step*
dtype0*
_output_shapes
: 
�
Adam/apply_grad_op_0	AssignAddTraining_stepAdam/apply_grad_op_0/value*
_output_shapes
: *
use_locking( *
T0* 
_class
loc:@Training_step
]
Adam/Merge/MergeSummaryMergeSummaryLossAdam/Loss/raw*
N*
_output_shapes
: 
.
Adam/train_op_0NoOp^Adam/apply_grad_op_0
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
�
save/SaveV2/tensor_namesConst*�
value�B�BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BFullyConnected_2/WBFullyConnected_2/W/AdamBFullyConnected_2/W/Adam_1BFullyConnected_2/bBFullyConnected_2/b/AdamBFullyConnected_2/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
dtype0*
_output_shapes
:
�
save/SaveV2/shape_and_slicesConst*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAccuracy/Mean/moving_avgAdam/beta1_powerAdam/beta2_powerCrossentropy/Mean/moving_avgFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1FullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1FullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1FullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1FullyConnected_2/WFullyConnected_2/W/AdamFullyConnected_2/W/Adam_1FullyConnected_2/bFullyConnected_2/b/AdamFullyConnected_2/b/Adam_1Global_StepTraining_stepis_trainingval_accval_loss*)
dtypes
2

}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BFullyConnected_2/WBFullyConnected_2/W/AdamBFullyConnected_2/W/Adam_1BFullyConnected_2/bBFullyConnected_2/b/AdamBFullyConnected_2/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
dtype0*
_output_shapes
:
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*)
dtypes
2
*�
_output_shapesn
l:::::::::::::::::::::::::::
�
save/AssignAssignAccuracy/Mean/moving_avgsave/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg
�
save/Assign_1AssignAdam/beta1_powersave/RestoreV2:1*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_2AssignAdam/beta2_powersave/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
: 
�
save/Assign_3AssignCrossentropy/Mean/moving_avgsave/RestoreV2:3*
use_locking(*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
validate_shape(*
_output_shapes
: 
�
save/Assign_4AssignFullyConnected/Wsave/RestoreV2:4*
validate_shape(*
_output_shapes

:9*
use_locking(*
T0*#
_class
loc:@FullyConnected/W
�
save/Assign_5AssignFullyConnected/W/Adamsave/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes

:9
�
save/Assign_6AssignFullyConnected/W/Adam_1save/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes

:9
�
save/Assign_7AssignFullyConnected/bsave/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes
:
�
save/Assign_8AssignFullyConnected/b/Adamsave/RestoreV2:8*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_9AssignFullyConnected/b/Adam_1save/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes
:
�
save/Assign_10AssignFullyConnected_1/Wsave/RestoreV2:10*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes

:
�
save/Assign_11AssignFullyConnected_1/W/Adamsave/RestoreV2:11*
_output_shapes

:*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(
�
save/Assign_12AssignFullyConnected_1/W/Adam_1save/RestoreV2:12*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W
�
save/Assign_13AssignFullyConnected_1/bsave/RestoreV2:13*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b
�
save/Assign_14AssignFullyConnected_1/b/Adamsave/RestoreV2:14*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
�
save/Assign_15AssignFullyConnected_1/b/Adam_1save/RestoreV2:15*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
�
save/Assign_16AssignFullyConnected_2/Wsave/RestoreV2:16*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/W*
validate_shape(*
_output_shapes

:

�
save/Assign_17AssignFullyConnected_2/W/Adamsave/RestoreV2:17*
T0*%
_class
loc:@FullyConnected_2/W*
validate_shape(*
_output_shapes

:
*
use_locking(
�
save/Assign_18AssignFullyConnected_2/W/Adam_1save/RestoreV2:18*
validate_shape(*
_output_shapes

:
*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/W
�
save/Assign_19AssignFullyConnected_2/bsave/RestoreV2:19*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(*
_output_shapes
:

�
save/Assign_20AssignFullyConnected_2/b/Adamsave/RestoreV2:20*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(*
_output_shapes
:

�
save/Assign_21AssignFullyConnected_2/b/Adam_1save/RestoreV2:21*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(*
_output_shapes
:

�
save/Assign_22AssignGlobal_Stepsave/RestoreV2:22*
use_locking(*
T0*
_class
loc:@Global_Step*
validate_shape(*
_output_shapes
: 
�
save/Assign_23AssignTraining_stepsave/RestoreV2:23*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@Training_step
�
save/Assign_24Assignis_trainingsave/RestoreV2:24*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
*
_class
loc:@is_training
�
save/Assign_25Assignval_accsave/RestoreV2:25*
use_locking(*
T0*
_class
loc:@val_acc*
validate_shape(*
_output_shapes
: 
�
save/Assign_26Assignval_losssave/RestoreV2:26*
T0*
_class
loc:@val_loss*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_1/SaveV2/tensor_namesConst*�
value�B�BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BFullyConnected_2/WBFullyConnected_2/W/AdamBFullyConnected_2/W/Adam_1BFullyConnected_2/bBFullyConnected_2/b/AdamBFullyConnected_2/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
dtype0*
_output_shapes
:
�
save_1/SaveV2/shape_and_slicesConst*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesAccuracy/Mean/moving_avgAdam/beta1_powerAdam/beta2_powerCrossentropy/Mean/moving_avgFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1FullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1FullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1FullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1FullyConnected_2/WFullyConnected_2/W/AdamFullyConnected_2/W/Adam_1FullyConnected_2/bFullyConnected_2/b/AdamFullyConnected_2/b/Adam_1Global_StepTraining_stepis_trainingval_accval_loss*)
dtypes
2

�
save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
T0*
_class
loc:@save_1/Const*
_output_shapes
: 
�
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BFullyConnected_2/WBFullyConnected_2/W/AdamBFullyConnected_2/W/Adam_1BFullyConnected_2/bBFullyConnected_2/b/AdamBFullyConnected_2/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
dtype0*
_output_shapes
:
�
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
�
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2

�
save_1/AssignAssignAccuracy/Mean/moving_avgsave_1/RestoreV2*
use_locking(*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
validate_shape(*
_output_shapes
: 
�
save_1/Assign_1AssignAdam/beta1_powersave_1/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
: 
�
save_1/Assign_2AssignAdam/beta2_powersave_1/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@FullyConnected/W
�
save_1/Assign_3AssignCrossentropy/Mean/moving_avgsave_1/RestoreV2:3*
use_locking(*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
validate_shape(*
_output_shapes
: 
�
save_1/Assign_4AssignFullyConnected/Wsave_1/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes

:9
�
save_1/Assign_5AssignFullyConnected/W/Adamsave_1/RestoreV2:5*
validate_shape(*
_output_shapes

:9*
use_locking(*
T0*#
_class
loc:@FullyConnected/W
�
save_1/Assign_6AssignFullyConnected/W/Adam_1save_1/RestoreV2:6*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes

:9*
use_locking(
�
save_1/Assign_7AssignFullyConnected/bsave_1/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes
:
�
save_1/Assign_8AssignFullyConnected/b/Adamsave_1/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes
:
�
save_1/Assign_9AssignFullyConnected/b/Adam_1save_1/RestoreV2:9*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@FullyConnected/b
�
save_1/Assign_10AssignFullyConnected_1/Wsave_1/RestoreV2:10*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes

:
�
save_1/Assign_11AssignFullyConnected_1/W/Adamsave_1/RestoreV2:11*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W
�
save_1/Assign_12AssignFullyConnected_1/W/Adam_1save_1/RestoreV2:12*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes

:
�
save_1/Assign_13AssignFullyConnected_1/bsave_1/RestoreV2:13*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
�
save_1/Assign_14AssignFullyConnected_1/b/Adamsave_1/RestoreV2:14*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
�
save_1/Assign_15AssignFullyConnected_1/b/Adam_1save_1/RestoreV2:15*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
�
save_1/Assign_16AssignFullyConnected_2/Wsave_1/RestoreV2:16*
validate_shape(*
_output_shapes

:
*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/W
�
save_1/Assign_17AssignFullyConnected_2/W/Adamsave_1/RestoreV2:17*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/W*
validate_shape(*
_output_shapes

:

�
save_1/Assign_18AssignFullyConnected_2/W/Adam_1save_1/RestoreV2:18*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/W*
validate_shape(*
_output_shapes

:

�
save_1/Assign_19AssignFullyConnected_2/bsave_1/RestoreV2:19*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(*
_output_shapes
:

�
save_1/Assign_20AssignFullyConnected_2/b/Adamsave_1/RestoreV2:20*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(*
_output_shapes
:

�
save_1/Assign_21AssignFullyConnected_2/b/Adam_1save_1/RestoreV2:21*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(*
_output_shapes
:

�
save_1/Assign_22AssignGlobal_Stepsave_1/RestoreV2:22*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Global_Step
�
save_1/Assign_23AssignTraining_stepsave_1/RestoreV2:23*
use_locking(*
T0* 
_class
loc:@Training_step*
validate_shape(*
_output_shapes
: 
�
save_1/Assign_24Assignis_trainingsave_1/RestoreV2:24*
use_locking(*
T0
*
_class
loc:@is_training*
validate_shape(*
_output_shapes
: 
�
save_1/Assign_25Assignval_accsave_1/RestoreV2:25*
T0*
_class
loc:@val_acc*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_1/Assign_26Assignval_losssave_1/RestoreV2:26*
T0*
_class
loc:@val_loss*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26
R
save_2/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_2/SaveV2/tensor_namesConst*�
value~B|BFullyConnected/WBFullyConnected/bBFullyConnected_1/WBFullyConnected_1/bBFullyConnected_2/WBFullyConnected_2/b*
dtype0*
_output_shapes
:
q
save_2/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0*
_output_shapes
:
�
save_2/SaveV2SaveV2save_2/Constsave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesFullyConnected/WFullyConnected/bFullyConnected_1/WFullyConnected_1/bFullyConnected_2/WFullyConnected_2/b*
dtypes

2
�
save_2/control_dependencyIdentitysave_2/Const^save_2/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save_2/Const
�
save_2/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*�
value~B|BFullyConnected/WBFullyConnected/bBFullyConnected_1/WBFullyConnected_1/bBFullyConnected_2/WBFullyConnected_2/b
�
!save_2/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B B B B 
�
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices"/device:CPU:0*,
_output_shapes
::::::*
dtypes

2
�
save_2/AssignAssignFullyConnected/Wsave_2/RestoreV2*
validate_shape(*
_output_shapes

:9*
use_locking(*
T0*#
_class
loc:@FullyConnected/W
�
save_2/Assign_1AssignFullyConnected/bsave_2/RestoreV2:1*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@FullyConnected/b
�
save_2/Assign_2AssignFullyConnected_1/Wsave_2/RestoreV2:2*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes

:
�
save_2/Assign_3AssignFullyConnected_1/bsave_2/RestoreV2:3*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b
�
save_2/Assign_4AssignFullyConnected_2/Wsave_2/RestoreV2:4*
T0*%
_class
loc:@FullyConnected_2/W*
validate_shape(*
_output_shapes

:
*
use_locking(
�
save_2/Assign_5AssignFullyConnected_2/bsave_2/RestoreV2:5*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(*
_output_shapes
:

�
save_2/restore_allNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_2^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5
�
initNoOp^FullyConnected/W/Assign^FullyConnected/b/Assign^FullyConnected_1/W/Assign^FullyConnected_1/b/Assign^FullyConnected_2/W/Assign^FullyConnected_2/b/Assign^Training_step/Assign^is_training/Assign^Global_Step/Assign^val_loss/Assign^val_acc/Assign ^Accuracy/Mean/moving_avg/Assign$^Crossentropy/Mean/moving_avg/Assign^Adam/beta1_power/Assign^Adam/beta2_power/Assign^FullyConnected/W/Adam/Assign^FullyConnected/W/Adam_1/Assign^FullyConnected/b/Adam/Assign^FullyConnected/b/Adam_1/Assign^FullyConnected_1/W/Adam/Assign!^FullyConnected_1/W/Adam_1/Assign^FullyConnected_1/b/Adam/Assign!^FullyConnected_1/b/Adam_1/Assign^FullyConnected_2/W/Adam/Assign!^FullyConnected_2/W/Adam_1/Assign^FullyConnected_2/b/Adam/Assign!^FullyConnected_2/b/Adam_1/Assign

init_1NoOp
"

group_depsNoOp^init^init_1
#
init_2NoOp^is_training/Assign
R
save_3/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_3/SaveV2/tensor_namesConst*�
value�B�BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BFullyConnected_2/WBFullyConnected_2/W/AdamBFullyConnected_2/W/Adam_1BFullyConnected_2/bBFullyConnected_2/b/AdamBFullyConnected_2/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
dtype0*
_output_shapes
:
�
save_3/SaveV2/shape_and_slicesConst*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_3/SaveV2SaveV2save_3/Constsave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesAccuracy/Mean/moving_avgAdam/beta1_powerAdam/beta2_powerCrossentropy/Mean/moving_avgFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1FullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1FullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1FullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1FullyConnected_2/WFullyConnected_2/W/AdamFullyConnected_2/W/Adam_1FullyConnected_2/bFullyConnected_2/b/AdamFullyConnected_2/b/Adam_1Global_StepTraining_stepis_trainingval_accval_loss*)
dtypes
2

�
save_3/control_dependencyIdentitysave_3/Const^save_3/SaveV2*
T0*
_class
loc:@save_3/Const*
_output_shapes
: 
�
save_3/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*�
value�B�BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BFullyConnected_2/WBFullyConnected_2/W/AdamBFullyConnected_2/W/Adam_1BFullyConnected_2/bBFullyConnected_2/b/AdamBFullyConnected_2/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss
�
!save_3/RestoreV2/shape_and_slicesConst"/device:CPU:0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2

�
save_3/AssignAssignAccuracy/Mean/moving_avgsave_3/RestoreV2*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_3/Assign_1AssignAdam/beta1_powersave_3/RestoreV2:1*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_3/Assign_2AssignAdam/beta2_powersave_3/RestoreV2:2*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
: 
�
save_3/Assign_3AssignCrossentropy/Mean/moving_avgsave_3/RestoreV2:3*
use_locking(*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
validate_shape(*
_output_shapes
: 
�
save_3/Assign_4AssignFullyConnected/Wsave_3/RestoreV2:4*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes

:9*
use_locking(
�
save_3/Assign_5AssignFullyConnected/W/Adamsave_3/RestoreV2:5*
validate_shape(*
_output_shapes

:9*
use_locking(*
T0*#
_class
loc:@FullyConnected/W
�
save_3/Assign_6AssignFullyConnected/W/Adam_1save_3/RestoreV2:6*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes

:9*
use_locking(
�
save_3/Assign_7AssignFullyConnected/bsave_3/RestoreV2:7*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@FullyConnected/b
�
save_3/Assign_8AssignFullyConnected/b/Adamsave_3/RestoreV2:8*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_3/Assign_9AssignFullyConnected/b/Adam_1save_3/RestoreV2:9*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*#
_class
loc:@FullyConnected/b
�
save_3/Assign_10AssignFullyConnected_1/Wsave_3/RestoreV2:10*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes

:
�
save_3/Assign_11AssignFullyConnected_1/W/Adamsave_3/RestoreV2:11*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes

:
�
save_3/Assign_12AssignFullyConnected_1/W/Adam_1save_3/RestoreV2:12*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes

:
�
save_3/Assign_13AssignFullyConnected_1/bsave_3/RestoreV2:13*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
�
save_3/Assign_14AssignFullyConnected_1/b/Adamsave_3/RestoreV2:14*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
�
save_3/Assign_15AssignFullyConnected_1/b/Adam_1save_3/RestoreV2:15*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
�
save_3/Assign_16AssignFullyConnected_2/Wsave_3/RestoreV2:16*
_output_shapes

:
*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/W*
validate_shape(
�
save_3/Assign_17AssignFullyConnected_2/W/Adamsave_3/RestoreV2:17*%
_class
loc:@FullyConnected_2/W*
validate_shape(*
_output_shapes

:
*
use_locking(*
T0
�
save_3/Assign_18AssignFullyConnected_2/W/Adam_1save_3/RestoreV2:18*
validate_shape(*
_output_shapes

:
*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/W
�
save_3/Assign_19AssignFullyConnected_2/bsave_3/RestoreV2:19*
validate_shape(*
_output_shapes
:
*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/b
�
save_3/Assign_20AssignFullyConnected_2/b/Adamsave_3/RestoreV2:20*
T0*%
_class
loc:@FullyConnected_2/b*
validate_shape(*
_output_shapes
:
*
use_locking(
�
save_3/Assign_21AssignFullyConnected_2/b/Adam_1save_3/RestoreV2:21*
validate_shape(*
_output_shapes
:
*
use_locking(*
T0*%
_class
loc:@FullyConnected_2/b
�
save_3/Assign_22AssignGlobal_Stepsave_3/RestoreV2:22*
use_locking(*
T0*
_class
loc:@Global_Step*
validate_shape(*
_output_shapes
: 
�
save_3/Assign_23AssignTraining_stepsave_3/RestoreV2:23*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@Training_step
�
save_3/Assign_24Assignis_trainingsave_3/RestoreV2:24*
_class
loc:@is_training*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

�
save_3/Assign_25Assignval_accsave_3/RestoreV2:25*
use_locking(*
T0*
_class
loc:@val_acc*
validate_shape(*
_output_shapes
: 
�
save_3/Assign_26Assignval_losssave_3/RestoreV2:26*
use_locking(*
T0*
_class
loc:@val_loss*
validate_shape(*
_output_shapes
: 
�
save_3/restore_allNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_2^save_3/Assign_3^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_19^save_3/Assign_20^save_3/Assign_21^save_3/Assign_22^save_3/Assign_23^save_3/Assign_24^save_3/Assign_25^save_3/Assign_26""c
activationsT
R
FullyConnected/BiasAdd:0
FullyConnected_1/BiasAdd:0
FullyConnected_2/Softmax:0" 
is_training

is_training:0"
targets

TargetsData/Y:0"
inputs

InputData/X:0"+
layer_tensor/InputData

InputData/X:0"R
 layer_variables/FullyConnected_1.
,
FullyConnected_1/W:0
FullyConnected_1/b:0"
trainops

Adam"+
is_training_ops

Assign:0

Assign_1:0"R
 layer_variables/FullyConnected_2.
,
FullyConnected_2/W:0
FullyConnected_2/b:0"�
	variables��
w
FullyConnected/W:0FullyConnected/W/AssignFullyConnected/W/read:02/FullyConnected/W/Initializer/truncated_normal:0
l
FullyConnected/b:0FullyConnected/b/AssignFullyConnected/b/read:02$FullyConnected/b/Initializer/Const:0

FullyConnected_1/W:0FullyConnected_1/W/AssignFullyConnected_1/W/read:021FullyConnected_1/W/Initializer/truncated_normal:0
t
FullyConnected_1/b:0FullyConnected_1/b/AssignFullyConnected_1/b/read:02&FullyConnected_1/b/Initializer/Const:0

FullyConnected_2/W:0FullyConnected_2/W/AssignFullyConnected_2/W/read:021FullyConnected_2/W/Initializer/truncated_normal:0
t
FullyConnected_2/b:0FullyConnected_2/b/AssignFullyConnected_2/b/read:02&FullyConnected_2/b/Initializer/Const:0
\
Training_step:0Training_step/AssignTraining_step/read:02Training_step/initial_value:0
X
is_training:0is_training/Assignis_training/read:02is_training/Initializer/Const:0
T
Global_Step:0Global_Step/AssignGlobal_Step/read:02Global_Step/initial_value:0
H

val_loss:0val_loss/Assignval_loss/read:02val_loss/initial_value:0
D
	val_acc:0val_acc/Assignval_acc/read:02val_acc/initial_value:0
�
Accuracy/Mean/moving_avg:0Accuracy/Mean/moving_avg/AssignAccuracy/Mean/moving_avg/read:02,Accuracy/Mean/moving_avg/Initializer/zeros:0
�
Crossentropy/Mean/moving_avg:0#Crossentropy/Mean/moving_avg/Assign#Crossentropy/Mean/moving_avg/read:020Crossentropy/Mean/moving_avg/Initializer/zeros:0
h
Adam/beta1_power:0Adam/beta1_power/AssignAdam/beta1_power/read:02 Adam/beta1_power/initial_value:0
h
Adam/beta2_power:0Adam/beta2_power/AssignAdam/beta2_power/read:02 Adam/beta2_power/initial_value:0
�
FullyConnected/W/Adam:0FullyConnected/W/Adam/AssignFullyConnected/W/Adam/read:02)FullyConnected/W/Adam/Initializer/zeros:0
�
FullyConnected/W/Adam_1:0FullyConnected/W/Adam_1/AssignFullyConnected/W/Adam_1/read:02+FullyConnected/W/Adam_1/Initializer/zeros:0
�
FullyConnected/b/Adam:0FullyConnected/b/Adam/AssignFullyConnected/b/Adam/read:02)FullyConnected/b/Adam/Initializer/zeros:0
�
FullyConnected/b/Adam_1:0FullyConnected/b/Adam_1/AssignFullyConnected/b/Adam_1/read:02+FullyConnected/b/Adam_1/Initializer/zeros:0
�
FullyConnected_1/W/Adam:0FullyConnected_1/W/Adam/AssignFullyConnected_1/W/Adam/read:02+FullyConnected_1/W/Adam/Initializer/zeros:0
�
FullyConnected_1/W/Adam_1:0 FullyConnected_1/W/Adam_1/Assign FullyConnected_1/W/Adam_1/read:02-FullyConnected_1/W/Adam_1/Initializer/zeros:0
�
FullyConnected_1/b/Adam:0FullyConnected_1/b/Adam/AssignFullyConnected_1/b/Adam/read:02+FullyConnected_1/b/Adam/Initializer/zeros:0
�
FullyConnected_1/b/Adam_1:0 FullyConnected_1/b/Adam_1/Assign FullyConnected_1/b/Adam_1/read:02-FullyConnected_1/b/Adam_1/Initializer/zeros:0
�
FullyConnected_2/W/Adam:0FullyConnected_2/W/Adam/AssignFullyConnected_2/W/Adam/read:02+FullyConnected_2/W/Adam/Initializer/zeros:0
�
FullyConnected_2/W/Adam_1:0 FullyConnected_2/W/Adam_1/Assign FullyConnected_2/W/Adam_1/read:02-FullyConnected_2/W/Adam_1/Initializer/zeros:0
�
FullyConnected_2/b/Adam:0FullyConnected_2/b/Adam/AssignFullyConnected_2/b/Adam/read:02+FullyConnected_2/b/Adam/Initializer/zeros:0
�
FullyConnected_2/b/Adam_1:0 FullyConnected_2/b/Adam_1/Assign FullyConnected_2/b/Adam_1/read:02-FullyConnected_2/b/Adam_1/Initializer/zeros:0";
layer_tensor/FullyConnected

FullyConnected/BiasAdd:0"$
train_op

Adam/apply_grad_op_0"?
layer_tensor/FullyConnected_1

FullyConnected_1/BiasAdd:0"?
layer_tensor/FullyConnected_2

FullyConnected_2/Softmax:0"L
layer_variables/FullyConnected*
(
FullyConnected/W:0
FullyConnected/b:0"�
model_variables��
w
FullyConnected/W:0FullyConnected/W/AssignFullyConnected/W/read:02/FullyConnected/W/Initializer/truncated_normal:0
l
FullyConnected/b:0FullyConnected/b/AssignFullyConnected/b/read:02$FullyConnected/b/Initializer/Const:0

FullyConnected_1/W:0FullyConnected_1/W/AssignFullyConnected_1/W/read:021FullyConnected_1/W/Initializer/truncated_normal:0
t
FullyConnected_1/b:0FullyConnected_1/b/AssignFullyConnected_1/b/read:02&FullyConnected_1/b/Initializer/Const:0

FullyConnected_2/W:0FullyConnected_2/W/AssignFullyConnected_2/W/read:021FullyConnected_2/W/Initializer/truncated_normal:0
t
FullyConnected_2/b:0FullyConnected_2/b/AssignFullyConnected_2/b/read:02&FullyConnected_2/b/Initializer/Const:0
X
is_training:0is_training/Assignis_training/read:02is_training/Initializer/Const:0"�
trainable_variables��
w
FullyConnected/W:0FullyConnected/W/AssignFullyConnected/W/read:02/FullyConnected/W/Initializer/truncated_normal:0
l
FullyConnected/b:0FullyConnected/b/AssignFullyConnected/b/read:02$FullyConnected/b/Initializer/Const:0

FullyConnected_1/W:0FullyConnected_1/W/AssignFullyConnected_1/W/read:021FullyConnected_1/W/Initializer/truncated_normal:0
t
FullyConnected_1/b:0FullyConnected_1/b/AssignFullyConnected_1/b/read:02&FullyConnected_1/b/Initializer/Const:0

FullyConnected_2/W:0FullyConnected_2/W/AssignFullyConnected_2/W/read:021FullyConnected_2/W/Initializer/truncated_normal:0
t
FullyConnected_2/b:0FullyConnected_2/b/AssignFullyConnected_2/b/read:02&FullyConnected_2/b/Initializer/Const:0"(
	summaries

Loss:0
Adam/Loss/raw:0"6
Adam_training_summaries

Loss:0
Adam/Loss/raw:0+g�Y       �e�	���Z���A*L

Loss��@

Adam/Loss/raw`@

Accuracy/__raw_   >

Accuracy    ���fY       �e�	o׳Z���A*L

Lossѱ@

Adam/Loss/raw@_@

Accuracy/__raw_   >

Accuracy]t�=���Y       �e�	���Z���A*L

Loss�@

Adam/Loss/raw/L@

Accuracy/__raw_%I�>

Accuracy]�={jp�Y       �e�	T�Z���A*L

LossS@

Adam/Loss/rawIC@

Accuracy/__raw_�m�>

Accuracy�$p>��Y       �e�	�3�Z���A*L

Loss�5@

Adam/Loss/rawf@

Accuracy/__raw_    

Accuracy��>k�sMY       �e�	�L�Z���A*L

Loss�R@

Adam/Loss/rawQ@

Accuracy/__raw_  �>

Accuracy�'>تAY       �e�	wj�Z���A*L

Loss�Q@

Adam/Loss/rawS@

Accuracy/__raw_   >

AccuracycaP>eSY       �e�	���Z���A	*L

Loss�R@

Adam/Loss/raw8@

Accuracy/__raw_%I�>

Accuracyz�%>)p��Y       �e�	ܟ�Z���A
*L

LossfE@

Adam/Loss/raw�<@

Accuracy/__raw_%I�>

Accuracy�2e>�_��Y       �e�	غ�Z���A*L

LossZA@

Adam/Loss/rawp@

Accuracy/__raw_  �>

Accuracyԛ�>��XY       �e�	�ִZ���A*L

LossJ0@

Adam/Loss/rawp@

Accuracy/__raw_  �>

Accuracy��>+���Y       �e�	�Z���A*L

Loss6(@

Adam/Loss/raw�T@

Accuracy/__raw_   >

Accuracy%�>Ϭ%uY       �e�	
�Z���A*L

Loss{:@

Adam/Loss/raw�[@

Accuracy/__raw_    

AccuracyB�l>0� �Y       �e�	�+�Z���A*L

Loss�G@

Adam/Loss/raw9`@

Accuracy/__raw_%I>

Accuracy(>�
!�Y       �e�	RG�Z���A*L

Loss�P@

Adam/Loss/raw�~@

Accuracy/__raw_    

Accuracy�>�R�Y       �e�	�e�Z���A*L

Loss]a@

Adam/Loss/raw�"@

Accuracy/__raw_  �>

Accuracy�t�=w��&Y       �e�	���Z���A*L

Loss�K@

Adam/Loss/rawb3@

Accuracy/__raw_   >

Accuracy�>>���Y       �e�	V��Z���A*L

Loss�C@

Adam/Loss/raw�@

Accuracy/__raw_%I�>

Accuracy�)>
��BY       �e�	Z���A*L

Loss�2@

Adam/Loss/rawV?@

Accuracy/__raw_%I>

Accuracy?�>>"_Y       �e�	|ҵZ���A*L

Loss�6@

Adam/Loss/raw6c@

Accuracy/__raw_    

Accuracy��0>?x�IY       �e�	���Z���A*L

Loss�C@

Adam/Loss/rawh�@

Accuracy/__raw_   ?

Accuracy��=떔�Y       �e�	p$�Z���A*L

Loss� @

Adam/Loss/raw�W@

Accuracy/__raw_    

Accuracy�wl>�x�pY       �e�	FC�Z���A*L

Loss50@

Adam/Loss/raw1@

Accuracy/__raw_%I>

Accuracy��)> ��bY       �e�	$_�Z���A*L

Lossu0@

Adam/Loss/raw�,@

Accuracy/__raw_%I>

Accuracy �#>�A'Y       �e�	lz�Z���A*L

Loss�/@

Adam/Loss/rawHb@

Accuracy/__raw_    

Accuracy7�>{k	Y       �e�	d��Z���A*L

Loss�<@

Adam/Loss/rawҪ@

Accuracy/__raw_   ?

Accuracy	&�=����Y       �e�	֬�Z���A*L

Loss @

Adam/Loss/rawZS@

Accuracy/__raw_    

AccuracyD�X>�rY       �e�	mǶZ���A*L

Loss�&@

Adam/Loss/raw�@

Accuracy/__raw_%I>

AccuracyH�#>B��SY       �e�	��Z���A*L

Loss#@

Adam/Loss/raw@

Accuracy/__raw_%I>

Accuracy��>Y���Y       �e�	=�Z���A*L

Loss#@

Adam/Loss/raw0]@

Accuracy/__raw_    

AccuracyF�>k���Y       �e�	�'�Z���A *L

Loss-@

Adam/Loss/raw�@

Accuracy/__raw_   ?

Accuracy���=� t�Y       �e�	hA�Z���A!*L

Loss�	@

Adam/Loss/rawM@

Accuracy/__raw_    

AccuracyrO>^ʪ5Y       �e�	�\�Z���A"*L

Loss�@

Adam/Loss/raw��@

Accuracy/__raw_%I>

AccuracyG�">�0+Y       �e�	�u�Z���A#*L

Loss@

Adam/Loss/raw�@

Accuracy/__raw_%I�>

Accuracy�K>_II�Y       �e�	֏�Z���A$*L

Loss�@

Adam/Loss/rawJ7@

Accuracy/__raw_   >

Accuracyz�:>�mӄY       �e�	?��Z���A%*L

LossH@

Adam/Loss/raw47@

Accuracy/__raw_   >

Accuracyb�.>���Y       �e�	]ķZ���A&*L

Loss�@

Adam/Loss/raw6�@

Accuracy/__raw_  �>

Accuracy�%>>���Y       �e�	�޷Z���A'*L

LossR�@

Adam/Loss/raw�@

Accuracy/__raw_%I�>

Accuracy��6>)��6Y       �e�	b��Z���A(*L

Loss��@

Adam/Loss/raw��@

Accuracy/__raw_%I�>

AccuracyF�K>i��Y       �e�	'�Z���A)*L

Loss��@

Adam/Loss/raw`2@

Accuracy/__raw_   >

AccuracyL�[>\^
�Y       �e�	�1�Z���A**L

Loss��@

Adam/Loss/raw�(@

Accuracy/__raw_    

AccuracywWK> 3�Y       �e�	'K�Z���A+*L

Lossi�@

Adam/Loss/raw0�@

Accuracy/__raw_   >

Accuracy5u'>(!(Y       �e�	k�Z���A,*L

Loss�@

Adam/Loss/raw@

Accuracy/__raw_%I>

Accuracy� >���Y       �e�		��Z���A-*L

Loss9�@

Adam/Loss/raw�@

Accuracy/__raw_%I>

Accuracyj1><��Y       �e�	﮸Z���A.*L

Loss��@

Adam/Loss/raw��@

Accuracy/__raw_   >

Accuracy^5>~i�+Y       �e�	�ҸZ���A/*L

Loss'�@

Adam/Loss/raw8Y@

Accuracy/__raw_  �>

Accuracy��>�m}�Y       �e�	��Z���A0*L

Loss�@

Adam/Loss/raw�@

Accuracy/__raw_    

AccuracyO_(>-WL�Y       �e�	I�Z���A1*L

Loss3�@

Adam/Loss/raw(X@

Accuracy/__raw_%I>

Accuracy��>�B~Y       �e�	�8�Z���A2*L

LossP�@

Adam/Loss/raw�J@

Accuracy/__raw_%I>

Accuracy9|>s.��Y       �e�	�S�Z���A3*L

Loss�@

Adam/Loss/raw�|@

Accuracy/__raw_  �>

Accuracy�>�ƒY       �e�	�s�Z���A4*L

Loss��@

Adam/Loss/raw�p@

Accuracy/__raw_  �>

AccuracyV >�?SY       �e�	u��Z���A5*L

Loss�@

Adam/Loss/raw��@

Accuracy/__raw_    

Accuracy+.>�4��Y       �e�	ɬ�Z���A6*L

Loss��@

Adam/Loss/raw�@

Accuracy/__raw_%I�>

Accuracy��>[8�Y       �e�	TɹZ���A7*L

Loss��@

Adam/Loss/raw�@

Accuracy/__raw_%I�>

Accuracy�i)>�(CAY       �e�	u�Z���A8*L

Loss�e@

Adam/Loss/raw e@

Accuracy/__raw_    

AccuracyL�:>����Y       �e�	��Z���A9*L

Loss�@

Adam/Loss/raw��@

Accuracy/__raw_  �>

Accuracya� >�fu�Y       �e�	��Z���A:*L

Loss�e@

Adam/Loss/rawh@

Accuracy/__raw_   >

AccuracykM?>����Y       �e�	�A�Z���A;*L

Loss�[@

Adam/Loss/raw�
@

Accuracy/__raw_%I>

Accuracy��6>��R/Y       �e�	�^�Z���A<*L

Loss/Q@

Adam/Loss/raw�@

Accuracy/__raw_%I>

Accuracyi�1>:>��Y       �e�	y�Z���A=*L

Loss�E@

Adam/Loss/rawT@

Accuracy/__raw_  �>

Accuracy��->��9eY       �e�	)��Z���A>*L

Loss�@

Adam/Loss/rawhG@

Accuracy/__raw_    

Accuracy�H>��7�Y       �e�	`��Z���A?*L

Loss�B@

Adam/Loss/raw�x@

Accuracy/__raw_    

Accuracye/>*��Y       �e�	�ɺZ���A@*L

Loss)@

Adam/Loss/raw��@

Accuracy/__raw_%I>

Accuracyxx>� �Y       �e�	6�Z���AA*L

Lossi!@

Adam/Loss/raw�@

Accuracy/__raw_%I>

Accuracy��>��:Y       �e�	��Z���AB*L

Loss!@

Adam/Loss/raw�	@

Accuracy/__raw_   >

Accuracy��>H
kYY       �e�	\�Z���AC*L

Lossl@

Adam/Loss/raw`�@

Accuracy/__raw_  �>

Accuracy��>dT��Y       �e�	�<�Z���AD*L

Loss�@

Adam/Loss/raw=�@

Accuracy/__raw_   >

AccuracyH�0>��t�Y       �e�	\�Z���AE*L

LossI�@

Adam/Loss/raw<@

Accuracy/__raw_%I�>

AccuracyC+>��kY       �e�	�u�Z���AF*L

Loss��@

Adam/Loss/raw� @

Accuracy/__raw_%I�>

Accuracy�9>BKV�Y       �e�	��Z���AG*L

Loss/�@

Adam/Loss/raw�&@

Accuracy/__raw_   >

Accuracy�YE>�SqY       �e�	���Z���AH*L

Loss��@

Adam/Loss/rawb@

Accuracy/__raw_  �>

Accuracyr�=>�m�Y       �e�	»Z���AI*L

Lossǳ@

Adam/Loss/raw�@

Accuracy/__raw_   ?

Accuracy�'S>�X�Y       �e�	�ۻZ���AJ*L

Loss�v@

Adam/Loss/rawi@

Accuracy/__raw_%I>

Accuracy��>13��Y       �e�	b��Z���AK*L

Loss_u@

Adam/Loss/raw�K@

Accuracy/__raw_%I>

Accuracy�v> m�Y       �e�	�Z���AL*L

Loss�p@

Adam/Loss/raw�/@

Accuracy/__raw_   >

Accuracyhdk>��Y       �e�	2�Z���AM*L

Lossj@

Adam/Loss/rawZ@

Accuracy/__raw_  �>

Accuracyr`>���XY       �e�	LU�Z���AN*L

Loss\h@

Adam/Loss/raw0f@

Accuracy/__raw_  �>

Accuracyc�p>J�m4Y       �e�	�r�Z���AO*L

Loss�M@

Adam/Loss/rawg�@

Accuracy/__raw_%I�>

Accuracy��>����Y       �e�	Ό�Z���AP*L

Loss�S@

Adam/Loss/rawi]@

Accuracy/__raw_%I�>

Accuracy���>ɉ�SY       �e�	ʧ�Z���AQ*L

Loss�T@

Adam/Loss/raw4@

Accuracy/__raw_   ?

Accuracyk\�>�W��Y       �e�	�¼Z���AR*L

Loss�@

Adam/Loss/raw��@

Accuracy/__raw_   >

Accuracy-ӏ>�k1Y       �e�	#ݼZ���AS*L

Loss�@

Adam/Loss/raw� @

Accuracy/__raw_  �>

Accuracy�ׇ>�׋�Y       �e�	���Z���AT*L

Lossb�@

Adam/Loss/rawS6@

Accuracy/__raw_%I>

AccuracyJu�>�OfY       �e�	��Z���AU*L

Lossz�@

Adam/Loss/rawU@

Accuracy/__raw_%I>

Accuracyk��>B�XY       �e�	32�Z���AV*L

LossC�@

Adam/Loss/rawO�@

Accuracy/__raw_   ?

Accuracyoz�>;�?1Y       �e�	&V�Z���AW*L

Loss��@

Adam/Loss/rawV�@

Accuracy/__raw_  �>

Accuracy�:�>l�~Y       �e�	t~�Z���AX*L

Loss�U@

Adam/Loss/raw�[@

Accuracy/__raw_  �>

Accuracy�N�>�4�Y       �e�	���Z���AY*L

LossF#@

Adam/Loss/raw�c@

Accuracy/__raw_n�6?

Accuracyl��>b�MY       �e�	5��Z���AZ*L

Loss��@

Adam/Loss/raw�$@

Accuracy/__raw_n�6?

AccuracyD\�>#l��Y       �e�	lнZ���A[*L

LossO�@

Adam/Loss/raw��@

Accuracy/__raw_  �>

Accuracy ��>�{Y       �e�	p�Z���A\*L

Loss��@

Adam/Loss/rawv�@

Accuracy/__raw_  �>

Accuracy�S�>ݪY       �e�	t�Z���A]*L

Loss��@

Adam/Loss/raw��@

Accuracy/__raw_   ?

Accuracy���>�y��Y       �e�	h$�Z���A^*L

Loss�F@

Adam/Loss/raw��@

Accuracy/__raw_%I�>

Accuracy^��>�_fY       �e�	pA�Z���A_*L

Lossp8@

Adam/Loss/raw6�@

Accuracy/__raw_%I�>

Accuracy?�>L���Y       �e�	�]�Z���A`*L

Loss�&@

Adam/Loss/raw�@

Accuracy/__raw_   ?

AccuracyV��>KD��Y       �e�	���Z���Aa*L

Loss��@

Adam/Loss/raw�@

Accuracy/__raw_   >

Accuracy4ƿ>�GlY       �e�	���Z���Ab*L

LossG�@

Adam/Loss/raw�g
@

Accuracy/__raw_  �>

Accuracy/��>�'5Y       �e�	j��Z���Ac*L

Loss3X@

Adam/Loss/rawx�
@

Accuracy/__raw_%I?

AccuracyL�>bڀ�Y       �e�	=׾Z���Ad*L

Loss��@

Adam/Loss/raw�v
@

Accuracy/__raw_%I?

AccuracyJ��>NtIBY       �e�	R�Z���Ae*L

Lossl�@

Adam/Loss/rawB�@

Accuracy/__raw_   ?

Accuracy��>]��9Y       �e�	��Z���Af*L

Lossh�@

Adam/Loss/raw~n@

Accuracy/__raw_   >

Accuracy��>�pY       �e�	&�Z���Ag*L

Loss��@

Adam/Loss/raw6W@

Accuracy/__raw_  �>

Accuracy{��>WL�Y       �e�	t@�Z���Ah*L

Loss[�@

Adam/Loss/raw�R@

Accuracy/__raw_�m�>

Accuracy��>�
��Y       �e�	\�Z���Ai*L

Loss��@

Adam/Loss/raw�@

Accuracy/__raw_�m�>

Accuracy�[�>?F��Y       �e�	Jz�Z���Aj*L

Loss�d@

Adam/Loss/raw�p@

Accuracy/__raw_  �>

Accuracy���>3"�]Y       �e�	���Z���Ak*L

Loss�2@

Adam/Loss/raw9�@

Accuracy/__raw_   ?

AccuracyP0�>Z�O�Y       �e�	���Z���Al*L

Loss��@

Adam/Loss/raw(A@

Accuracy/__raw_   ?

Accuracy��>ȞDPY       �e�	�ٿZ���Am*L

Loss�@

Adam/Loss/raw&f
@

Accuracy/__raw_%I?

AccuracyL��>9K7�Y       �e�	��Z���An*L

Loss��@

Adam/Loss/raw�
@

Accuracy/__raw_%I?

Accuracy2��>cBm�Y       �e�	��Z���Ao*L

Loss��@

Adam/Loss/raw��@

Accuracy/__raw_  �>

Accuracy��>�tY       �e�	�%�Z���Ap*L

Loss��@

Adam/Loss/rawe
@

Accuracy/__raw_  �>

AccuracyQd�>	T
�Y       �e�	WB�Z���Aq*L

Lossp�@

Adam/Loss/rawá
@

Accuracy/__raw_  �>

Accuracy��>��z1Y       �e�	�^�Z���Ar*L

Loss߇@

Adam/Loss/rawn�@

Accuracy/__raw_�m�>

Accuracy�/�>Q�/>Y       �e�	�|�Z���As*L

LossT'@

Adam/Loss/raw]`@

Accuracy/__raw_�m�>

Accuracy'��>^�<Y       �e�	���Z���At*L

Loss��
@

Adam/Loss/raw<�@

Accuracy/__raw_  �>

Accuracy�.�>E���Y       �e�	s��Z���Au*L

LossK\
@

Adam/Loss/rawLL@

Accuracy/__raw_   >

Accuracyk��>�t�Y       �e�	���Z���Av*L

Loss~�
@

Adam/Loss/raw��@

Accuracy/__raw_  �>

Accuracyz��>i,Y       �e�	���Z���Aw*L

LossND
@

Adam/Loss/raw��@

Accuracy/__raw_%I?

Accuracyna�>��tY       �e�	��Z���Ax*L

Loss�
@

Adam/Loss/raw�g@

Accuracy/__raw_%I?

AccuracyQ��>�Y       �e�	A*�Z���Ay*L

Loss�	@

Adam/Loss/raw�@

Accuracy/__raw_   ?

Accuracy�w�>��y�Y       �e�	�J�Z���Az*L

Loss�`	@

Adam/Loss/raw��@

Accuracy/__raw_  �>

Accuracy*��>��;<Y       �e�	nh�Z���A{*L

LossB�@

Adam/Loss/raw�=@

Accuracy/__raw_  �>

Accuracy���>�4lY       �e�	���Z���A|*L

Loss3�@

Adam/Loss/raw��@

Accuracy/__raw_n�6?

Accuracy�J�>ύ�Y       �e�		��Z���A}*L

LossX@

Adam/Loss/raw�@

Accuracy/__raw_n�6?

Accuracyo�>�tڟY       �e�	]��Z���A~*L

Loss�@

Adam/Loss/raw��@

Accuracy/__raw_  �>

Accuracy��>f�Y       �e�	*��Z���A*L

Lossؤ@

Adam/Loss/raw��@

Accuracy/__raw_   >

Accuracy���>�Ӥ4Z       o��		��Z���A�*L

Loss��@

Adam/Loss/raw��@

Accuracy/__raw_  �>

Accuracy[��>� M�Z       o��	��Z���A�*L

Loss�$@

Adam/Loss/raw
<@

Accuracy/__raw_%I�>

Accuracy8��>j�U�Z       o��	.9�Z���A�*L

Loss��@

Adam/Loss/raw��@

Accuracy/__raw_%I�>

Accuracy��>�'�Z       o��	\U�Z���A�*L

Lossz�@

Adam/Loss/rawn�@

Accuracy/__raw_  �>

Accuracyo"�>Z�6Z       o��	Ho�Z���A�*L

Loss=@

Adam/Loss/rawE� @

Accuracy/__raw_  @?

Accuracy���>|/�Z       o��	a��Z���A�*L

Loss��@

Adam/Loss/raw>@

Accuracy/__raw_   ?

Accuracyi�>h��>Z       o��	Ҩ�Z���A�*L

Loss�=@

Adam/Loss/rawp@

Accuracy/__raw_�m�>

Accuracy���>�w �Z       o��	���Z���A�*L

Loss�B@

Adam/Loss/rawM@

Accuracy/__raw_�m�>

Accuracy,�>���}Z       o��	��Z���A�*L

LossN>@

Adam/Loss/raw&�?

Accuracy/__raw_  �>

Accuracy���>���Z       o��	���Z���A�*L

Loss{R@

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracy�f�>-��gZ       o��	��Z���A�*L

Loss��@

Adam/Loss/raw��@

Accuracy/__raw_   ?

Accuracyŏ�>6���Z       o��	2�Z���A�*L

Loss(�@

Adam/Loss/raw���?

Accuracy/__raw_%I?

Accuracy1��>)�)Z       o��	nL�Z���A�*L

Loss��@

Adam/Loss/raw�d�?

Accuracy/__raw_%I?

Accuracy4H�>ز��Z       o��	�k�Z���A�*L

Loss,�@

Adam/Loss/raw!��?

Accuracy/__raw_  �>

Accuracyj�>7���Z       o��	���Z���A�*L

Loss��@

Adam/Loss/raw:��?

Accuracy/__raw_  �>

Accuracy�L�>W�Z       o��	��Z���A�*L

Loss�� @

Adam/Loss/raw� �?

Accuracy/__raw_   ?

Accuracy��>��սZ       o��	���Z���A�*L

Loss�� @

Adam/Loss/raw9Y�?

Accuracy/__raw_�m�>

Accuracy���>�YbZ       o��	���Z���A�*L

Loss�h @

Adam/Loss/raw�1�?

Accuracy/__raw_�m�>

Accuracym��>����Z       o��	y�Z���A�*L

Lossh��?

Adam/Loss/rawm��?

Accuracy/__raw_  �>

Accuracy�#�>?�=Z       o��	C�Z���A�*L

Loss���?

Adam/Loss/raw���?

Accuracy/__raw_   ?

Accuracy���>����Z       o��	m9�Z���A�*L

Loss���?

Adam/Loss/raw$�?

Accuracy/__raw_   ?

Accuracyp�>bdx�Z       o��	S�Z���A�*L

Loss���?

Adam/Loss/rawG��?

Accuracy/__raw_%I?

Accuracyr�>h��Z       o��	r�Z���A�*L

Loss��?

Adam/Loss/raw/��?

Accuracy/__raw_%I?

Accuracy�(�>s]жZ       o��	���Z���A�*L

Loss��?

Adam/Loss/rawDQ @

Accuracy/__raw_   >

AccuracyM�>Q��IZ       o��	��Z���A�*L

Loss�=�?

Adam/Loss/rawq��?

Accuracy/__raw_   ?

Accuracy�>�4Z       o��	y��Z���A�*L

LossP�?

Adam/Loss/raww~�?

Accuracy/__raw_  �>

Accuracy��>#TZ       o��	���Z���A�*L

LossAn�?

Adam/Loss/raw�S�?

Accuracy/__raw_%I?

Accuracyʓ�>S�L>Z       o��	�
�Z���A�*L

Loss��?

Adam/Loss/rawN��?

Accuracy/__raw_%I?

Accuracy���>�
�Z       o��	N%�Z���A�*L

LossG��?

Adam/Loss/rawO�?

Accuracy/__raw_   ?

Accuracy�A�>!�wkZ       o��	h?�Z���A�*L

Losss��?

Adam/Loss/raw`��?

Accuracy/__raw_   ?

Accuracy:n�>���Z       o��	.Y�Z���A�*L

Loss���?

Adam/Loss/raw���?

Accuracy/__raw_   ?

Accuracy4c�>�t�Z       o��	�r�Z���A�*L

Loss��?

Adam/Loss/raw���?

Accuracy/__raw_%I�>

Accuracy&�>�UWZ       o��	���Z���A�*L

Loss���?

Adam/Loss/raw;��?

Accuracy/__raw_%I�>

Accuracy0��>M��Z       o��	��Z���A�*L

Lossq��?

Adam/Loss/raw��?

Accuracy/__raw_   ?

Accuracy�P�>^.b�Z       o��	w��Z���A�*L

Loss�z�?

Adam/Loss/raw���?

Accuracy/__raw_   ?

Accuracy���>�#J�Z       o��	��Z���A�*L

LossƲ�?

Adam/Loss/raw~7�?

Accuracy/__raw_  @?

Accuracy	��>c rWZ       o��	�Z���A�*L

Loss���?

Adam/Loss/raw��?

Accuracy/__raw_�m�>

AccuracyU>�>�ğtZ       o��	q�Z���A�*L

Loss���?

Adam/Loss/rawX2�?

Accuracy/__raw_�m�>

Accuracy��>X8VYZ       o��	8�Z���A�*L

Loss!�?

Adam/Loss/rawNw�?

Accuracy/__raw_  �>

AccuracyV��>G��Z       o��	�U�Z���A�*L

Loss�v�?

Adam/Loss/raw�u�?

Accuracy/__raw_  �>

Accuracy���>�� �Z       o��	�r�Z���A�*L

Loss��?

Adam/Loss/rawOV�?

Accuracy/__raw_  @?

Accuracy$�>�^C�Z       o��	7��Z���A�*L

Loss~��?

Adam/Loss/raw.��?

Accuracy/__raw_%I�>

Accuracy��>�:DwZ       o��	)��Z���A�*L

LossC*�?

Adam/Loss/raw���?

Accuracy/__raw_%I�>

AccuracyH��>��T�Z       o��	:��Z���A�*L

Loss���?

Adam/Loss/raw��?

Accuracy/__raw_   >

AccuracyD�>(Z       o��	���Z���A�*L

Loss���?

Adam/Loss/rawj��?

Accuracy/__raw_   ?

Accuracyup�>T�fZ       o��	��Z���A�*L

Loss{��?

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracy���>�C�Z       o��	�4�Z���A�*L

Losshm�?

Adam/Loss/rawI�?

Accuracy/__raw_%I�>

Accuracy@7�>���Z       o��	�O�Z���A�*L

LossI�?

Adam/Loss/raw�K�?

Accuracy/__raw_%I�>

Accuracy�R�>%g�Z       o��	�i�Z���A�*L

Loss���?

Adam/Loss/rawA��?

Accuracy/__raw_   ?

Accuracy~�>W�۷Z       o��	���Z���A�*L

Loss���?

Adam/Loss/raw�?

Accuracy/__raw_   ?

Accuracy>��>:;Z       o��	��Z���A�*L

LossS��?

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracy��>�u|DZ       o��	,��Z���A�*L

LossD��?

Adam/Loss/raw9X�?

Accuracy/__raw_%I?

Accuracy<��>�Z�!Z       o��	���Z���A�*L

Loss)<�?

Adam/Loss/raw�l�?

Accuracy/__raw_%I?

Accuracy$6�>�ɢMZ       o��	���Z���A�*L

Loss���?

Adam/Loss/rawĺ�?

Accuracy/__raw_  �>

Accuracy�%�>�5�lZ       o��	��Z���A�*L

Loss�=�?

Adam/Loss/raw7��?

Accuracy/__raw_   ?

Accuracy/U�>�"SZ       o��	5�Z���A�*L

Loss��?

Adam/Loss/raw���?

Accuracy/__raw_   ?

Accuracy�L�>��IZ       o��	�R�Z���A�*L

Lossѫ�?

Adam/Loss/raw���?

Accuracy/__raw_%I?

Accuracy3��>%ɺNZ       o��	vo�Z���A�*L

Loss�d�?

Adam/Loss/raw+��?

Accuracy/__raw_�m�>

Accuracy��>ilf�Z       o��	��Z���A�*L

Loss�$�?

Adam/Loss/raw}�?

Accuracy/__raw_  �>

Accuracyk+�>�D��Z       o��	<��Z���A�*L

Loss�z�?

Adam/Loss/raw�_�?

Accuracy/__raw_   ?

Accuracy���>0�n�Z       o��	���Z���A�*L

Loss�D�?

Adam/Loss/raw�F�?

Accuracy/__raw_  �>

Accuracyi-�>�z�Z       o��	���Z���A�*L

Loss��?

Adam/Loss/raw�@�?

Accuracy/__raw_�m�>

Accuracy���>�(Z       o��	�Z���A�*L

Loss���?

Adam/Loss/raw�V�?

Accuracy/__raw_�m�>

Accuracy��>�4�@Z       o��	$�Z���A�*L

Loss���?

Adam/Loss/raw��?

Accuracy/__raw_   ?

Accuracyp��>��Z       o��	�?�Z���A�*L

Loss�,�?

Adam/Loss/rawX��?

Accuracy/__raw_   ?

AccuracyK��>�-x!Z       o��	O]�Z���A�*L

Lossƺ�?

Adam/Loss/rawC�?

Accuracy/__raw_  �>

Accuracy]I�>)xEZ       o��	p{�Z���A�*L

Lossh��?

Adam/Loss/raw��?

Accuracy/__raw_�m�>

Accuracy��>eE�yZ       o��	g��Z���A�*L

Loss?��?

Adam/Loss/rawBE�?

Accuracy/__raw_�m�>

Accuracy�l�>mi��Z       o��	���Z���A�*L

Loss��?

Adam/Loss/raw���?

Accuracy/__raw_   ?

Accuracy �>��Z       o��	���Z���A�*L

Loss�]�?

Adam/Loss/raw�;�?

Accuracy/__raw_  @?

AccuracyH��> ��mZ       o��	���Z���A�*L

Loss2��?

Adam/Loss/raw��?

Accuracy/__raw_   ?

Accuracy�\�>[��Z       o��	�Z���A�*L

Lossz��?

Adam/Loss/rawP��?

Accuracy/__raw_�m�>

AccuracyM��>Rk��Z       o��	��Z���A�*L

Lossv��?

Adam/Loss/rawy��?

Accuracy/__raw_�m�>

AccuracyX|�>�<�Z       o��	_@�Z���A�*L

Loss���?

Adam/Loss/rawGϳ?

Accuracy/__raw_   ?

AccuracyHa�>��YZ       o��	W\�Z���A�*L

Loss���?

Adam/Loss/raw(˵?

Accuracy/__raw_  �>

Accuracy���>e��kZ       o��	Gw�Z���A�*L

Loss`�?

Adam/Loss/rawb��?

Accuracy/__raw_  �>

Accuracy��>% \Z       o��	��Z���A�*L

Loss���?

Adam/Loss/raw�]�?

Accuracy/__raw_n�6?

Accuracy��>���|Z       o��	"��Z���A�*L

Loss4��?

Adam/Loss/raw]�?

Accuracy/__raw_n�6?

AccuracyE0�>z�M�Z       o��	"��Z���A�*L

Loss�z�?

Adam/Loss/rawG�?

Accuracy/__raw_   ?

Accuracy���>�#�Z       o��	���Z���A�*L

Lossv��?

Adam/Loss/raw<!�?

Accuracy/__raw_  �>

Accuracyk� ?UC�Z       o��	���Z���A�*L

Loss�-�?

Adam/Loss/raw4��?

Accuracy/__raw_  �>

Accuracy���>�5��Z       o��	��Z���A�*L

Loss��?

Adam/Loss/raw�H�?

Accuracy/__raw_n�6?

Accuracy-�>>��"Z       o��	X8�Z���A�*L

Loss���?

Adam/Loss/rawM[�?

Accuracy/__raw_n�6?

Accuracyn�> ftZ       o��	X�Z���A�*L

Loss!��?

Adam/Loss/rawe2�?

Accuracy/__raw_  �>

Accuracy�-?���tZ       o��	x�Z���A�*L

Loss���?

Adam/Loss/rawV30@

Accuracy/__raw_   >

Accuracy�R�>ik�Z       o��	���Z���A�*L

Loss��?

Adam/Loss/rawg��?

Accuracy/__raw_   ?

Accuracy�0�>�EsQZ       o��	W��Z���A�*L

LossH�?

Adam/Loss/raw?

Accuracy/__raw_%I?

Accuracy<�>��nZ       o��	���Z���A�*L

Loss���?

Adam/Loss/raw���?

Accuracy/__raw_%I?

Accuracy>R�>S=H�Z       o��	h��Z���A�*L

Loss��?

Adam/Loss/raw��?

Accuracy/__raw_  �>

Accuracy?��>��&Z       o��	f�Z���A�*L

Loss~��?

Adam/Loss/raw��?

Accuracy/__raw_  �>

Accuracy���>�SV�Z       o��	0�Z���A�*L

Loss� �?

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracy�t�>��f5Z       o��	@Q�Z���A�*L

Lossi��?

Adam/Loss/raw�^�?

Accuracy/__raw_%I?

Accuracy,i�>=$xvZ       o��	p�Z���A�*L

Loss���?

Adam/Loss/rawS��?

Accuracy/__raw_%I?

Accuracy���>/�HwZ       o��	֋�Z���A�*L

Loss*��?

Adam/Loss/raw'��?

Accuracy/__raw_  �>

Accuracy��>�M��Z       o��	��Z���A�*L

Loss�&�?

Adam/Loss/raw��?

Accuracy/__raw_   ?

AccuracyZW�>����Z       o��	��Z���A�*L

Loss/��?

Adam/Loss/raw1=�?

Accuracy/__raw_  �>

Accuracy8h�>��Z       o��	���Z���A�*L

Loss�|�?

Adam/Loss/raw��?

Accuracy/__raw_�m�>

Accuracy2��>q�(�Z       o��	���Z���A�*L

Loss�m�?

Adam/Loss/raw�?�?

Accuracy/__raw_�m�>

Accuracy&U�>���Z       o��	E�Z���A�*L

Lossi�?

Adam/Loss/rawQ�?

Accuracy/__raw_  @?

Accuracy�
�>���Z       o��	,�Z���A�*L

LossL �?

Adam/Loss/rawvآ?

Accuracy/__raw_  �>

Accuracy�V�>��8{Z       o��	�G�Z���A�*L

Loss���?

Adam/Loss/raw^1�?

Accuracy/__raw_  @?

Accuracyx��>�lF�Z       o��	{h�Z���A�*L

Loss�"�?

Adam/Loss/raw/?�?

Accuracy/__raw_%I?

Accuracy�6�>fJ��Z       o��	���Z���A�*L

LossT��?

Adam/Loss/raw���?

Accuracy/__raw_%I?

Accuracy�y?1p��Z       o��	��Z���A�*L

Loss���?

Adam/Loss/rawxz�?

Accuracy/__raw_   ?

Accuracy�'?���Z       o��	b��Z���A�*L

Loss��?

Adam/Loss/raw�8�?

Accuracy/__raw_  �>

Accuracy�?���Z       o��	���Z���A�*L

Loss�p�?

Adam/Loss/rawLY�?

Accuracy/__raw_   ?

Accuracy�O�>���kZ       o��	���Z���A�*L

LossE;�?

Adam/Loss/raws�?

Accuracy/__raw_�m�>

Accuracy2{�>�L��Z       o��	�Z���A�*L

Lossc �?

Adam/Loss/raw�=�?

Accuracy/__raw_�m�>

Accuracy?��>
1fCZ       o��	�-�Z���A�*L

Loss��?

Adam/Loss/raw{�?

Accuracy/__raw_   ?

Accuracy���>�
<5Z       o��	�K�Z���A�*L

Loss��?

Adam/Loss/raw�|�?

Accuracy/__raw_   ?

Accuracy���>�!S�Z       o��	�m�Z���A�*L

Loss���?

Adam/Loss/raw+C�?

Accuracy/__raw_   ?

Accuracy���>6+BZZ       o��	���Z���A�*L

Loss�i�?

Adam/Loss/raw��?

Accuracy/__raw_%I�>

Accuracy(?`O�Z       o��	���Z���A�*L

Loss:/�?

Adam/Loss/raw�8�?

Accuracy/__raw_%I�>

Accuracy���>���Z       o��	��Z���A�*L

Loss)��?

Adam/Loss/raw���?

Accuracy/__raw_   ?

Accuracy�/�>�Ƹ�Z       o��	.��Z���A�*L

Lossi��?

Adam/Loss/raw��?

Accuracy/__raw_   ?

Accuracy|��>��.Z       o��	���Z���A�*L

Loss�@�?

Adam/Loss/raw�ש?

Accuracy/__raw_   ?

Accuracy�0�>؁uZ       o��	*�Z���A�*L

Lossl�?

Adam/Loss/raw2�?

Accuracy/__raw_%I?

Accuracy'��>���Z       o��	T9�Z���A�*L

Loss���?

Adam/Loss/raw�E�?

Accuracy/__raw_%I?

Accuracy�
�>$��tZ       o��	�T�Z���A�*L

Loss��?

Adam/Loss/raw�G�?

Accuracy/__raw_  �>

Accuracy�e?v��WZ       o��	�r�Z���A�*L

Loss��?

Adam/Loss/raw���?

Accuracy/__raw_   ?

Accuracy|�>Ni�Z       o��	q��Z���A�*L

Lossy��?

Adam/Loss/rawze�?

Accuracy/__raw_   ?

Accuracy���>���Z       o��	��Z���A�*L

Loss��?

Adam/Loss/raw�?

Accuracy/__raw_�m�>

Accuracyl�?��d�Z       o��	z��Z���A�*L

LossQM�?

Adam/Loss/raw�o�?

Accuracy/__raw_�m�>

AccuracyUE�>ξ�Z       o��	 ��Z���A�*L

Loss���?

Adam/Loss/raw���?

Accuracy/__raw_  @?

Accuracyů�>$C�wZ       o��	���Z���A�*L

Loss���?

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracyu?�(�OZ       o��	��Z���A�*L

Loss���?

Adam/Loss/raw�A�?

Accuracy/__raw_   ?

Accuracy�9�>�c�Z       o��	�.�Z���A�*L

Loss��?

Adam/Loss/raw⑃?

Accuracy/__raw_%I?

Accuracy@?l���Z       o��	,G�Z���A�*L

Loss?

Adam/Loss/raw�т?

Accuracy/__raw_%I?

Accuracyq�?�8Z       o��	�`�Z���A�*L

Lossh̤?

Adam/Loss/rawo�?

Accuracy/__raw_  �>

Accuracy�S?��WZ       o��	�~�Z���A�*L

LossF��?

Adam/Loss/rawB�?

Accuracy/__raw_   ?

Accuracy�� ?�"�>Z       o��	���Z���A�*L

Loss�?

Adam/Loss/rawʭ?

Accuracy/__raw_   ?

Accuracy�?nK�Z       o��	<��Z���A�*L

Loss�n�?

Adam/Loss/raw}9�?

Accuracy/__raw_�m�>

AccuracyN�?�=�Z       o��	Y��Z���A�*L

LossCi�?

Adam/Loss/raw��?

Accuracy/__raw_�m�>

Accuracy)&?��OiZ       o��	���Z���A�*L

Loss>m�?

Adam/Loss/raw�&�?

Accuracy/__raw_  @?

Accuracy��?��6�Z       o��	��Z���A�*L

Loss1�?

Adam/Loss/raw�t�?

Accuracy/__raw_  �>

Accuracyr?��Z       o��	8�Z���A�*L

Loss:��?

Adam/Loss/raw�}�?

Accuracy/__raw_  �>

Accuracy�?��V.Z       o��	.U�Z���A�*L

LossԦ?

Adam/Loss/rawi9�?

Accuracy/__raw_n�6?

Accuracy��>t��(Z       o��	.q�Z���A�*L

Loss�D�?

Adam/Loss/raw���?

Accuracy/__raw_n�6?

Accuracy�?�ƸMZ       o��	\��Z���A�*L

Lossj��?

Adam/Loss/raw+3�?

Accuracy/__raw_  @?

Accuracy�:?����Z       o��	��Z���A�*L

Loss0@�?

Adam/Loss/raw��?

Accuracy/__raw_   ?

Accuracy��?7��cZ       o��	���Z���A�*L

Loss	�?

Adam/Loss/raw��?

Accuracy/__raw_   ?

Accuracyf�?쀩�Z       o��	6��Z���A�*L

Loss�բ?

Adam/Loss/raw[y�?

Accuracy/__raw_%I>

Accuracy\?y�Z       o��	� �Z���A�*L

Loss��?

Adam/Loss/raw#��?

Accuracy/__raw_%I>

Accuracy��?u�N�Z       o��	*�Z���A�*L

Loss���?

Adam/Loss/raw�J�?

Accuracy/__raw_  `?

Accuracyh
�>�C�Z       o��	�4�Z���A�*L

Loss��?

Adam/Loss/raw�1w?

Accuracy/__raw_  @?

Accuracy�7?K,j�Z       o��	zP�Z���A�*L

Loss��?

Adam/Loss/raw�,�?

Accuracy/__raw_  `?

AccuracyL2
?W�1$Z       o��	�n�Z���A�*L

LossӶ�?

Adam/Loss/rawQH�?

Accuracy/__raw_%I?

Accuracy��?s1��Z       o��	���Z���A�*L

Loss�^�?

Adam/Loss/raw*��?

Accuracy/__raw_%I?

AccuracyK�?;k��Z       o��	Ƨ�Z���A�*L

Loss~�?

Adam/Loss/raw[7�?

Accuracy/__raw_   ?

Accuracy��?H<?8Z       o��	7��Z���A�*L

Loss.�?

Adam/Loss/raw',�?

Accuracy/__raw_  �>

Accuracy��?kϮ/Z       o��	P��Z���A�*L

Loss��?

Adam/Loss/raw���?

Accuracy/__raw_   ?

Accuracy�?���KZ       o��	 �Z���A�*L

Loss)��?

Adam/Loss/rawRڕ?

Accuracy/__raw_%I?

Accuracy��?��OZ       o��	9%�Z���A�*L

Loss��?

Adam/Loss/raw�*�?

Accuracy/__raw_%I?

Accuracy�_?�f1Z       o��	�C�Z���A�*L

Loss�Ϟ?

Adam/Loss/raw��?

Accuracy/__raw_   ?

Accuracy�?���Z       o��	�b�Z���A�*L

Loss�?

Adam/Loss/raw籝?

Accuracy/__raw_   ?

AccuracyJ?�&�Z       o��	��Z���A�*L

Loss���?

Adam/Loss/raw��y?

Accuracy/__raw_   ?

Accuracy)?a+d?Z       o��	|��Z���A�*L

LossX��?

Adam/Loss/raw�թ?

Accuracy/__raw_%I?

Accuracy'�?m
�Z       o��	(��Z���A�*L

LossL2�?

Adam/Loss/raw9�?

Accuracy/__raw_%I?

Accuracy�?�\eaZ       o��	���Z���A�*L

Loss��?

Adam/Loss/rawD�?

Accuracy/__raw_   ?

AccuracyC?Г�Z       o��	��Z���A�*L

LossS��?

Adam/Loss/rawU@

Accuracy/__raw_   >

Accuracy	h?�">Z       o��	��Z���A�*L

Loss�?�?

Adam/Loss/raw�?

Accuracy/__raw_  @?

AccuracyD?Օ3�Z       o��	f0�Z���A�*L

Loss���?

Adam/Loss/rawŒ�?

Accuracy/__raw_%I?

Accuracy:=
?R��<Z       o��	�H�Z���A�*L

Lossm�?

Adam/Loss/raw�_�?

Accuracy/__raw_%I?

Accuracy8?�O�GZ       o��	�b�Z���A�*L

Loss��?

Adam/Loss/raw S�?

Accuracy/__raw_   ?

Accuracy��?丨�Z       o��	�}�Z���A�*L

Loss���?

Adam/Loss/raw��?

Accuracy/__raw_  �>

Accuracy��?�p��Z       o��	)��Z���A�*L

Lossl�?

Adam/Loss/rawD�?

Accuracy/__raw_  @?

AccuracyL6	?x!��Z       o��	��Z���A�*L

Loss7�?

Adam/Loss/raw? �?

Accuracy/__raw_%I?

Accuracyް?�y��Z       o��	���Z���A�*L

Loss��?

Adam/Loss/rawk��?

Accuracy/__raw_%I?

Accuracy�?�*@�Z       o��	��Z���A�*L

Loss�?

Adam/Loss/raw���?

Accuracy/__raw_   ?

Accuracy�_?@(��Z       o��	�	�Z���A�*L

Loss��?

Adam/Loss/raw<��?

Accuracy/__raw_   ?

Accuracy&�?�S�Z       o��	["�Z���A�*L

Loss�á?

Adam/Loss/rawH��?

Accuracy/__raw_  �>

Accuracy�s?� �CZ       o��	�<�Z���A�*L

Loss�>�?

Adam/Loss/raw�F?

Accuracy/__raw_�m[?

Accuracy�?��&�Z       o��	�V�Z���A�*L

LossF��?

Adam/Loss/raw^�E?

Accuracy/__raw_�m[?

Accuracy�Y?�-#Z       o��	o�Z���A�*L

Loss�;�?

Adam/Loss/rawE��?

Accuracy/__raw_   ?

Accuracy��?�s��Z       o��	���Z���A�*L

Loss算?

Adam/Loss/raw*"�?

Accuracy/__raw_   ?

Accuracy�x?s��?Z       o��	���Z���A�*L

Lossn��?

Adam/Loss/rawˊ?

Accuracy/__raw_   ?

AccuracyS?�˒fZ       o��	#��Z���A�*L

Loss戕?

Adam/Loss/raw,�?

Accuracy/__raw_�m�>

Accuracy��?,�ȻZ       o��	���Z���A�*L

LossѲ�?

Adam/Loss/raw�t�?

Accuracy/__raw_�m�>

AccuracyR�?�g��Z       o��	 �Z���A�*L

Loss;ƕ?

Adam/Loss/raw�As?

Accuracy/__raw_  @?

Accuracy�4?�יZ       o��	�5�Z���A�*L

Loss���?

Adam/Loss/raw��R@

Accuracy/__raw_    

Accuracy�H?N�
�Z       o��	YN�Z���A�*L

Loss�m�?

Adam/Loss/raw`��?

Accuracy/__raw_  �>

Accuracy�?M�Z       o��	,g�Z���A�*L

LossC@�?

Adam/Loss/raw��j?

Accuracy/__raw_�m[?

Accuracy9 ?��8Z       o��	k��Z���A�*L

Loss,��?

Adam/Loss/raw5�i?

Accuracy/__raw_�m[?

Accuracyy9	?QC�?Z       o��	
��Z���A�*L

Loss�`�?

Adam/Loss/raw�Q�?

Accuracy/__raw_  @?

Accuracy�q?lzZ       o��	û�Z���A�*L

Loss8��?

Adam/Loss/raw'�e?

Accuracy/__raw_   ?

Accuracy�?(�vpZ       o��	=��Z���A�*L

Loss��?

Adam/Loss/raw)T�?

Accuracy/__raw_  �>

Accuracy��?��.Z       o��	���Z���A�*L

Loss���?

Adam/Loss/raw/�N?

Accuracy/__raw_  �?

Accuracy��?��+Z       o��	U�Z���A�*L

Loss��?

Adam/Loss/raw��M?

Accuracy/__raw_  �?

Accuracy�?R�ffZ       o��	I0�Z���A�*L

Loss���?

Adam/Loss/raw�.�?

Accuracy/__raw_   ?

Accuracyd:$?u*��Z       o��	wK�Z���A�*L

LossD�?

Adam/Loss/raw��?

Accuracy/__raw_   ?

Accuracy�� ?T��#Z       o��	�e�Z���A�*L

Loss��?

Adam/Loss/raw��y?

Accuracy/__raw_   ?

AccuracyBX?�G#Z       o��	��Z���A�*L

Loss���?

Adam/Loss/raw�)�?

Accuracy/__raw_�m�>

Accuracyi?0a��Z       o��	=��Z���A�*L

LossM�?

Adam/Loss/raw�ր?

Accuracy/__raw_�m�>

Accuracy��?�.T�Z       o��	��Z���A�*L

Loss$��?

Adam/Loss/raw��?

Accuracy/__raw_   ?

Accuracy�?E���Z       o��	W��Z���A�*L

Loss�Ύ?

Adam/Loss/raw�^�?

Accuracy/__raw_  @?

Accuracy�S?y5?Z       o��	���Z���A�*L

Loss]��?

Adam/Loss/rawx��?

Accuracy/__raw_   ?

Accuracy*�?lJ�Z       o��	��Z���A�*L

Loss`��?

Adam/Loss/raw��q?

Accuracy/__raw_%I?

Accuracyj?�U Z       o��	-�Z���A�*L

Loss^?

Adam/Loss/raw�p?

Accuracy/__raw_%I?

Accuracy�?G��Z       o��	�T�Z���A�*L

Loss]��?

Adam/Loss/rawp*�?

Accuracy/__raw_   ?

Accuracy��?1d]Z       o��	�s�Z���A�*L

Loss"�?

Adam/Loss/raw�p?

Accuracy/__raw_  @?

Accuracy�?��:Z       o��	��Z���A�*L

Loss��?

Adam/Loss/raw�fL?

Accuracy/__raw_   ?

Accuracy�C?��Z       o��	��Z���A�*L

Loss�\�?

Adam/Loss/raw��?

Accuracy/__raw_%I?

Accuracy
�?	
�#Z       o��	&��Z���A�*L

Loss��?

Adam/Loss/raw㍞?

Accuracy/__raw_%I?

Accuracy&�?B1L�Z       o��	���Z���A�*L

Lossk͋?

Adam/Loss/raw�k�?

Accuracy/__raw_  @?

Accuracyo?�J�Z       o��	���Z���A�*L

Loss�C�?

Adam/Loss/rawr�?

Accuracy/__raw_   ?

AccuracyX�?Ӡ�=Z       o��	q�Z���A�*L

Loss��?

Adam/Loss/raw�?

Accuracy/__raw_   ?

Accuracy�?�7��Z       o��	!:�Z���A�*L

Loss�?

Adam/Loss/raw/.�?

Accuracy/__raw_n�6?

Accuracy��?�AJAZ       o��	7T�Z���A�*L

LossF|�?

Adam/Loss/raw�Ȁ?

Accuracy/__raw_n�6?

Accuracyb&?�+�Z       o��	�m�Z���A�*L

Loss�?

Adam/Loss/rawDM�?

Accuracy/__raw_   ?

AccuracyJ?��Z       o��		��Z���A�*L

LossGK�?

Adam/Loss/raw�A?

Accuracy/__raw_  @?

Accuracy\?�m�Z       o��	à�Z���A�*L

Loss��?

Adam/Loss/raw�\�?

Accuracy/__raw_   ?

Accuracy �?�gZ       o��	ǽ�Z���A�*L

Loss���?

Adam/Loss/raw�'�?

Accuracy/__raw_�m�>

Accuracy��?3��/Z       o��	���Z���A�*L

Loss���?

Adam/Loss/raw�ȧ?

Accuracy/__raw_�m�>

AccuracyYe?Q�d�Z       o��	��Z���A�*L

LossE��?

Adam/Loss/raw�l?

Accuracy/__raw_   ?

Accuracy�S?�J�AZ       o��	��Z���A�*L

Loss��?

Adam/Loss/rawF?

Accuracy/__raw_  `?

Accuracy�?��c�Z       o��	�3�Z���A�*L

Lossn��?

Adam/Loss/rawC�x?

Accuracy/__raw_   ?

AccuracyRS?�5�Z       o��	�R�Z���A�*L

Loss ׆?

Adam/Loss/raw똊?

Accuracy/__raw_%I?

Accuracy��?���Z       o��	�p�Z���A�*L

Loss17�?

Adam/Loss/raw��?

Accuracy/__raw_%I?

Accuracy��?��Z       o��	���Z���A�*L

Loss��?

Adam/Loss/raw��Q?

Accuracy/__raw_  @?

Accuracy��?��UZ       o��	֫�Z���A�*L

Loss�l�?

Adam/Loss/rawȂ�?

Accuracy/__raw_   ?

Accuracy��?j���Z       o��	���Z���A�*L

LossF"�?

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracy"�?n�Z       o��	6��Z���A�*L

Loss?,�?

Adam/Loss/raw��'?

Accuracy/__raw_�m[?

Accuracy��?�r�WZ       o��	>�Z���A�*L

Loss+�?

Adam/Loss/raw~'?

Accuracy/__raw_�m[?

Accuracym�?'Ҵ#Z       o��	d�Z���A�*L

Loss��z?

Adam/Loss/rawL6�?

Accuracy/__raw_   ?

Accuracy�R"?Z��Z       o��	G>�Z���A�*L

Lossu�?

Adam/Loss/rawU}?

Accuracy/__raw_   ?

AccuracyG"?-��{Z       o��	[[�Z���A�*L

LossY?

Adam/Loss/raw2��?

Accuracy/__raw_   ?

Accuracy��?�&Z       o��	Ou�Z���A�*L

Lossǁ?

Adam/Loss/raw�Ł?

Accuracy/__raw_n�6?

AccuracyL�?����Z       o��	���Z���A�*L

Loss�Ɓ?

Adam/Loss/raw��?

Accuracy/__raw_n�6?

Accuracy�7!?���Z       o��	���Z���A�*L

Lossⳁ?

Adam/Loss/raw��_?

Accuracy/__raw_   ?

Accuracy�a#?Ђ��Z       o��	���Z���A�*L

Loss��?

Adam/Loss/raw�b?

Accuracy/__raw_  @?

Accuracy��?���#Z       o��	H��Z���A�*L

Loss��|?

Adam/Loss/raw+cQ?

Accuracy/__raw_  @?

Accuracy1#?���Z       o��	{��Z���A�*L

Loss��x?

Adam/Loss/raw3?

Accuracy/__raw_%I?

Accuracy�%?�d	�Z       o��	��Z���A�*L

Loss4�{?

Adam/Loss/raw� �?

Accuracy/__raw_%I?

Accuracy��#?u���Z       o��	�1�Z���A�*L

Loss[~?

Adam/Loss/raw�e?

Accuracy/__raw_   ?

Accuracyp7"?]B&7Z       o��	�S�Z���A�*L

Lossk�{?

Adam/Loss/raw�@�?

Accuracy/__raw_   ?

Accuracy��!?K��Z       o��	3n�Z���A�*L

Loss��~?

Adam/Loss/raw��E?

Accuracy/__raw_  @?

Accuracym�?���Z       o��	P��Z���A�*L

Loss�y?

Adam/Loss/rawE�?

Accuracy/__raw_%I?

Accuracy��!?�8 �Z       o��	��Z���A�*L

Loss+�z?

Adam/Loss/rawRԃ?

Accuracy/__raw_%I?

Accuracy�^ ?4�;�Z       o��	H��Z���A�*L

Lossj�{?

Adam/Loss/raw p<?

Accuracy/__raw_   ?

Accuracy\�?PIBoZ       o��	��Z���A�*L

Loss��u?

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracy�?�!�Z       o��	<��Z���A�*L

Loss��~?

Adam/Loss/rawgΨ?

Accuracy/__raw_   ?

Accuracyn�?i���Z       o��	��Z���A�*L

Loss�r�?

Adam/Loss/raw@�?

Accuracy/__raw_%I�>

Accuracy�H?��NZ       o��	�8�Z���A�*L

Loss��?

Adam/Loss/raw�Ƈ?

Accuracy/__raw_%I�>

Accuracyɑ?��Z       o��	�V�Z���A�*L

LossRP�?

Adam/Loss/raw�^-?

Accuracy/__raw_  @?

Accuracyw�?�r8Z       o��	t}�Z���A�*L

Lossz�?

Adam/Loss/raw��A?

Accuracy/__raw_  @?

Accuracy�C?j�3RZ       o��	���Z���A�*L

Loss�Ty?

Adam/Loss/rawxG^?

Accuracy/__raw_   ?

AccuracyuV?��Z       o��	5��Z���A�*L

Loss)�v?

Adam/Loss/rawf��?

Accuracy/__raw_%I?

Accuracy�?&Z�Z       o��	o��Z���A�*L

Loss�x?

Adam/Loss/rawEV�?

Accuracy/__raw_%I?

Accuracy��?O̰Z       o��	x��Z���A�*L

Loss�z?

Adam/Loss/rawnJj?

Accuracy/__raw_  @?

Accuracy��?0R)Z       o��	�Z���A�*L

Loss��x?

Adam/Loss/rawp�q?

Accuracy/__raw_   ?

Accuracy�?	w�vZ       o��	2!�Z���A�*L

Loss2�w?

Adam/Loss/raw�T?

Accuracy/__raw_   ?

Accuracyg?���Z       o��	�;�Z���A�*L

LossIZt?

Adam/Loss/raw'�y?

Accuracy/__raw_%I?

Accuracy��?�?�Z       o��	KW�Z���A�*L

Loss��t?

Adam/Loss/raw��x?

Accuracy/__raw_%I?

Accuracy�l?�D�Z       o��	�y�Z���A�*L

Loss�Ou?

Adam/Loss/raw�]�?

Accuracy/__raw_   ?

Accuracy�5?�G��Z       o��	g��Z���A�*L

Lossty?

Adam/Loss/raw	lK?

Accuracy/__raw_   ?

Accuracy�0?�96�Z       o��	E��Z���A�*L

Loss��t?

Adam/Loss/rawru?

Accuracy/__raw_   ?

Accuracy�?���Z       o��	���Z���A�*L

Loss��t?

Adam/Loss/raw	mk?

Accuracy/__raw_%I?

Accuracy�?�cHZ       o��	���Z���A�*L

Loss��s?

Adam/Loss/raw�Rj?

Accuracy/__raw_%I?

AccuracyH�?�(,�Z       o��	�	�Z���A�*L

Loss�r?

Adam/Loss/raww��?

Accuracy/__raw_   ?

AccuracyŽ?S$Z       o��	�#�Z���A�*L

Loss�7u?

Adam/Loss/raw�[@

Accuracy/__raw_  �>

Accuracy��?�>?�Z       o��	2<�Z���A�*L

Loss/J�?

Adam/Loss/rawl�w?

Accuracy/__raw_  �>

Accuracyo�?]a�BZ       o��	�W�Z���A�*L

LossA�?

Adam/Loss/raw"P�?

Accuracy/__raw_%I?

Accuracy�� ?�EN>Z       o��	�x�Z���A�*L

Loss1\�?

Adam/Loss/rawC2�?

Accuracy/__raw_%I?

AccuracyN�?4�A�Z       o��	��Z���A�*L

Loss�q�?

Adam/Loss/raw�XW?

Accuracy/__raw_   ?

Accuracy�?��dKZ       o��	H��Z���A�*L

Loss�?

Adam/Loss/rawU.?

Accuracy/__raw_  �?

Accuracyϰ?��5�Z       o��	���Z���A�*L

Loss��?

Adam/Loss/raw�:X?

Accuracy/__raw_  �>

Accuracy!?���Z       o��	��Z���A�*L

Loss�ǉ?

Adam/Loss/raw�F?

Accuracy/__raw_n�6?

Accuracy7O?��s�Z       o��	��Z���A�*L

Loss��?

Adam/Loss/rawqF?

Accuracy/__raw_n�6?

Accuracy	�?Q�-Z       o��	3�Z���A�*L

Losslv�?

Adam/Loss/raw��V?

Accuracy/__raw_  @?

Accuracy`�?I3�Z       o��	�M�Z���A�*L

Loss�)�?

Adam/Loss/raw~M�?

Accuracy/__raw_   ?

Accuracyp?�@wZ       o��	�f�Z���A�*L

LossS��?

Adam/Loss/raw�'o?

Accuracy/__raw_   ?

Accuracye�?k���Z       o��	Ǆ�Z���A�*L

Loss��?

Adam/Loss/raw�ه?

Accuracy/__raw_%I?

Accuracy�u?Q�"�Z       o��	֧�Z���A�*L

Loss��?

Adam/Loss/raw���?

Accuracy/__raw_%I?

Accuracy�W?6�rZ       o��	m��Z���A�*L

Lossg7�?

Adam/Loss/raw�BI?

Accuracy/__raw_   ?

Accuracy�<?T氞Z       o��	���Z���A�*L

Loss��~?

Adam/Loss/raw�HT?

Accuracy/__raw_   ?

Accuracys�??�_Z       o��	�Z���A�*L

Loss�Jz?

Adam/Loss/rawH�U?

Accuracy/__raw_   ?

Accuracy��?��m|Z       o��	S �Z���A�*L

Loss�v?

Adam/Loss/raw��s?

Accuracy/__raw_�m�>

Accuracy'�?!8!4Z       o��	=�Z���A�*L

LossWv?

Adam/Loss/raw1s?

Accuracy/__raw_�m�>

Accuracy�?03,�Z       o��	CX�Z���A�*L

Loss�v?

Adam/Loss/raw�l[?

Accuracy/__raw_   ?

Accuracy��?ͤ�eZ       o��	B{�Z���A�*L

Loss�]s?

Adam/Loss/raw 
k?

Accuracy/__raw_   ?

AccuracyS�?uGBZ       o��	���Z���A�*L

Lossd�r?

Adam/Loss/rawW?

Accuracy/__raw_   ?

Accuracy(?/���Z       o��	���Z���A�*L

Losst�o?

Adam/Loss/raw��=?

Accuracy/__raw_�m[?

Accuracy|�?M��hZ       o��	���Z���A�*L

Loss��j?

Adam/Loss/raw�L=?

Accuracy/__raw_�m[?

AccuracyϺ?Z[Z       o��	��Z���A�*L

Loss�@f?

Adam/Loss/raw.[?

Accuracy/__raw_   ?

Accuracy3!?��cZ       o��	�)�Z���A�*L

Loss�#e?

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracy1�?m���Z       o��	�F�Z���A�*L

Loss׏i?

Adam/Loss/raw��o?

Accuracy/__raw_   ?

Accuracy�?�7Z       o��	�a�Z���A�*L

Loss�0j?

Adam/Loss/raw?�?

Accuracy/__raw_�m[?

Accuracy�R?�v��Z       o��	t|�Z���A�*L

Loss��`?

Adam/Loss/raw΢?

Accuracy/__raw_�m[?

AccuracyGU?{c]Z       o��	���Z���A�*L

Loss}PX?

Adam/Loss/rawf�v?

Accuracy/__raw_  @?

Accuracy��"?K4�Z       o��	ݳ�Z���A�*L

Loss.X[?

Adam/Loss/rawڷ�?

Accuracy/__raw_  �>

Accuracy�%?Q�Z       o��	���Z���A�*L

LossU'_?

Adam/Loss/raw��?

Accuracy/__raw_  �>

Accuracy�k?�:@�Z       o��	�Z���A�*L

Losse?

Adam/Loss/raw�QN?

Accuracy/__raw_%I?

Accuracyz?ַbZ       o��	"�Z���A�*L

Loss�b?

Adam/Loss/raw��M?

Accuracy/__raw_%I?

Accuracy�(?vJ�5Z       o��	=�Z���A�*L

Loss��`?

Adam/Loss/raw��J?

Accuracy/__raw_   ?

Accuracy3�?{�<�Z       o��	KY�Z���A�*L

Loss%|^?

Adam/Loss/rawJ@?

Accuracy/__raw_  `?

Accuracy�?u+(YZ       o��	�s�Z���A�*L

Loss�q[?

Adam/Loss/raw�v�?

Accuracy/__raw_   ?

Accuracy�b?*@�BZ       o��	��Z���A�*L

Loss�_?

Adam/Loss/raw}+�?

Accuracy/__raw_�m�>

Accuracyɥ?c~>�Z       o��	��Z���A�*L

Loss��c?

Adam/Loss/raw߁?

Accuracy/__raw_�m�>

Accuracy��?�́Z       o��	���Z���A�*L

Loss��f?

Adam/Loss/raw.?

Accuracy/__raw_  @?

AccuracyO�?��]Z       o��	���Z���A�*L

Loss��^?

Adam/Loss/raw��?

Accuracy/__raw_  �?

Accuracy��?a��Z       o��	��Z���A�*L

LossL�V?

Adam/Loss/raw�v�?

Accuracy/__raw_  �>

Accuracy�2#?O�=Z       o��	�*�Z���A�*L

Loss�6_?

Adam/Loss/raw��?

Accuracy/__raw_%I�>

AccuracyUz?C��Z       o��	�H�Z���A�*L

Loss��b?

Adam/Loss/raw�y�?

Accuracy/__raw_%I�>

Accuracy�$?���$Z       o��	d�Z���A�*L

Loss�f?

Adam/Loss/raw?�.?

Accuracy/__raw_   ?

Accuracy�?TSR�Z       o��	0��Z���A�*L

Loss_�`?

Adam/Loss/raw�?

Accuracy/__raw_  �?

Accuracym�?M�=�Z       o��	0��Z���A�*L

Loss�+X?

Adam/Loss/rawT/?

Accuracy/__raw_  @?

Accuracy��?����Z       o��	��Z���A�*L

LossT?

Adam/Loss/raw��N?

Accuracy/__raw_%I?

Accuracyɺ?&�rZ       o��	���Z���A�*L

Loss�S?

Adam/Loss/raw��M?

Accuracy/__raw_%I?

Accuracyҕ?���Z       o��	3��Z���A�*L

Loss��R?

Adam/Loss/raw��}?

Accuracy/__raw_  �>

Accuracy'�?@t(Z       o��	m�Z���A�*L

Loss�9W?

Adam/Loss/rawr�_?

Accuracy/__raw_   ?

Accuracy��?��BqZ       o��	�9�Z���A�*L

Loss�X?

Adam/Loss/raw(9A?

Accuracy/__raw_   ?

Accuracyȣ?�2BZ       o��	mV�Z���A�*L

Loss��U?

Adam/Loss/rawz�o?

Accuracy/__raw_%I?

Accuracyg�?Q���Z       o��	�p�Z���A�*L

Loss�^X?

Adam/Loss/rawK�n?

Accuracy/__raw_%I?

Accuracy�?��� Z       o��	a��Z���A�*L

LossٟZ?

Adam/Loss/raw��C?

Accuracy/__raw_  @?

Accuracy�?�:�Z       o��	U��Z���A�*L

Loss@WX?

Adam/Loss/raw�b?

Accuracy/__raw_   ?

Accuracy��?��.Z       o��	���Z���A�*L

LossH[Y?

Adam/Loss/rawN\?

Accuracy/__raw_   ?

Accuracy�
?Ԋ7Z       o��	3��Z���A�*L

LossĦY?

Adam/Loss/raw_�A?

Accuracy/__raw_%I?

AccuracyV�?��Z       o��	���Z���A�*L

LossS@W?

Adam/Loss/raw��@?

Accuracy/__raw_%I?

Accuracy�M?5��Z       o��	� �Z���A�*L

Loss�U?

Adam/Loss/raw��^?

Accuracy/__raw_   ?

AccuracyG ?�(�"Z       o��	�;�Z���A�*L

Loss4V?

Adam/Loss/raw�2M?

Accuracy/__raw_   ?

Accuracy�?��vZ       o��	�W�Z���A�*L

Loss� U?

Adam/Loss/rawd%9?

Accuracy/__raw_   ?

AccuracyD?7�ݑZ       o��	?s�Z���A�*L

LossSTR?

Adam/Loss/raw7�?

Accuracy/__raw_%I?

Accuracy$�?(�]Z       o��	.��Z���A�*L

Loss�X?

Adam/Loss/raw�م?

Accuracy/__raw_n�6?

Accuracy>�?�σZ       o��	e��Z���A�*L

Loss]G]?

Adam/Loss/raw�v;?

Accuracy/__raw_   ?

Accuracy��?�d�;Z       o��	���Z���A�*L

Loss��Y?

Adam/Loss/raw�J?

Accuracy/__raw_   ?

Accuracy��?��C�Z       o��	d��Z���A�*L

Loss�[X?

Adam/Loss/rawUj8?

Accuracy/__raw_  @?

Accuracy�}?1~��Z       o��	o�Z���A�*L

Loss�)U?

Adam/Loss/raw�"?

Accuracy/__raw_�m[?

Accuracy�W?�jJMZ       o��	�1�Z���A�*L

LosszP?

Adam/Loss/raw�!?

Accuracy/__raw_�m[?

Accuracy�#?d:`Z       o��	M�Z���A�*L

Loss�\K?

Adam/Loss/raw�[9?

Accuracy/__raw_   ?

Accuracy#)?�>YYZ       o��	�o�Z���A�*L

Loss��I?

Adam/Loss/raw�E�?

Accuracy/__raw_  �>

AccuracyY%?[���Z       o��	���Z���A�*L

Loss�uR?

Adam/Loss/rawј+?

Accuracy/__raw_   ?

AccuracyP?>OuZ       o��	���Z���A�*L

LossŒN?

Adam/Loss/raw��=?

Accuracy/__raw_%I?

AccuracybO?��)AZ       o��	.��Z���A�*L

Loss��L?

Adam/Loss/rawuZ=?

Accuracy/__raw_%I?

Accuracy�?�?_Z       o��	*��Z���A�*L

Loss�XK?

Adam/Loss/rawNb?

Accuracy/__raw_   ?

Accuracy�?�ҟ
Z       o��	��Z���A�*L

LossѝM?

Adam/Loss/rawže?

Accuracy/__raw_   ?

AccuracyDl?T#�Z       o��	_$�Z���A�*L

Loss�P?

Adam/Loss/raw�e`?

Accuracy/__raw_   ?

Accuracy��?�|^Z       o��	ZF�Z���A�*L

Loss��Q?

Adam/Loss/rawu�'?

Accuracy/__raw_%I?

AccuracyB?�x�Z       o��	j�Z���A�*L

Loss7{M?

Adam/Loss/raw�?'?

Accuracy/__raw_%I?

AccuracyY?�COZ       o��	���Z���A�*L

Lossr�I?

Adam/Loss/rawHp?

Accuracy/__raw_   ?

Accuracy!?vw;nZ       o��	��Z���A�*L

Loss��M?

Adam/Loss/raw3n.?

Accuracy/__raw_   ?

Accuracy�?n�B�Z       o��	��Z���A�*L

LosseJ?

Adam/Loss/raw�F?

Accuracy/__raw_  `?

Accuracy�?���Z       o��	��Z���A�*L

Loss{�D?

Adam/Loss/raw��k?

Accuracy/__raw_%I�>

Accuracy �"?���Z       o��	���Z���A�*L

Loss��H?

Adam/Loss/rawk?

Accuracy/__raw_%I�>

Accuracy+�?s���Z       o��	��Z���A�*L

Loss�!L?

Adam/Loss/raw� c?

Accuracy/__raw_   ?

Accuracy��?�$Z       o��	�8�Z���A�*L

Loss\kN?

Adam/Loss/rawƔG?

Accuracy/__raw_   ?

AccuracyV.?;7Z       o��	�a�Z���A�*L

LossM�M?

Adam/Loss/raw�K'?

Accuracy/__raw_   ?

Accuracy�v?qBi�Z       o��	���Z���A�*L

Loss;�I?

Adam/Loss/raw6m�?

Accuracy/__raw_%I?

Accuracy۝?��xZ       o��	���Z���A�*L

Loss0Q?

Adam/Loss/rawD�?

Accuracy/__raw_%I?

Accuracy�H?���Z       o��	й�Z���A�*L

Loss�W?

Adam/Loss/raw�W?

Accuracy/__raw_   ?

Accuracy��?�=~Z       o��	g��Z���A�*L

Loss}�W?

Adam/Loss/rawz�@

Accuracy/__raw_   >

Accuracy��?��7Z       o��	
��Z���A�*L

Loss�?

Adam/Loss/rawO�A?

Accuracy/__raw_   ?

Accuracy�e?|F3�Z       o��	��Z���A�*L

Loss�+�?

Adam/Loss/rawx�f?

Accuracy/__raw_%I?

Accuracyn�	?4�L�Z       o��	,�Z���A�*L

Loss<�?

Adam/Loss/raw��f?

Accuracy/__raw_%I?

Accuracy4�
?#;$Z       o��	�I�Z���A�*L

Loss�?

Adam/Loss/rawV ?

Accuracy/__raw_   ?

Accuracyfu?��d^Z       o��	�k�Z���A�*L

Loss+A�?

Adam/Loss/raw�H@

Accuracy/__raw_  �>

AccuracyB�?�.��Z       o��	�Z���A�*L

Lossoۡ?

Adam/Loss/rawW`?

Accuracy/__raw_   ?

Accuracy��?u�I�Z       o��	��Z���A�*L

Lossq�?

Adam/Loss/raw��#?

Accuracy/__raw_%I?

Accuracyp/?i���Z       o��	j��Z���A�*L

LossIc�?

Adam/Loss/raw�#?

Accuracy/__raw_%I?

Accuracy�~?2�ZZ       o��	U��Z���A�*L

Lossݥ�?

Adam/Loss/raw|�X?

Accuracy/__raw_   ?

Accuracy��?,]Z       o��	���Z���A�*L

Loss�7�?

Adam/Loss/rawjU3?

Accuracy/__raw_  `?

Accuracy-�?ȸ՝Z       o��	��Z���A�*L

Loss3C�?

Adam/Loss/raw��)?

Accuracy/__raw_  @?

Accuracy��?��)�Z       o��	�.�Z���A�*L

Loss�U�?

Adam/Loss/raw�*?

Accuracy/__raw_�m[?

Accuracyv�?@�gZ       o��	vP�Z���A�*L

Loss��y?

Adam/Loss/raw*?

Accuracy/__raw_�m[?

Accuracyɶ?}�!�Z       o��	 r�Z���A�*L

Loss��q?

Adam/Loss/rawg_?

Accuracy/__raw_  �>

Accuracy�"?��Z       o��	���Z���A�*L

Loss�=s?

Adam/Loss/raw��9?

Accuracy/__raw_   ?

Accuracyz?��Z       o��	���Z���A�*L

Loss�m?

Adam/Loss/raw��W?

Accuracy/__raw_   ?

Accuracy��?n�XZ       o��	���Z���A�*L

Loss(Nk?

Adam/Loss/rawN�y?

Accuracy/__raw_%I�>

Accuracy�t?�>�Z       o��	G��Z���A�*L

LossE�l?

Adam/Loss/raw·x?

Accuracy/__raw_%I�>

Accuracy�l?�V�Z       o��	��Z���A�*L

LossS�m?

Adam/Loss/raw��=?

Accuracy/__raw_  `?

Accuracy^2
?*�o�Z       o��	X�Z���A�*L

Loss]i?

Adam/Loss/raw��@

Accuracy/__raw_   >

Accuracy��?�]�8Z       o��	�:�Z���A�*L

Loss���?

Adam/Loss/raw�C8?

Accuracy/__raw_   ?

Accuracy�L?��L�Z       o��	�V�Z���A�*L

Loss�y�?

Adam/Loss/raw���?

Accuracy/__raw_%I?

Accuracy��	?g- Z       o��	�q�Z���A�*L

LossUө?

Adam/Loss/raw�܈?

Accuracy/__raw_%I?

Accuracy��
?�|�PZ       o��	z��Z���A�*L

Lossx��?

Adam/Loss/raw�ZR?

Accuracy/__raw_   ?

Accuracy4c?r�Z       o��	ߨ�Z���A�*L

Loss�d�?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�?
?�)�\Z       o��	���Z���A�*L

Loss�K�?

Adam/Loss/raw\�M?

Accuracy/__raw_   ?

Accuracy?�:i�Z       o��	���Z���A�*L

Loss���?

Adam/Loss/raw���?

Accuracy/__raw_%I?

AccuracyN�?�w�bZ       o��	m�Z���A�*L

Loss`(�?

Adam/Loss/raw�T�?

Accuracy/__raw_%I?

Accuracy��?2,XzZ       o��	��Z���A�*L

Loss��?

Adam/Loss/rawht(?

Accuracy/__raw_  `?

Accuracy��?��1Z       o��	~7�Z���A�*L

Loss��?

Adam/Loss/raw5�?

Accuracy/__raw_  @?

Accuracy?-?ט�oZ       o��	YR�Z���A�*L

Loss0��?

Adam/Loss/rawBg?

Accuracy/__raw_   ?

Accuracy��?�bd�Z       o��	�p�Z���A�*L

Loss�?

Adam/Loss/rawY#�>

Accuracy/__raw_  �?

Accuracy��?�7F�Z       o��	���Z���A�*L

Loss�Qt?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��%?��;�Z       o��	��Z���A�*L

Loss4�g?

Adam/Loss/rawJ�1?

Accuracy/__raw_  `?

Accuracy��.?�Z�)Z       o��	O��Z���A�*L

Lossjb?

Adam/Loss/raw@�e?

Accuracy/__raw_  �>

Accuracy�3?�x�Z       o��	��Z���A�*L

Loss��b?

Adam/Loss/raw�9?

Accuracy/__raw_  @?

Accuracyv\+?�"�~Z       o��	�Z���A�*L

Loss�[?

Adam/Loss/rawh�=?

Accuracy/__raw_%I?

Accuracy�l-?]�H�Z       o��	�!�Z���A�*L

Loss�"X?

Adam/Loss/raw
=?

Accuracy/__raw_%I?

Accuracy�*?gl\DZ       o��	S?�Z���A�*L

LossmU?

Adam/Loss/raw�-?

Accuracy/__raw_  @?

Accuracy�D(?۟ǹZ       o��	Z�Z���A�*L

Loss�nQ?

Adam/Loss/raw�w?

Accuracy/__raw_   ?

AccuracyI�*?c�ʫZ       o��	>v�Z���A�*L

Lossm=U?

Adam/Loss/rawd�?

Accuracy/__raw_  @?

Accuracyۓ)?� �TZ       o��	y��Z���A�*L

Loss��O?

Adam/Loss/raw�a?

Accuracy/__raw_�m�>

Accuracy��+?��wRZ       o��	��Z���A�*L

Loss�Q?

Adam/Loss/raw�}`?

Accuracy/__raw_�m�>

Accuracy��%?�o��Z       o��	u��Z���A�*L

Loss��R?

Adam/Loss/raw�S"?

Accuracy/__raw_   ?

Accuracy ?Vb�dZ       o��	���Z���A�*L

Loss�!N?

Adam/Loss/raw�w�@

Accuracy/__raw_   >

Accuracy� ?:��Z       o��	���Z���A�*L

Loss�X�?

Adam/Loss/rawU�
?

Accuracy/__raw_  @?

AccuracyL7?�U|�Z       o��	X�Z���A�*L

Loss�%�?

Adam/Loss/raw��,?

Accuracy/__raw_n�6?

Accuracyı?*�:]Z       o��	r5�Z���A�*L

LossSv�?

Adam/Loss/raw�F,?

Accuracy/__raw_n�6?

Accuracy��?� ̀Z       o��	�S�Z���A�*L

LosskT�?

Adam/Loss/rawL�9?

Accuracy/__raw_  @?

Accuracy��?��[�Z       o��	�q�Z���A�*L

Loss�c�?

Adam/Loss/raw8{?

Accuracy/__raw_   ?

Accuracy�!?�#�3Z       o��	���Z���A�*L

Loss��?

Adam/Loss/raw��o?

Accuracy/__raw_   ?

Accuracy�� ?�a�8Z       o��	���Z���A�*L

Loss�~?

Adam/Loss/raw�8?

Accuracy/__raw_%I?

AccuracyP�?|iI�Z       o��	6��Z���A�*L

Loss��w?

Adam/Loss/raw��7?

Accuracy/__raw_%I?

AccuracyL�?q��sZ       o��	���Z���A�*L

Loss�;q?

Adam/Loss/raw��?

Accuracy/__raw_  �?

Accuracyb~?q�>-Z       o��	 �Z���A�*L

LossCf?

Adam/Loss/raw
d@?

Accuracy/__raw_   ?

AccuracyX�%?6V�Z       o��	~�Z���A�*L

Loss
Sb?

Adam/Loss/rawl�P?

Accuracy/__raw_  �>

Accuracyi�$?SHZ       o��	�4�Z���A�*L

LossǍ`?

Adam/Loss/raw:)(?

Accuracy/__raw_�m[?

AccuracyE?~���Z       o��	'P�Z���A�*L

Loss�Z?

Adam/Loss/raw��'?

Accuracy/__raw_�m[?

Accuracy�9$?�6�Z       o��	
j�Z���A�*L

Loss��U?

Adam/Loss/raw��>?

Accuracy/__raw_  `?

Accuracy��)?��5+Z       o��	v��Z���A�*L

LossgzS?

Adam/Loss/raw��+?

Accuracy/__raw_  `?

Accuracy�+/?��
Z       o��	?��Z���A�*L

Loss��O?

Adam/Loss/rawKUX?

Accuracy/__raw_   ?

Accuracy�4?�\�Z       o��	\��Z���A�*L

Loss�cP?

Adam/Loss/raw�~K?

Accuracy/__raw_�m[?

Accuracy �.?J�oZ       o��	���Z���A�*L

Loss��O?

Adam/Loss/raw�J?

Accuracy/__raw_�m[?

AccuracybN3?�kZZ       o��	���Z���A�*L

LossgO?

Adam/Loss/raw
q	?

Accuracy/__raw_  `?

Accuracy�Q7?)f�Z       o��	n�Z���A�*L

LosshH?

Adam/Loss/rawo�4?

Accuracy/__raw_  @?

Accuracy�b;?Ӹ��Z       o��	w0�Z���A�*L

Loss�mF?

Adam/Loss/raw^Ho?

Accuracy/__raw_   ?

Accuracy�;?�y�Z       o��	IK�Z���A�*L

Loss��J?

Adam/Loss/rawPF-?

Accuracy/__raw_n�6?

Accuracy*9?�]�Z       o��	�f�Z���A�*L

Loss&�G?

Adam/Loss/raw��,?

Accuracy/__raw_n�6?

Accuracy��8?ݟֈZ       o��	���Z���A�*L

Lossc�D?

Adam/Loss/rawd�&?

Accuracy/__raw_   ?

Accuracyݤ8?��whZ       o��	���Z���A�*L

Loss��A?

Adam/Loss/raw�@

Accuracy/__raw_   >

Accuracy�-6?0�I�Z       o��	ǽ�Z���A�*L

Loss&o�?

Adam/Loss/raw��=?

Accuracy/__raw_   ?

Accuracya)'?x�}�Z       o��	D��Z���A�*L

LossǮ�?

Adam/Loss/raw�~k?

Accuracy/__raw_n�6?

Accuracy
r&?��DZ       o��	���Z���A�*L

Loss��?

Adam/Loss/raw@?k?

Accuracy/__raw_n�6?

Accuracy.(?��>8Z       o��	�Z���A�*L

Lossqv�?

Adam/Loss/raw�+?

Accuracy/__raw_  `?

AccuracyN�)?W�6�Z       o��	g+�Z���A�*L

Loss�ߌ?

Adam/Loss/raw���@

Accuracy/__raw_  �>

Accuracy�/?20�tZ       o��	F�Z���A�*L

LossqC�?

Adam/Loss/raw�?

Accuracy/__raw_  �?

AccuracyI'?�q�Z       o��	Ja�Z���A�*L

Loss��?

Adam/Loss/raw��/?

Accuracy/__raw_  �?

Accuracy��/?�j�jZ       o��	�y�Z���A�*L

Loss�Ӡ?

Adam/Loss/raw��/?

Accuracy/__raw_  �?

Accuracy�7?�PdZ       o��	���Z���A�*L

Loss&��?

Adam/Loss/raw{�l?

Accuracy/__raw_   ?

Accuracy[2??��1)Z       o��	��Z���A�*L

Loss(�?

Adam/Loss/raw��1?

Accuracy/__raw_  @?

Accuracy��8?*%ZZ       o��	���Z���A�*L

Loss��?

Adam/Loss/raw��[?

Accuracy/__raw_  @?

Accuracyޖ9?Q`��Z       o��	��Z���A�*L

Loss@�?

Adam/Loss/rawo�L?

Accuracy/__raw_n�6?

Accuracy�::?�i�Z       o��	D�Z���A�*L

Loss嬈?

Adam/Loss/raw-L?

Accuracy/__raw_n�6?

Accuracy��9?3��Z       o��	~5�Z���A�*L

LossP6�?

Adam/Loss/raw-?

Accuracy/__raw_  `?

Accuracy�9?�μZ       o��	�P�Z���A�*L

Loss	��?

Adam/Loss/rawfh�@

Accuracy/__raw_  �>

Accuracy7n=?�C��Z       o��	�i�Z���A�*L

LossL�?

Adam/Loss/raw�9?

Accuracy/__raw_  `?

Accuracye4?���Z       o��	��Z���A�*L

Loss'��?

Adam/Loss/raw�?

Accuracy/__raw_�m[?

Accuracy�z8?���4Z       o��	���Z���A�*L

Loss:X�?

Adam/Loss/raw�C?

Accuracy/__raw_�m[?

AccuracyE�;?�v#tZ       o��	���Z���A�*L

Loss��?

Adam/Loss/raw`�g?

Accuracy/__raw_   ?

Accuracy�???��vZ       o��	���Z���A�*L

Loss��?

Adam/Loss/raw�!�@

Accuracy/__raw_    

Accuracy�<?�E�Z       o��	���Z���A�*L

Loss(*�?

Adam/Loss/raw�<?

Accuracy/__raw_  `?

Accuracy�4)?�"�Z       o��	��Z���A�*L

Loss�-�?

Adam/Loss/rawp�k?

Accuracy/__raw_%I?

Accuracy��.?�u�7Z       o��	'�Z���A�*L

Loss-��?

Adam/Loss/raw�Sk?

Accuracy/__raw_%I?

Accuracy��+?:��Z       o��	�B�Z���A�*L

Loss�ٲ?

Adam/Loss/raw$��>

Accuracy/__raw_  `?

Accuracy4J)?�AN<Z       o��	�a�Z���A�*L

Loss\�?

Adam/Loss/raw��2?

Accuracy/__raw_  `?

Accuracy��.?�>E�Z       o��	�}�Z���A�*L

Loss���?

Adam/Loss/raw\6?

Accuracy/__raw_  `?

AccuracyN�3?�G0yZ       o��	$��Z���A�*L

Loss��?

Adam/Loss/raw��?

Accuracy/__raw_  �?

Accuracy�8?Q!@Z       o��	9��Z���A�*L

Loss4X�?

Adam/Loss/raw*W?

Accuracy/__raw_  �?

Accuracy�M??��SZ       o��	l��Z���A�*L

LossW��?

Adam/Loss/raw��b?

Accuracy/__raw_   ?

Accuracy2�E?�-��Z       o��	���Z���A�*L

Loss�&�?

Adam/Loss/raw�V�@

Accuracy/__raw_    

Accuracy��>?�$�Z       o��	E�Z���A�*L

Loss�x�?

Adam/Loss/raw{
T?

Accuracy/__raw_   ?

Accuracy��+?Q[�Z       o��	$*�Z���A�*L

Loss ��?

Adam/Loss/raw��?

Accuracy/__raw_  �?

Accuracy��*?��Z       o��	�F�Z���A�*L

Loss)�?

Adam/Loss/raw�?

Accuracy/__raw_  �?

AccuracyB3?.�w�Z       o��	�c�Z���A�*L

Loss�X�?

Adam/Loss/raw�02?

Accuracy/__raw_   ?

Accuracy"�:?�F�Z       o��	8��Z���A�*L

Loss�k�?

Adam/Loss/raw�Z7?

Accuracy/__raw_  `?

Accuracy�8?��,Z       o��	���Z���A�*L

Loss���?

Adam/Loss/raw8�H?

Accuracy/__raw_   ?

Accuracy�<?!��Z       o��	���Z���A�*L

Loss���?

Adam/Loss/raw+�A?

Accuracy/__raw_n�6?

Accuracy�H9?X��Z       o��	���Z���A�*L

LossY��?

Adam/Loss/raw�PA?

Accuracy/__raw_n�6?

Accuracy�
9?dP��Z       o��	���Z���A�*L

Loss�[�?

Adam/Loss/rawt+O?

Accuracy/__raw_  @?

Accuracy��8?���PZ       o��	��Z���A�*L

Loss�G�?

Adam/Loss/raw�W�@

Accuracy/__raw_    

Accuracy`�9?���Z       o��	p'�Z���A�*L

Loss�0�?

Adam/Loss/rawl?

Accuracy/__raw_  `?

Accuracy��&?�F9�Z       o��	�B�Z���A�*L

Loss��?

Adam/Loss/rawJ�;?

Accuracy/__raw_  �?

Accuracy�,?D�dPZ       o��	h\�Z���A�*L

LossL��?

Adam/Loss/rawg<?

Accuracy/__raw_  �?

Accuracy�5?6}�Z       o��	�v�Z���A�*L

Loss�0�?

Adam/Loss/raw2�`?

Accuracy/__raw_  @?

Accuracyc�<?*.�Z       o��	��Z���A�*L

Loss ��?

Adam/Loss/raw��?

Accuracy/__raw_  @?

Accuracy��<?hA_5Z       o��	q��Z���A�*L

LossOJ�?

Adam/Loss/raw��B?

Accuracy/__raw_  `?

Accuracy�-=?�LN�Z       o��	���Z���A�*L

Loss�ʛ?

Adam/Loss/rawE2:?

Accuracy/__raw_�m[?

Accuracy7�@?��,Z       o��	���Z���A�*L

Loss���?

Adam/Loss/raw� :?

Accuracy/__raw_�m[?

AccuracywVC?3�bZ       o��	x�Z���A�*L

Loss�ޏ?

Adam/Loss/rawr�?

Accuracy/__raw_  `?

Accuracy1�E?��Z       o��	�)�Z���A�*L

Loss<]�?

Adam/Loss/rawL<?

Accuracy/__raw_   ?

AccuracyF_H?��Z       o��	�C�Z���A�*L

Loss`�?

Adam/Loss/rawj�Z?

Accuracy/__raw_  `?

Accuracy�UD?WeZ       o��	�]�Z���A�*L

Lossh��?

Adam/Loss/rawu�?

Accuracy/__raw_�m[?

Accuracy�G?QZ�Z       o��	v�Z���A�*L

Loss�{?

Adam/Loss/raw��?

Accuracy/__raw_�m[?

AccuracyY"I?�WZ       o��	Ύ�Z���A�*L

Loss%�q?

Adam/Loss/raw~6?

Accuracy/__raw_  @?

Accuracy��J?8"{�Z       o��	?��Z���A�*L

Loss�Fi?

Adam/Loss/raw�9?

Accuracy/__raw_  `?

Accuracy�I?[[v{Z       o��	���Z���A�*L

Loss��d?

Adam/Loss/raw�W?

Accuracy/__raw_  `?

Accuracy�L?��eZ       o��	~��Z���A�*L

Loss�K\?

Adam/Loss/rawf�V?

Accuracy/__raw_%I?

Accuracy�N?]�Z       o��	��Z���A�*L

LossF�[?

Adam/Loss/raw9�U?

Accuracy/__raw_%I?

AccuracyH?sKrZ       o��	'�Z���A�*L

LossE"[?

Adam/Loss/raw��N?

Accuracy/__raw_  `?

Accuracy��B?{$Z       o��	F�Z���A�*L

Loss��Y?

Adam/Loss/rawd?

Accuracy/__raw_  �?

AccuracyE�E?���Z       o��	�b�Z���A�*L

Loss��S?

Adam/Loss/raw��<?

Accuracy/__raw_  @?

Accuracy>zK?�N:Z       o��	�}�Z���A�*L

Loss�mQ?

Adam/Loss/rawK>?

Accuracy/__raw_�m[?

AccuracykTJ?��NZ       o��	̗�Z���A�*L

Loss��O?

Adam/Loss/raw��=?

Accuracy/__raw_�m[?

Accuracy&
L?+%1�Z       o��	B��Z���A�*L

Lossb�M?

Adam/Loss/raw�??

Accuracy/__raw_  `?

Accuracy�M?�	0�Z       o��	���Z���A�*L

Loss�DL?

Adam/Loss/raw}K?

Accuracy/__raw_  `?

Accuracy�kO?��Z       o��	���Z���A�*L

Loss�+F?

Adam/Loss/raw�L'?

Accuracy/__raw_  `?

Accuracy Q?��k�Z       o��	��Z���A�*L

LosshC?

Adam/Loss/raw�R?

Accuracy/__raw_  �?

Accuracy�R?�B;�Z       o��	%#�Z���A�*L

Loss�>?

Adam/Loss/raw��?

Accuracy/__raw_  �?

AccuracyW?^��Z       o��	J@�Z���A�*L

Loss"�9?

Adam/Loss/raw�-?

Accuracy/__raw_  `?

Accuracy�3[?��
�Z       o��	�]�Z���A�*L

Loss�m5?

Adam/Loss/rawra�@

Accuracy/__raw_   >

Accuracy��[?����Z       o��	tz�Z���A�*L

Loss}ˋ?

Adam/Loss/raw
�)?

Accuracy/__raw_  `?

Accuracy��H?uf�Z       o��	��Z���A�*L

Loss�J�?

Adam/Loss/rawC�b?

Accuracy/__raw_%I?

Accuracy�8K?7�^�Z       o��	J��Z���A�*L

Loss/2�?

Adam/Loss/raw8�b?

Accuracy/__raw_%I?

Accuracy_�E?O��Z       o��	x��Z���A�*L

Loss�M�?

Adam/Loss/raw:�.?

Accuracy/__raw_  `?

Accuracy�g@?�4�[Z       o��	W��Z���A�*L

Loss,	|?

Adam/Loss/raw3d�@

Accuracy/__raw_    

Accuracyd�C? �Z       o��	q�Z���A�*L

Lossi_�?

Adam/Loss/raw�}8?

Accuracy/__raw_  `?

Accuracy�0?ƺF!Z       o��	�$�Z���A�*L

Loss�(�?

Adam/Loss/raw�|W?

Accuracy/__raw_�m[?

Accuracy��4?����Z       o��	P�Z���A�*L

Lossk�?

Adam/Loss/raw"_W?

Accuracy/__raw_�m[?

AccuracyE�8?�x�Z       o��	"p�Z���A�*L

LossWX�?

Adam/Loss/raw�?

Accuracy/__raw_  @?

Accuracy%<?�q]Z       o��	���Z���A�*L

Loss=��?

Adam/Loss/raw�3?

Accuracy/__raw_  @?

Accuracy͇<?p�FEZ       o��	]��Z���A�*L

Loss��?

Adam/Loss/raw��S?

Accuracy/__raw_   ?

Accuracy��<?��WXZ       o��	���Z���A�*L

Loss��?

Adam/Loss/raw�?

Accuracy/__raw_  �?

Accuracy)�6?��w�Z       o��	���Z���A�*L

Loss傆?

Adam/Loss/rawY�?

Accuracy/__raw_  �?

AccuracyX>?�`5Z       o��	\��Z���A�*L

Lossr�?

Adam/Loss/raw��/?

Accuracy/__raw_  `?

Accuracy�D?uK}�Z       o��	��Z���A�*L

Loss)�w?

Adam/Loss/rawJ�,?

Accuracy/__raw_  `?

Accuracy nG?�?��Z       o��	4�Z���A�*L

Lossp?

Adam/Loss/raw�??

Accuracy/__raw_  `?

Accuracy �I?%P]Z       o��	R�Z���A�*L

Loss�~g?

Adam/Loss/rawPv+?

Accuracy/__raw_n�6?

AccuracyL?����Z       o��	�k�Z���A�*L

Loss�}a?

Adam/Loss/raw�++?

Accuracy/__raw_n�6?

AccuracyV�I?9���Z       o��	���Z���A�*L

LossY\?

Adam/Loss/rawjF?

Accuracy/__raw_  `?

Accuracy�H?�'r�Z       o��	ܟ�Z���A�*L

LossA{U?

Adam/Loss/raw�Y?

Accuracy/__raw_  @?

Accuracy�tJ?6M��Z       o��	̸�Z���A�*L

Loss��U?

Adam/Loss/raw��W?

Accuracy/__raw_  @?

AccuracyiI?�՚�Z       o��	���Z���A�*L

Loss�V?

Adam/Loss/raw�O0?

Accuracy/__raw_n�6?

Accuracy+xH?�^�OZ       o��	9��Z���A�*L

LosstHR?

Adam/Loss/raw� 0?

Accuracy/__raw_n�6?

AccuracyK�F?M>A+Z       o��	4�Z���A�*L

Loss��N?

Adam/Loss/raw��$?

Accuracy/__raw_  `?

Accuracy�E?
~Z       o��	�+�Z���A�*L

Loss��J?

Adam/Loss/rawPs?

Accuracy/__raw_  `?

Accuracy��G?:�5�Z       o��	�G�Z���A�*L

LossR�C?

Adam/Loss/raw%w?

Accuracy/__raw_  `?

Accuracy�:J?eIqZ       o��	�i�Z���A�*L

LossM@?

Adam/Loss/raw�;)?

Accuracy/__raw_�m[?

Accuracy hL?a���Z       o��	��Z���A�*L

Loss�=?

Adam/Loss/raw"�(?

Accuracy/__raw_�m[?

Accuracy��M?�Q�Z       o��	���Z���A�*L

Loss�;?

Adam/Loss/rawʁ<?

Accuracy/__raw_   ?

Accuracy�BO?���Z       o��	���Z���A�*L

Loss^�;?

Adam/Loss/raw�@

Accuracy/__raw_    

Accuracy�J?�i��Z       o��	��Z���A�*L

Loss٭�?

Adam/Loss/rawk�?

Accuracy/__raw_  `?

AccuracyH6?�j�-Z       o��	 ��Z���A�*L

Losso �?

Adam/Loss/rawSO-?

Accuracy/__raw_�m[?

Accuracyt:?@T�Z       o��	~�Z���A�*L

Loss[Ď?

Adam/Loss/raw&�,?

Accuracy/__raw_�m[?

Accuracy0�=?sGژZ       o��	�2�Z���A�*L

Loss`�?

Adam/Loss/raw�Q?

Accuracy/__raw_  @?

Accuracy�@?�v��Z       o��	N�Z���A�*L

Loss+݅?

Adam/Loss/rawok ?

Accuracy/__raw_  `?

Accuracy��@?JH�Z       o��	vl�Z���A�*L

Loss��?

Adam/Loss/raw`�?

Accuracy/__raw_  `?

Accuracy1�C?�_Z       o��	j��Z���A�*L

Loss��u?

Adam/Loss/raw��?

Accuracy/__raw_  �?

Accuracy��F?Y_u�Z       o��	n��Z���A�*L

Loss�0l?

Adam/Loss/raw�w?

Accuracy/__raw_  �?

Accuracy�WL?�w��Z       o��	ӽ�Z���A�*L

Loss]�c?

Adam/Loss/raw�AQ?

Accuracy/__raw_  @?

AccuracyT�Q?�[Z       o��	���Z���A�*L

LossJ�a?

Adam/Loss/raw��0?

Accuracy/__raw_  �?

Accuracy�O?�rZ       o��	���Z���A�*L

Loss9�\?

Adam/Loss/raw��"?

Accuracy/__raw_  �?

Accuracy�T?��Z       o��	��Z���A�*L

Loss`W?

Adam/Loss/rawN�/?

Accuracy/__raw_�m[?

Accuracy��X?���Z       o��	�%�Z���A�*L

Loss"S?

Adam/Loss/raw&Z/?

Accuracy/__raw_�m[?

Accuracy�,Y?�(��Z       o��	>?�Z���A�*L

Loss�O?

Adam/Loss/rawR�?

Accuracy/__raw_  �?

AccuracyefY?'.��Z       o��	�[�Z���A�*L

LossfsI?

Adam/Loss/raw�qD?

Accuracy/__raw_   ?

Accuracy�B]?C�&�Z       o��	�{�Z���A�*L

Loss>�H?

Adam/Loss/raw�0?

Accuracy/__raw_  @?

AccuracyL"W?O�Z       o��	���Z���A�*L

Loss�F?

Adam/Loss/raw�!?

Accuracy/__raw_  �?

Accuracy�T?���Z       o��	���Z���A�*L

Loss��B?

Adam/Loss/raw)� ?

Accuracy/__raw_  �?

Accuracyv#Y?-�tZ       o��	6��Z���A�*L

Loss&^??

Adam/Loss/raw\O?

Accuracy/__raw_  `?

AccuracyQ]?��GZ       o��	��Z���A�*L

Loss��@?

Adam/Loss/raw�}?

Accuracy/__raw_  `?

Accuracy|R]?����Z       o��	�(�Z���A�*L

Loss}�:?

Adam/Loss/rawdf?

Accuracy/__raw_  `?

Accuracy	�]?$��oZ       o��	gE�Z���A�*L

Loss�y5?

Adam/Loss/rawp5?

Accuracy/__raw_�m[?

Accuracy��]?���.Z       o��	a�Z���A�*L

Loss�n5?

Adam/Loss/raw_Y4?

Accuracy/__raw_�m[?

Accuracy;�]?��c�Z       o��	(��Z���A�*L

Loss�R5?

Adam/Loss/raw� ?

Accuracy/__raw_  `?

Accuracy�_]?X�8Z       o��	��Z���A�*L

Loss�M2?

Adam/Loss/raw��L?

Accuracy/__raw_  `?

Accuracy�]?�꽱Z       o��	3��Z���A�*L

LossL�4?

Adam/Loss/raw�?

Accuracy/__raw_  `?

Accuracy��]?-�Z4Z       o��	���Z���A�*L

Loss-�1?

Adam/Loss/raw��L?

Accuracy/__raw_�m[?

Accuracy^?��d1Z       o��	D��Z���A�*L

Loss�O4?

Adam/Loss/raw��K?

Accuracy/__raw_�m[?

Accuracy��]?���cZ       o��	� [���A�*L

Loss�6?

Adam/Loss/raw��?

Accuracy/__raw_  @?

AccuracyĔ]?P=ĺZ       o��	0 [���A�*L

Loss�/4?

Adam/Loss/rawM�@

Accuracy/__raw_   >

Accuracy}�Z?�^��Z       o��	�H [���A�*L

Loss|g�?

Adam/Loss/raw�5*?

Accuracy/__raw_  `?

Accuracy��G?re��Z       o��	Vc [���A�*L

Loss�?

Adam/Loss/raw�J?

Accuracy/__raw_�m[?

AccuracyX]J?4��ZZ       o��	� [���A�*L

Loss�a�?

Adam/Loss/raw!;?

Accuracy/__raw_�m[?

Accuracy.L?�n�FZ       o��	Ü [���A�*L

Loss
��?

Adam/Loss/raw5P?

Accuracy/__raw_  @?

AccuracyU�M?���Z       o��	o� [���A�*L

Loss��?

Adam/Loss/raw��?

Accuracy/__raw_  �?

Accuracy ?L?�îZ       o��	g� [���A�*L

Lossf�?

Adam/Loss/raw�o?

Accuracy/__raw_  @?

Accuracy�kQ?��p�Z       o��	|� [���A�*L

Loss�}?

Adam/Loss/raw ?

Accuracy/__raw_  �?

Accuracy�O?;��Z       o��	�[���A�*L

Loss%�s?

Adam/Loss/raw^�?

Accuracy/__raw_  �?

Accuracy�T?� +Z       o��	W&[���A�*L

Loss�Zk?

Adam/Loss/raw&�?

Accuracy/__raw_  �?

Accuracy:�X?��!�Z       o��	xC[���A�*L

Loss2`c?

Adam/Loss/raw~��@

Accuracy/__raw_   >

Accuracy4�\?#�k�Z       o��	b[���A�*L

Loss}��?

Adam/Loss/raw��S?

Accuracy/__raw_  @?

Accuracy��I?O�v�Z       o��	A[���A�*L

Loss��?

Adam/Loss/raw
q+?

Accuracy/__raw_�m[?

Accuracy9�H?���Z       o��	��[���A�*L

Loss�]�?

Adam/Loss/rawQ	+?

Accuracy/__raw_�m[?

Accuracy_�J?�7ocZ       o��	��[���A�*L

Loss씒?

Adam/Loss/raw0	�>

Accuracy/__raw_  `?

AccuracymL?��i�Z       o��	��[���A�*L

LossB&�?

Adam/Loss/raw�?

Accuracy/__raw_  `?

Accuracy2bN?��{fZ       o��	`[���A�*L

Lossp�?

Adam/Loss/raw(f?

Accuracy/__raw_   ?

Accuracy-%P?�BzKZ       o��	�![���A�*L

Loss�\�?

Adam/Loss/raw�g?

Accuracy/__raw_  �?

Accuracyu!H?J�f}Z       o��	u;[���A�*L

Loss�x?

Adam/Loss/rawh�?

Accuracy/__raw_  �?

Accuracy��M?:���Z       o��	!V[���A�*L

Loss��l?

Adam/Loss/raw^?

Accuracy/__raw_  `?

Accuracy�R?2�jZ       o��	 q[���A�*L

Lossgc?

Adam/Loss/raw�?

Accuracy/__raw_  �?

Accuracy?T?�k��Z       o��	��[���A�*L

Loss�i[?

Adam/Loss/raw
�	?

Accuracy/__raw_  �?

Accuracy�vX?rɌeZ       o��	צ[���A�*L

Loss*ES?

Adam/Loss/raw�M?

Accuracy/__raw_�m[?

Accuracy�j\?/듁Z       o��	��[���A�*L

Loss�N?

Adam/Loss/rawA?

Accuracy/__raw_�m[?

Accuracy�Q\?>�!�Z       o��	P�[���A�*L

Loss�_I?

Adam/Loss/rawV�(?

Accuracy/__raw_   ?

Accuracy�:\?�=H�Z       o��	X�[���A�*L

Loss�F?

Adam/Loss/raw�<?

Accuracy/__raw_  `?

Accuracy�4V?ٱ�qZ       o��	�[���A�*L

Loss�(E?

Adam/Loss/rawL�B?

Accuracy/__raw_   ?

Accuracy�/W?�w��Z       o��	�4[���A�*L

Loss��D?

Adam/Loss/raw�e?

Accuracy/__raw_  �?

Accuracy�Q?�_�Z       o��	�N[���A�*L

Loss<|>?

Adam/Loss/rawY�?

Accuracy/__raw_  �?

Accuracy�LV?f�;NZ       o��	bi[���A�*L

Loss��8?

Adam/Loss/rawE%?

Accuracy/__raw_  @?

AccuracyxZ?��Z       o��	��[���A�*L

LossH�6?

Adam/Loss/rawȋ?

Accuracy/__raw_  �?

Accuracy��W?h��7Z       o��	�[���A�*L

Loss��3?

Adam/Loss/rawgK(?

Accuracy/__raw_   ?

Accuracy]�[?8b��Z       o��	ۿ[���A�*L

Loss��2?

Adam/Loss/raw�YA?

Accuracy/__raw_�m[?

Accuracym�U?���Z       o��	e�[���A�*L

LossN-4?

Adam/Loss/raw��@?

Accuracy/__raw_�m[?

AccuracyjV?޻�Z       o��	��[���A�*L

Lossut5?

Adam/Loss/raw<��>

Accuracy/__raw_  `?

Accuracyl�V?���Z       o��	L[���A�*L

Loss,
0?

Adam/Loss/raw>��@

Accuracy/__raw_  �>

Accuracy��W?FػbZ       o��	L3[���A�*L

LossGL�?

Adam/Loss/raw�X?

Accuracy/__raw_  @?

AccuracyH�H?^�`Z       o��	�L[���A�*L

Loss�?

Adam/Loss/raw�p�>

Accuracy/__raw_  �?

Accuracy�G?���NZ       o��	�f[���A�*L

Loss>�u?

Adam/Loss/rawo,�>

Accuracy/__raw_  �?

AccuracyZfM?0In�Z       o��	�[���A�*L

Loss�i?

Adam/Loss/raw&�>

Accuracy/__raw_  `?

Accuracy�uR?X̍hZ       o��	̚[���A�*L

Loss�k^?

Adam/Loss/raw�R-?

Accuracy/__raw_  @?

AccuracyX�S?nd��Z       o��	��[���A�*L

Loss�Y?

Adam/Loss/raw�Y?

Accuracy/__raw_  `?

Accuracy�Q?�R
Z       o��	A�[���A�*L

Loss.eR?

Adam/Loss/raw&_=?

Accuracy/__raw_n�6?

Accuracy�?S?�W�oZ       o��	w�[���A�*L

Loss�JP?

Adam/Loss/raw5%=?

Accuracy/__raw_n�6?

Accuracy�hP?�6�Z       o��	8[���A�*L

Loss�`N?

Adam/Loss/raw,�:?

Accuracy/__raw_  @?

Accuracy��M?�&�/Z       o��	=,[���A�*L

Loss�dL?

Adam/Loss/raw6�>

Accuracy/__raw_  �?

Accuracy!xL?��
�Z       o��	oG[���A�*L

Loss��C?

Adam/Loss/raw,(?

Accuracy/__raw_  `?

AccuracyQ�Q?��Z       o��	 a[���A�*L

Loss�A?

Adam/Loss/rawM�>

Accuracy/__raw_  �?

AccuracycS?+S�Z       o��	N{[���A�*L

Loss�7?

Adam/Loss/rawk<�>

Accuracy/__raw_  �?

AccuracyٍW?����Z       o��	1�[���A�*L

LossR�.?

Adam/Loss/raw�?

Accuracy/__raw_  @?

AccuracyC�[?����Z       o��	֭[���A�*L

Loss��,?

Adam/Loss/raw��O?

Accuracy/__raw_  @?

Accuracy��X?�+�Z       o��	��[���A�*L

Lossu@0?

Adam/Loss/raw�@�>

Accuracy/__raw_  �?

Accuracy�ZV?,B�PZ       o��	u�[���A�*L

LossB=)?

Adam/Loss/raw�~?

Accuracy/__raw_�m[?

Accuracy��Z?н2�Z       o��	c	[���A�*L

Loss��%?

Adam/Loss/raw�'?

Accuracy/__raw_�m[?

Accuracy?�Z?���Z       o��	�6[���A�*L

Loss��"?

Adam/Loss/raw.>?

Accuracy/__raw_  @?

Accuracy1�Z?����Z       o��	�\[���A�*L

Loss�Y%?

Adam/Loss/raw�yD?

Accuracy/__raw_  @?

Accuracy�X?U�ħZ       o��	f�[���A�*L

Losssv(?

Adam/Loss/raw�S?

Accuracy/__raw_  `?

Accuracy�U?a#��Z       o��	��[���A�*L

Lossd�%?

Adam/Loss/raw&$ ?

Accuracy/__raw_n�6?

Accuracy��V?�xCZ       o��	Z�[���A�*L

Loss"?

Adam/Loss/raw���>

Accuracy/__raw_n�6?

AccuracyzzS?:��kZ       o��	��[���A�*L

Lossc�?

Adam/Loss/raw)	?

Accuracy/__raw_  �?

AccuracyƝP?U}�_Z       o��	��[���A�*L

LossZ?

Adam/Loss/raw�rU?

Accuracy/__raw_  @?

Accuracy�ZU?;�)Z       o��	�[���A�*L

LossK1"?

Adam/Loss/raw^�%?

Accuracy/__raw_  @?

Accuracy8S?Q�%[Z       o��	�>[���A�*L

Loss�"?

Adam/Loss/raw�M%?

Accuracy/__raw_�m[?

AccuracyLQ?!
�FZ       o��	�[[���A�*L

Loss0�"?

Adam/Loss/raw"�$?

Accuracy/__raw_�m[?

AccuracywOR?)w�2Z       o��	�u[���A�*L

Loss{#?

Adam/Loss/rawF
?

Accuracy/__raw_  �?

Accuracy�8S?8fdZ       o��	y�[���A�*L

Loss=� ?

Adam/Loss/raw�?

Accuracy/__raw_  `?

Accuracy4�W?mZ       o��	6�[���A�*L

Loss7�?

Adam/Loss/rawS`�>

Accuracy/__raw_  `?

Accuracy��X?��Z       o��	�[���A�*L

Lossi�?

Adam/Loss/raw��6?

Accuracy/__raw_�m[?

Accuracy�FY?w+�Z       o��	T�[���A�*L

Loss�|?

Adam/Loss/raw��5?

Accuracy/__raw_�m[?

Accuracy�}Y?3�#kZ       o��	��[���A�*L

Loss��?

Adam/Loss/rawO+?

Accuracy/__raw_  `?

Accuracy��Y?;���Z       o��	�[���A�*L

Loss�!?

Adam/Loss/raw�H?

Accuracy/__raw_  `?

Accuracy6QZ?���fZ       o��	q9[���A�*L

LossEK ?

Adam/Loss/rawZF?

Accuracy/__raw_  @?

Accuracy��Z?���EZ       o��	�T[���A�*L

Loss�$?

Adam/Loss/raw�A�>

Accuracy/__raw_  �?

Accuracyl2X?�jIZ       o��	�o[���A�*L

Lossy�?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracya-\?ly2Z       o��	@�[���A�*L

LossD�?

Adam/Loss/raw��$?

Accuracy/__raw_  @?

Accuracyq�_?�~Z       o��	£[���A�*L

Loss�	?

Adam/Loss/raw��?

Accuracy/__raw_  �?

Accuracyf�\?����Z       o��	��[���A�*L

Loss�|?

Adam/Loss/raw�!�>

Accuracy/__raw_  `?

Accuracy `?���OZ       o��	��[���A�*L

LossN?

Adam/Loss/raw��C?

Accuracy/__raw_�m[?

Accuracy�`?QS<AZ       o��	�		[���A�*L

Loss��?

Adam/Loss/raw�C?

Accuracy/__raw_�m[?

Accuracy�_? ��Z       o��	Z,	[���A�*L

Loss�?

Adam/Loss/raw3�?

Accuracy/__raw_  �?

Accuracy9_?v.�DZ       o��	�M	[���A�*L

Loss~�?

Adam/Loss/raw��?

Accuracy/__raw_  @?

Accuracy�b?�q��Z       o��	fj	[���A�*L

Loss�)?

Adam/Loss/raw�%�>

Accuracy/__raw_  `?

Accuracy�_?a�Z       o��	�	[���A�*L

Loss��?

Adam/Loss/raw7o�>

Accuracy/__raw_  �?

Accuracy6%_?���Z       o��	��	[���A�*L

Loss�P?

Adam/Loss/raw�e�>

Accuracy/__raw_  �?

AccuracyJnb?n�@	Z       o��	Q�	[���A�*L

LossRg?

Adam/Loss/raw��?

Accuracy/__raw_  `?

AccuracyCce?�� Z       o��	0�	[���A�*L

Loss)$?

Adam/Loss/rawaU_?

Accuracy/__raw_  @?

AccuracyV�d?Oe�'Z       o��	t�	[���A�*L

Loss|?

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy*a?���Z       o��	�	
[���A�*L

LossF�?

Adam/Loss/raw���>

Accuracy/__raw_�m[?

Accuracy4a?8�.Z       o��	�$
[���A�*L

Loss�?

Adam/Loss/rawK��>

Accuracy/__raw_�m[?

Accuracy[|`?��bZ       o��	�B
[���A�*L

LosseF?

Adam/Loss/raw��c?

Accuracy/__raw_  @?

Accuracy��_? �ͨZ       o��	_
[���A�*L

LossU�?

Adam/Loss/raw=��>

Accuracy/__raw_  `?

Accuracy4�\?��Z       o��	 y
[���A�*L

Loss��?

Adam/Loss/raw?x?

Accuracy/__raw_  @?

Accuracy�]?6͐�Z       o��	�
[���A�*L

LossuC?

Adam/Loss/raw�+B?

Accuracy/__raw_%I?

Accuracy�1Z?/�Z       o��	�
[���A�*L

Loss�?

Adam/Loss/raw	�A?

Accuracy/__raw_n�6?

Accuracy� S?5&#Z       o��	�
[���A�*L

Loss~�?

Adam/Loss/rawVC?

Accuracy/__raw_  �?

Accuracy(0P?�ʯ�Z       o��	L�
[���A�*L

Loss��?

Adam/Loss/raw��c@

Accuracy/__raw_   ?

Accuracy$�T?LK-�Z       o��	3�
[���A�*L

Loss��f?

Adam/Loss/rawF?

Accuracy/__raw_  `?

Accuracy�xL?[L.#Z       o��	v[���A�*L

Loss��\?

Adam/Loss/raw�#K?

Accuracy/__raw_n�6?

Accuracy�lN?N��Z       o��	�6[���A�*L

Loss��Z?

Adam/Loss/raw��J?

Accuracy/__raw_n�6?

Accuracy~L?&}U�Z       o��	-_[���A�*L

Loss�HY?

Adam/Loss/raw�W&?

Accuracy/__raw_  `?

Accuracy|�I?j%�Z       o��	g}[���A�*L

Loss�0T?

Adam/Loss/rawD��>

Accuracy/__raw_  �?

Accuracy	'L?�֔*Z       o��	��[���A�*L

Losst(H?

Adam/Loss/raw��T?

Accuracy/__raw_  @?

AccuracyUVQ?3�
yZ       o��	��[���A�*L

Loss�jI?

Adam/Loss/raw?��>

Accuracy/__raw_  �?

Accuracy��O?5fdZ       o��	W�[���A�*L

Loss�C??

Adam/Loss/raw�m�>

Accuracy/__raw_  �?

AccuracysqT?���Z       o��	�[���A�*L

Loss�6?

Adam/Loss/raw�|?

Accuracy/__raw_  @?

Accuracy��X?�kZ       o��	�[���A�*L

Loss)?3?

Adam/Loss/raw4w�>

Accuracy/__raw_  �?

Accuracy�QV?���@Z       o��	\[���A�*L

Loss�>,?

Adam/Loss/rawI��>

Accuracy/__raw_  �?

Accuracy�|Z?��q�Z       o��	36[���A�*L

Lossց"?

Adam/Loss/raw��>

Accuracy/__raw_�m[?

Accuracy=^?�ئtZ       o��	hX[���A�*L

Loss��?

Adam/Loss/raw��>

Accuracy/__raw_�m[?

Accuracy�]?��̠Z       o��	�x[���A�*L

Lossi�?

Adam/Loss/raw��]?

Accuracy/__raw_  @?

AccuracyZ�]?���Z       o��	h�[���A�*L

Loss�8"?

Adam/Loss/raw�?

Accuracy/__raw_  `?

Accuracy�Z?���Z       o��	%�[���A�*L

Loss�4!?

Adam/Loss/raw�oE?

Accuracy/__raw_  @?

Accuracy�B[?���GZ       o��	!�[���A�*L

Loss+�$?

Adam/Loss/raw���>

Accuracy/__raw_  �?

AccuracyۈX?����Z       o��	��[���A�*L

Loss��?

Adam/Loss/raw:D�>

Accuracy/__raw_  �?

Accuracy,{\?.|��Z       o��	2[���A�*L

Loss�?

Adam/Loss/raw_�?

Accuracy/__raw_  @?

Accuracyt`?��~Z       o��	v[���A�*L

Loss��?

Adam/Loss/raw�}�@

Accuracy/__raw_   >

Accuracyh�\?&�eZ       o��	�4[���A�*L

LossX��?

Adam/Loss/raw��9?

Accuracy/__raw_  `?

Accuracy]�I?5c�lZ       o��	OX[���A�*L

LossI?�?

Adam/Loss/raw�G�>

Accuracy/__raw_  �?

Accuracy�&L?C9/pZ       o��	�v[���A�*L

Loss��?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy<VQ?4e��Z       o��	��[���A�*L

Loss%H{?

Adam/Loss/raw)�?

Accuracy/__raw_  `?

Accuracy� V?��c�Z       o��	h�[���A�*L

Loss%�q?

Adam/Loss/raw4��>

Accuracy/__raw_  `?

Accuracy� W?��Z       o��	��[���A�*L

Loss�^d?

Adam/Loss/raw�f�>

Accuracy/__raw_  �?

Accuracy�W?��-�Z       o��	��[���A�*L

Loss=�W?

Adam/Loss/raw8-'?

Accuracy/__raw_�m[?

Accuracy��[?�pmZ       o��	[���A�*L

Loss<�R?

Adam/Loss/raw��&?

Accuracy/__raw_�m[?

Accuracy,�[?��7Z       o��	80[���A�*L

Loss�gN?

Adam/Loss/raw�T+?

Accuracy/__raw_  `?

Accuracy�[?ܘZ       o��	�I[���A�*L

Loss��J?

Adam/Loss/raw��?

Accuracy/__raw_  `?

Accuracy=\?zFrZ       o��	�l[���A�*L

Loss:�C?

Adam/Loss/raw(�?

Accuracy/__raw_  `?

AccuracyR�\?��O3Z       o��	z�[���A�*L

Loss��>?

Adam/Loss/rawس+?

Accuracy/__raw_�m[?

Accuracy��\?l��wZ       o��	;�[���A�*L

Loss��<?

Adam/Loss/raw��+?

Accuracy/__raw_�m[?

Accuracy��\?oO�yZ       o��	�[���A�*L

LossZ ;?

Adam/Loss/rawp��>

Accuracy/__raw_  �?

Accuracy֩\?|��"Z       o��	��[���A�*L

Loss=5?

Adam/Loss/rawy� ?

Accuracy/__raw_  �?

Accuracyt2`?�i��Z       o��	$[���A�*L

Loss��/?

Adam/Loss/raw�v�>

Accuracy/__raw_  �?

Accuracy�`c?Įe4Z       o��	s*[���A�*L

Loss��*?

Adam/Loss/raw��>

Accuracy/__raw_�m[?

AccuracyY=f?S�%�Z       o��	�F[���A�*L

Loss�%?

Adam/Loss/raw���>

Accuracy/__raw_�m[?

Accuracy�(e? �
�Z       o��	�g[���A�*L

Loss�_!?

Adam/Loss/rawj�?

Accuracy/__raw_  �?

Accuracy�/d?��Z       o��	��[���A�*L

Loss'j?

Adam/Loss/rawH�6?

Accuracy/__raw_  `?

Accuracy��f?�fiZ       o��	��[���A�*L

Loss*� ?

Adam/Loss/raw^!�>

Accuracy/__raw_  `?

Accuracy2Ef?V�G]Z       o��	��[���A�*L

Loss�F?

Adam/Loss/raw0�W?

Accuracy/__raw_�m[?

Accuracy��e?2:Z       o��	��[���A�*L

LossXU!?

Adam/Loss/raw��W?

Accuracy/__raw_�m[?

Accuracy.�d?QP�Z       o��	��[���A�*L

Loss�&?

Adam/Loss/raw�p�>

Accuracy/__raw_  �?

Accuracyճc?���Z       o��	z[���A�*L

Loss$� ?

Adam/Loss/raw�T?

Accuracy/__raw_  �?

Accuracy@�f?���Z       o��	�<[���A�*L

Loss͹?

Adam/Loss/raw�Q?

Accuracy/__raw_  `?

Accuracy:i?M� Z       o��	Y[���A�*L

Loss��#?

Adam/Loss/rawjm�>

Accuracy/__raw_  �?

Accuracy�+h?ԕ�EZ       o��	Y�[���A�*L

Loss��?

Adam/Loss/raw��>

Accuracy/__raw_  �?

AccuracyӍj?�u�Z       o��	��[���A�*L

Loss)�?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracyزl?H�zCZ       o��	�[���A�*L

Loss�??

Adam/Loss/raw��@

Accuracy/__raw_    

Accuracy��n?�&��Z       o��	��[���A�*L

Loss_�?

Adam/Loss/raw<J�>

Accuracy/__raw_  �?

Accuracy�V?�{fZ       o��	�[���A�*L

Loss��{?

Adam/Loss/rawr��>

Accuracy/__raw_  �?

Accuracy��Z?�
9CZ       o��	;[���A�*L

LossNn?

Adam/Loss/raw�9�>

Accuracy/__raw_  �?

Accuracy��^?&۶Z       o��	�7[���A�*L

Loss݅a?

Adam/Loss/rawy�?

Accuracy/__raw_  `?

Accuracy��a?��-Z       o��		R[���A�*L

Loss9!Y?

Adam/Loss/raw:?

Accuracy/__raw_  `?

Accuracy�a?Ûl�Z       o��	Po[���A�*L

Loss�V?

Adam/Loss/raw%��>

Accuracy/__raw_  �?

AccuracyX�a?K5]Z       o��	U�[���A�*L

Loss�QL?

Adam/Loss/raw�>

Accuracy/__raw_�m[?

AccuracyO�d?�\�aZ       o��	��[���A�*L

Loss=�B?

Adam/Loss/rawQ��>

Accuracy/__raw_�m[?

Accuracy&�c?b�[�Z       o��	��[���A�*L

Lossa;:?

Adam/Loss/rawd�E?

Accuracy/__raw_  `?

Accuracy��b?�ޡ�Z       o��	�[���A�*L

LossH_;?

Adam/Loss/rawi��>

Accuracy/__raw_  �?

Accuracy�b?�g�Z       o��	��[���A�*L

Loss��4?

Adam/Loss/raw!�>

Accuracy/__raw_  `?

Accuracy&�e?\!�}Z       o��	�[���A�*L

Loss�.?

Adam/Loss/raw@��>

Accuracy/__raw_  �?

Accuracy��d?��Q�Z       o��	.[���A�*L

Lossi5(?

Adam/Loss/raw'R�>

Accuracy/__raw_  �?

Accuracy��g?�z��Z       o��	�H[���A�*L

Loss`'"?

Adam/Loss/raw�V?

Accuracy/__raw_  `?

Accuracyej?���Z       o��	Zd[���A�*L

Loss:h'?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�i?{��Z       o��	Ԁ[���A�*L

Loss�� ?

Adam/Loss/raw@��>

Accuracy/__raw_  `?

Accuracy�bk?���Z       o��	��[���A�*L

Lossd?

Adam/Loss/raw�4?

Accuracy/__raw_  �?

Accuracy~?j?M�hZ       o��	P�[���A�*L

Loss �?

Adam/Loss/raw��?

Accuracy/__raw_  �?

AccuracyXll?YΉZ       o��	�[���A�*L

Losse<?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�an?�h�Z       o��	� [���A�*L

Loss=5?

Adam/Loss/raw�?

Accuracy/__raw_  `?

Accuracy�$p?�TTZ       o��	�[���A�*L

Loss2?

Adam/Loss/raw��0?

Accuracy/__raw_  `?

AccuracyM�n?x.$Z       o��	?:[���A�*L

Loss��?

Adam/Loss/raw��?

Accuracy/__raw_�m[?

Accuracy_m?W���Z       o��	�T[���A�*L

Loss�?

Adam/Loss/raw�b?

Accuracy/__raw_�m[?

Accuracy�Ok?�ɹ�Z       o��	Tn[���A�*L

Loss��?

Adam/Loss/raw+?

Accuracy/__raw_  �?

Accuracy�i?V
�.Z       o��	ۈ[���A�*L

LossY�?

Adam/Loss/raw�>

Accuracy/__raw_  �?

AccuracyP�k?(�ЇZ       o��	@�[���A�*L

Loss*�?

Adam/Loss/raw��6?

Accuracy/__raw_  `?

Accuracy��m?��6eZ       o��	��[���A�*L

Loss�?

Adam/Loss/raw"��>

Accuracy/__raw_  �?

AccuracyS�l?���&Z       o��	��[���A�*L

Loss��?

Adam/Loss/rawj�>

Accuracy/__raw_  �?

Accuracy��n?�Z       o��	��[���A�*L

Loss�@	?

Adam/Loss/rawٍ�>

Accuracy/__raw_  �?

Accuracy�@p?jq2Z       o��	�[���A�*L

Loss'�?

Adam/Loss/rawO?

Accuracy/__raw_  `?

Accuracy�q?��zzZ       o��	�0[���A�*L

Loss��?

Adam/Loss/rawRZ+?

Accuracy/__raw_  `?

Accuracy�p?}�D�Z       o��	�M[���A�*L

Loss�
?

Adam/Loss/rawoS�>

Accuracy/__raw_  �?

Accuracy�pn?X��	Z       o��	{h[���A�*L

Loss��?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy[2p?��RuZ       o��	��[���A�*L

Loss�e?

Adam/Loss/rawTq�>

Accuracy/__raw_  �?

Accuracy��q?,�zZ       o��	��[���A�*L

Loss�?

Adam/Loss/rawju�>

Accuracy/__raw_  `?

Accuracy3s?|yZ       o��	^�[���A�*L

LossL&?

Adam/Loss/rawlt�>

Accuracy/__raw_  �?

Accuracy�Gq?l���Z       o��	��[���A�*L

Loss}?

Adam/Loss/rawg��>

Accuracy/__raw_  �?

Accuracy`�r?%�bHZ       o��	�[���A�*L

Loss6` ?

Adam/Loss/rawϜ�>

Accuracy/__raw_  �?

Accuracy�t?����Z       o��	B%[���A�*L

LossvV�>

Adam/Loss/raw�7�>

Accuracy/__raw_  �?

Accuracy�Du?����Z       o��	@[���A�*L

Loss��>

Adam/Loss/raw#WM?

Accuracy/__raw_  @?

Accuracy�Wv?e�A@Z       o��	l[[���A�*L

Loss�?

Adam/Loss/rawj	,?

Accuracy/__raw_  `?

Accuracy[�p?�P��Z       o��	u[���A�*L

LossѺ?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�7o?��,<Z       o��	B�[���A�*L

Loss��?

Adam/Loss/raw%2�>

Accuracy/__raw_  �?

Accuracy+�p?p�(	Z       o��	1�[���A�*L

Loss#R?

Adam/Loss/rawV��>

Accuracy/__raw_  �?

Accuracy�gr?�Cb�Z       o��	B�[���A�*L

Loss��?

Adam/Loss/rawK��>

Accuracy/__raw_  �?

Accuracy��s?�yZ       o��	5�[���A�*L

Loss�� ?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�t?QL�(Z       o��	�[���A�*L

Loss^��>

Adam/Loss/raw�*�>

Accuracy/__raw_  �?

Accuracy�v?"}��Z       o��	-[���A�*L

LossJ��>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�w?Y�`Z       o��	G[���A�*L

LossUZ�>

Adam/Loss/rawI:?

Accuracy/__raw_  `?

Accuracy�w?�ЖZ       o��	,a[���A�*L

Loss� ?

Adam/Loss/raws��>

Accuracy/__raw_  �?

AccuracyO�u?�D��Z       o��	{[���A�*L

Loss4��>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy.�v?M7�Z       o��	��[���A�*L

Loss|��>

Adam/Loss/rawϝ?

Accuracy/__raw_�m[?

Accuracy]�w?C-A�Z       o��	Ȳ[���A�*L

Loss ! ?

Adam/Loss/raw�\?

Accuracy/__raw_�m[?

AccuracyL�t?�>JuZ       o��	!�[���A�*L

Loss\?

Adam/Loss/raw��?

Accuracy/__raw_  �?

Accuracy=6r?��O�Z       o��	��[���A�*L

Loss��?

Adam/Loss/raw�a�>

Accuracy/__raw_  �?

Accuracy7�s?`���Z       o��	/[���A�*L

LossE?

Adam/Loss/rawt �>

Accuracy/__raw_  �?

Accuracy��t?�S�Z       o��	�6[���A�*L

Loss�b�>

Adam/Loss/rawg?

Accuracy/__raw_�m[?

Accuracy��u?5"j�Z       o��	�S[���A�*L

LossU� ?

Adam/Loss/raw��?

Accuracy/__raw_�m[?

Accuracy�Ks?�c�Z       o��	o[���A�*L

Loss�_?

Adam/Loss/rawМ?

Accuracy/__raw_  �?

Accuracy��p?4�rzZ       o��	��[���A�*L

Loss�?

Adam/Loss/rawx?

Accuracy/__raw_  �?

Accuracy0kr?D�L!Z       o��	�[���A�*L

Loss��?

Adam/Loss/raw@)?

Accuracy/__raw_  `?

Accuracy��s?�YCDZ       o��	2�[���A�*L

Loss��?

Adam/Loss/rawY��>

Accuracy/__raw_  �?

Accuracy��q?W!��Z       o��	��[���A�*L

Loss�R?

Adam/Loss/rawe��>

Accuracy/__raw_  �?

Accuracy 8s?��\ Z       o��	��[���A�*L

Loss;?

Adam/Loss/raw*�>

Accuracy/__raw_  �?

AccuracyPt?�2=Z       o��	~[���A�*L

Loss��>

Adam/Loss/raw6��>

Accuracy/__raw_  �?

Accuracyȥu?�]�*Z       o��	G;[���A�*L

Loss��>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracyήv?�"<aZ       o��	>[[���A�*L

Loss�w�>

Adam/Loss/raw�!?

Accuracy/__raw_�m[?

AccuracyS�w?�I��Z       o��	�w[���A�*L

Loss�� ?

Adam/Loss/raw� ?

Accuracy/__raw_�m[?

Accuracy��t?;Z"OZ       o��	�[���A�*L

Loss3?

Adam/Loss/rawj�>

Accuracy/__raw_  �?

Accuracy[Br?Ed�Z       o��	�[���A�*L

Loss�?

Adam/Loss/raw�\�>

Accuracy/__raw_  �?

Accuracy�s?۱|�Z       o��	.�[���A�*L

LossT� ?

Adam/Loss/raw2y)?

Accuracy/__raw_  `?

Accuracy��t?���Z       o��	`�[���A�*L

LossѮ?

Adam/Loss/raw�B
?

Accuracy/__raw_  �?

Accuracyq�r?B�Z       o��	��[���A�*L

Loss�=?

Adam/Loss/raw!�	?

Accuracy/__raw_  �?

Accuracy�t?M�Q�Z       o��	q[���A�*L

Loss��?

Adam/Loss/raw�A�>

Accuracy/__raw_  �?

AccuracyQKu?d`LZ       o��	}?[���A�*L

Loss��?

Adam/Loss/raw�@

Accuracy/__raw_   >

Accuracyc]v?����Z       o��	:X[���A�*L

Loss��z?

Adam/Loss/raw��?

Accuracy/__raw_  `?

Accuracy��`?XKU�Z       o��	�q[���A�*L

Loss+q?

Adam/Loss/rawg��>

Accuracy/__raw_  �?

Accuracy��`?	��pZ       o��	]�[���A�*L

LossYb?

Adam/Loss/raw�F�>

Accuracy/__raw_  �?

Accuracy��c?>x��Z       o��	.�[���A�*L

Loss~T?

Adam/Loss/raw�W�>

Accuracy/__raw_  �?

Accuracy��f?5OQGZ       o��	�[���A�*L

LossoOJ?

Adam/Loss/rawZ!?

Accuracy/__raw_  �?

Accuracy�Gi?����Z       o��	��[���A�*L

Loss:1C?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy��k?��mZ       o��	�[���A�*L

Loss>s;?

Adam/Loss/rawvN�>

Accuracy/__raw_  �?

Accuracy�m?eV�|Z       o��	&8[���A�*L

Lossq�1?

Adam/Loss/raw{Ÿ>

Accuracy/__raw_  �?

Accuracypo?�1��Z       o��	�U[���A�*L

Lossxi)?

Adam/Loss/raw�?

Accuracy/__raw_  `?

Accuracyq?G�\�Z       o��	�o[���A�*L

Loss9�'?

Adam/Loss/raw%i�>

Accuracy/__raw_  �?

Accuracy|bo?1Z       o��	��[���A�*L

Loss�X#?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�q?k�%Z       o��	L�[���A�*L

Loss��?

Adam/Loss/raw{s�>

Accuracy/__raw_  �?

Accuracy��r?R�2�Z       o��	��[���A�*L

Loss%�?

Adam/Loss/raw&��>

Accuracy/__raw_  �?

Accuracy0�s?��3IZ       o��	O�[���A�*L

Loss=�?

Adam/Loss/raw��%?

Accuracy/__raw_  `?

AccuracyEu?�WUZ       o��	��[���A�*L

Loss�o?

Adam/Loss/rawD��>

Accuracy/__raw_  �?

Accuracy$�r?KZ       o��	�[���A�*L

Lossl?

Adam/Loss/raw�X�>

Accuracy/__raw_  �?

Accuracy:Jt?�U8�Z       o��	�;[���A�*L

Loss�?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracyvu?O���Z       o��	B^[���A�*L

Loss�?

Adam/Loss/raw�1�>

Accuracy/__raw_  �?

Accuracy΃v?H�(>Z       o��	hw[���A�*L

Loss�?

Adam/Loss/raw�)?

Accuracy/__raw_  `?

Accuracy�vw? �.�Z       o��	�[���A�*L

Lossk?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�u?�ITZ       o��	��[���A�*L

Loss�@?

Adam/Loss/raw�j�>

Accuracy/__raw_  �?

Accuracy�4v?B/�Z       o��	��[���A�*L

Loss�r?

Adam/Loss/rawa�?

Accuracy/__raw_  �?

AccuracyO/w?D�nZ       o��	i�[���A�*L

Loss&)?

Adam/Loss/raw:!?

Accuracy/__raw_  �?

Accuracy�x?�.�Z       o��	:[���A�*L

Loss[�?

Adam/Loss/raw� �>

Accuracy/__raw_  �?

Accuracy�x?3���Z       o��	%[���A�*L

Loss�� ?

Adam/Loss/raw��$?

Accuracy/__raw_  `?

Accuracyߒy?�w�Z       o��	l_[���A�*L

Loss&|?

Adam/Loss/raw�.�>

Accuracy/__raw_  �?

Accuracy/w?��t�Z       o��	A�[���A�*L

LossG� ?

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy*�w?�g)�Z       o��	��[���A�*L

Loss�B ?

Adam/Loss/rawb�>

Accuracy/__raw_  �?

Accuracy&�x?���aZ       o��	�[���A�*L

Loss�N�>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracyosy?��%�Z       o��	�[���A�*L

Loss��>

Adam/Loss/rawQP?

Accuracy/__raw_  `?

Accuracyz?H؉Z       o��	�[���A�*L

LossD��>

Adam/Loss/raw�q�>

Accuracy/__raw_  �?

Accuracy�~w?�iZ       o��	�7[���A�*L

Lossm��>

Adam/Loss/raw�a�>

Accuracy/__raw_  �?

Accuracy�Xx?B��(Z       o��	(a[���A�*L

LossxR�>

Adam/Loss/raw!��>

Accuracy/__raw_  �?

Accuracyty?F2*3Z       o��	��[���A�*L

Loss���>

Adam/Loss/raw�!?

Accuracy/__raw_  `?

Accuracy��y?�Ӥ�Z       o��	Ϟ[���A�*L

Loss�]�>

Adam/Loss/raw�?

Accuracy/__raw_  �?

AccuracyT8w?d�Z       o��	��[���A�*L

Loss�A�>

Adam/Loss/raw<��>

Accuracy/__raw_  �?

Accuracyx?a�r�Z       o��	��[���A�*L

Lossd�>

Adam/Loss/raw�W>

Accuracy/__raw_  �?

Accuracyb�x?�P;�Z       o��	��[���A�*L

Loss��>

Adam/Loss/rawbW>

Accuracy/__raw_  �?

Accuracyr�y?s�Z       o��	k[���A�*L

Losss�>

Adam/Loss/rawu��>

Accuracy/__raw_  �?

AccuracyM=z?/��Z       o��	*[���A�*L

Loss1^�>

Adam/Loss/rawc"?

Accuracy/__raw_  `?

Accuracy��z?8��Z       o��	�G[���A�*L

Loss/��>

Adam/Loss/raw��>

Accuracy/__raw_  �?

AccuracyK"x?��&Z       o��	�i[���A�*L

Loss\i�>

Adam/Loss/raw��+?

Accuracy/__raw_�m[?

Accuracy��x?�|J�Z       o��	��[���A�*L

Loss���>

Adam/Loss/rawޙ+?

Accuracy/__raw_�m[?

Accuracy��u?5���Z       o��	>�[���A�*L

Loss��>

Adam/Loss/rawp�>

Accuracy/__raw_  �?

Accuracy,Qs?ue�Z       o��	��[���A�*L

Loss;��>

Adam/Loss/raw.�@

Accuracy/__raw_    

Accuracyەt?���.Z       o��	L�[���A�*L

Losshgz?

Adam/Loss/rawe+�>

Accuracy/__raw_  �?

Accuracyx \?�x	Z       o��	F#[���A�*L

Loss��h?

Adam/Loss/rawV?

Accuracy/__raw_  �?

AccuracyҶ_?'@M�Z       o��	�A[���A�*L

LossT`?

Adam/Loss/rawX:?

Accuracy/__raw_  �?

AccuracyW�b?���Z       o��	�`[���A�*L

Loss�X?

Adam/Loss/rawt��>

Accuracy/__raw_  �?

Accuracy5�e?�gFCZ       o��	�[���A�*L

Loss�mL?

Adam/Loss/raw�?

Accuracy/__raw_  `?

Accuracy�vh?�Ns�Z       o��	 �[���A�*L

Loss��F?

Adam/Loss/raw$��>

Accuracy/__raw_  �?

Accuracy�g?{J��Z       o��	&�[���A�*L

Loss5j<?

Adam/Loss/rawF�I?

Accuracy/__raw_�m[?

Accuracy8j?���Z       o��	��[���A�*L

Loss�=?

Adam/Loss/raw��H?

Accuracy/__raw_�m[?

Accuracyŗh?O���Z       o��	� [���A�*L

Loss}�>?

Adam/Loss/raw[x�>

Accuracy/__raw_  �?

Accuracy�Fg?&J�tZ       o��	% [���A�*L

Loss��2?

Adam/Loss/raw� �>

Accuracy/__raw_  �?

Accuracy��i?�aRZ       o��	�D [���A�*L

Lossi�+?

Adam/Loss/raw�WE?

Accuracy/__raw_  `?

AccuracyR�k?6>0OZ       o��	4f [���A�*L

Loss[Q.?

Adam/Loss/rawq�>

Accuracy/__raw_  �?

Accuracy��j?�1�Z       o��	� [���A�*L

Loss�a&?

Adam/Loss/rawb�>

Accuracy/__raw_  �?

Accuracy�l?Bz�(Z       o��	i� [���A�*L

Lossa6?

Adam/Loss/raw�=�>

Accuracy/__raw_  �?

Accuracy�n?ID�kZ       o��	�� [���A�*L

Loss�?

Adam/Loss/rawje�@

Accuracy/__raw_    

Accuracy0�p?�ͨ|Z       o��	F� [���A�*L

LossL��?

Adam/Loss/raw�#�>

Accuracy/__raw_  �?

Accuracy�yX?��!JZ       o��	�![���A�*L

Loss��v?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�m\?���tZ       o��	6"![���A�*L

Loss!�h?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy&�_?�GeZ       o��	W@![���A�*L

Loss�\?

Adam/Loss/rawɘ?

Accuracy/__raw_  `?

Accuracy�/c?՝^Z       o��	R`![���A�*L

Loss8�U?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy)�b?X0�IZ       o��	4�![���A�*L

Loss��K?

Adam/Loss/raw�+�>

Accuracy/__raw_  �?

Accuracy��e?�hQZ       o��	��![���A�*L

Loss��??

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy'gh?ArZ       o��	��![���A�*L

Loss�7?

Adam/Loss/raw�-�>

Accuracy/__raw_  �?

Accuracy=�j?	�ǱZ       o��	y�![���A�*L

Loss�8/?

Adam/Loss/raw\1�>

Accuracy/__raw_  �?

Accuracy��l?z��Z       o��	�"[���A�*L

Losswu)?

Adam/Loss/raw��?

Accuracy/__raw_  `?

Accuracy9�n?�tZ       o��	�"[���A�*L

Lossjd'?

Adam/Loss/raw�$?

Accuracy/__raw_  �?

AccuracyfQm?F�FZ       o��	y:"[���A�*L

Loss=$?

Adam/Loss/rawnu?

Accuracy/__raw_�m[?

Accuracy�/o?ZkA�Z       o��	�U"[���A�*L

Loss�4"?

Adam/Loss/raw7?

Accuracy/__raw_�m[?

Accuracy�5m?w�Z       o��	�y"[���A�*L

Lossd~ ?

Adam/Loss/raw撦>

Accuracy/__raw_  �?

Accuracy�nk?�L��Z       o��	�"[���A�*L

Loss��?

Adam/Loss/raw,�>

Accuracy/__raw_  �?

Accuracy0}m?f�Z       o��	W�"[���A�*L

Loss�Y?

Adam/Loss/raw���>

Accuracy/__raw_  �?

AccuracyWo?��)Z       o��	�#[���A�*L

Loss��?

Adam/Loss/raw��?

Accuracy/__raw_�m[?

Accuracy�q?>;8Z       o��	�(#[���A�*L

Loss��?

Adam/Loss/raw��?

Accuracy/__raw_�m[?

Accuracy-�n?k�'%Z       o��	F#[���A�*L

Loss�?

Adam/Loss/raw\�>

Accuracy/__raw_  �?

Accuracy�l?tFZ       o��	�h#[���A�*L

Loss�
?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��n?"	�	Z       o��	
�#[���A�*L

Lossg�?

Adam/Loss/raw�
�>

Accuracy/__raw_  �?

Accuracy��p?nc�nZ       o��	��#[���A�*L

Loss�?

Adam/Loss/raw&?

Accuracy/__raw_�m[?

Accuracy�r?��D4Z       o��	�#[���A�*L

Loss�?

Adam/Loss/raw��?

Accuracy/__raw_�m[?

Accuracy��o?8���Z       o��	�#[���A�*L

Loss�^?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��m?R1�Z       o��	$[���A�*L

Loss�� ?

Adam/Loss/rawA*�>

Accuracy/__raw_  �?

Accuracyb�o?�gZ       o��	�6$[���A�*L

Loss2e�>

Adam/Loss/raw0�%?

Accuracy/__raw_  `?

Accuracy?=q??�F�Z       o��	R$[���A�*L

Loss�?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�o?6���Z       o��	�u$[���A�*L

Loss|��>

Adam/Loss/raw�ù>

Accuracy/__raw_  �?

Accuracy�)q?^�V<Z       o��	��$[���A�*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��r?v��2Z       o��	�$[���A�*L

Loss��>

Adam/Loss/raw@��>

Accuracy/__raw_  �?

Accuracy��s?ۄ�8Z       o��	��$[���A�*L

Loss���>

Adam/Loss/raw�q�>

Accuracy/__raw_  �?

Accuracy6/u?U/ގZ       o��	(�$[���A�*L

Loss��>

Adam/Loss/raw.�>

Accuracy/__raw_  �?

AccuracyDv?t��%Z       o��	�%[���A�*L

Loss���>

Adam/Loss/rawe�>

Accuracy/__raw_  �?

AccuracyH=w? ��hZ       o��	&4%[���A�*L

Loss�y�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�x?J�^Z       o��	�N%[���A�*L

Loss!5�>

Adam/Loss/raw�?

Accuracy/__raw_  `?

Accuracyf�x?h���Z       o��	�j%[���A�*L

Lossf��>

Adam/Loss/raw:?

Accuracy/__raw_  `?

Accuracy�iv?7���Z       o��	��%[���A�*L

Lossη�>

Adam/Loss/rawOs�>

Accuracy/__raw_  �?

Accuracy,t?cB��Z       o��	8�%[���A�*L

Loss(��>

Adam/Loss/rawqʔ>

Accuracy/__raw_  �?

Accuracy�Zu?��pZ       o��	�%[���A�*L

Loss���>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracyakv?���Z       o��	��%[���A�*L

Loss�)�>

Adam/Loss/raw�٨>

Accuracy/__raw_  �?

Accuracy�`w?�c;HZ       o��	��%[���A�*L

Loss��>

Adam/Loss/rawD�>

Accuracy/__raw_  �?

Accuracy`=x?�F�?Z       o��	m&[���A�*L

Loss��>

Adam/Loss/raw�+?

Accuracy/__raw_  �?

Accuracy
y?��JZ       o��	~5&[���A�*L

Loss�K�>

Adam/Loss/raw:� ?

Accuracy/__raw_  �?

Accuracyֶy?h���Z       o��	rQ&[���A�*L

Loss'�>

Adam/Loss/rawO�>

Accuracy/__raw_  �?

Accuracy�Wz?Y�E<Z       o��	�q&[���A�*L

Loss���>

Adam/Loss/rawaC?

Accuracy/__raw_  `?

Accuracy��z?f:��Z       o��	��&[���A�*L

Loss�Z�>

Adam/Loss/raw�c?

Accuracy/__raw_  �?

Accuracy�7x?�N�Z       o��	v�&[���A�*L

Loss�>

Adam/Loss/raw�I?

Accuracy/__raw_�m[?

Accuracy��x?l9��Z       o��	��&[���A�*L

Loss�M�>

Adam/Loss/rawM�?

Accuracy/__raw_�m[?

Accuracy
v?�tA�Z       o��	��&[���A�*L

Loss�(�>

Adam/Loss/raw恣>

Accuracy/__raw_  �?

Accuracy�`s?�xOZ       o��	m'[���A�*L

Loss�1�>

Adam/Loss/rawF�A

Accuracy/__raw_   >

Accuracy�t?͕��Z       o��	�"'[���A�*L

Loss��?

Adam/Loss/raw�!?

Accuracy/__raw_  `?

AccuracyR`_?��*Z       o��	�='[���A�*L

Loss�͟?

Adam/Loss/raw/�>

Accuracy/__raw_  �?

AccuracyJp_?�!�Z       o��	?X'[���A�*L

Loss�_�?

Adam/Loss/rawP�>

Accuracy/__raw_  �?

Accuracyܱb?�̵�Z       o��	�q'[���A�*L

Loss/�?

Adam/Loss/rawF��>

Accuracy/__raw_  �?

Accuracy�e?�of�Z       o��	J�'[���A�*L

Loss�ҁ?

Adam/Loss/raw�X>

Accuracy/__raw_  �?

AccuracyDCh?�E�KZ       o��	ճ'[���A�*L

Loss�p?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�j?*��Z       o��	��'[���A�*L

Loss4g`?

Adam/Loss/rawy�>

Accuracy/__raw_  �?

Accuracy��l?MϑZ       o��	K�'[���A�*L

Loss�bV?

Adam/Loss/rawnM�>

Accuracy/__raw_  �?

Accuracy�n?G�Z       o��	�([���A�*L

Loss�\M?

Adam/Loss/raw��?

Accuracy/__raw_  `?

Accuracymp?���Z       o��	_)([���A�*L

Loss�F?

Adam/Loss/raw���@

Accuracy/__raw_   >

Accuracy��n?a���Z       o��	FE([���A�*L

LossȨ�?

Adam/Loss/raw�ע>

Accuracy/__raw_  �?

Accuracy�Z?���Z       o��	�a([���A�*L

Loss~��?

Adam/Loss/rawU��>

Accuracy/__raw_  �?

Accuracy�]?x�(1Z       o��	�}([���A�*L

LossM3�?

Adam/Loss/raw/��>

Accuracy/__raw_  �?

AccuracyNa?�LfZ       o��	��([���A�*L

Loss�ޓ?

Adam/Loss/raw^{�>

Accuracy/__raw_  �?

Accuracy�_d?Z�;Z       o��	�([���A�*L

Loss %�?

Adam/Loss/raw.�>

Accuracy/__raw_  `?

Accuracy#g?d��eZ       o��	��([���A�*L

Loss\�?

Adam/Loss/raw`�?

Accuracy/__raw_  `?

Accuracyelf?DL�Z       o��	��([���A�*L

Loss��x?

Adam/Loss/rawu=�>

Accuracy/__raw_  �?

Accuracy��e?�+LZ       o��	�#)[���A�*L

Losssk?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy(gh?�98?Z       o��	RC)[���A�*L

Losse_?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy>�j?N֔DZ       o��	�d)[���A�*L

LossLiP?

Adam/Loss/raw2��>

Accuracy/__raw_  �?

Accuracy��l?t,]Z       o��	�)[���A�*L

Loss-jE?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy:�n?�y
�Z       o��	ͬ)[���A�*L

Loss" =?

Adam/Loss/raw�%�>

Accuracy/__raw_�m[?

Accuracy��p?��YZ       o��	2�)[���A�*L

Lossk�6?

Adam/Loss/raw���>

Accuracy/__raw_�m[?

Accuracy�hn?����Z       o��	��)[���A�*L

Lossi1?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracyтl?o�(�Z       o��	�*[���A�*L

Lossθ'?

Adam/Loss/raw�2�>

Accuracy/__raw_  �?

Accuracy�un?#�#pZ       o��	�)*[���A�*L

Loss��!?

Adam/Loss/rawM�>

Accuracy/__raw_  �?

Accuracy�6p?z�)�Z       o��	=I*[���A�*L

Loss��?

Adam/Loss/raw׸�>

Accuracy/__raw_  �?

Accuracy��q?b�f�Z       o��	Ve*[���A�*L

Loss�'?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�6s?���9Z       o��	4�*[���A�*L

Loss��?

Adam/Loss/raw�ϫ>

Accuracy/__raw_  �?

Accuracy�}t?[�_�Z       o��	��*[���A�*L

Loss��?

Adam/Loss/raw�>

Accuracy/__raw_  `?

Accuracy��u?U�0zZ       o��	��*[���A�*L

Loss?

Adam/Loss/raw2��>

Accuracy/__raw_  �?

Accuracy}zs?��Z       o��	#�*[���A�*L

Losso/?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy
�t?�"<Z       o��	��*[���A�*L

Loss�'?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy��u?���Z       o��	�+[���A�*L

Loss�`?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy/�v?�SNZ       o��	1+[���A�*L

Loss+�>

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracy��w?<��tZ       o��	~V+[���A�*L

Loss���>

Adam/Loss/raw�A�>

Accuracy/__raw_  �?

Accuracy�gu?��Z       o��	it+[���A�*L

Loss9m�>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy/wv?� ʋZ       o��	_�+[���A�*L

Loss@Z�>

Adam/Loss/rawJ6�>

Accuracy/__raw_  �?

AccuracyDkw?2ǽ�Z       o��	_�+[���A�*L

Lossۉ�>

Adam/Loss/raw��?

Accuracy/__raw_  `?

Accuracy�Fx?<w8Z       o��	��+[���A�*L

Loss���>

Adam/Loss/raw�q@

Accuracy/__raw_  �>

Accuracyr�u?�^9\Z       o��	��+[���A�*L

Loss)(L?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�c?3�8QZ       o��	�,[���A�*L

Loss��@?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy~f?�oh�Z       o��	�&,[���A�*L

Loss4*5?

Adam/Loss/raw�[�>

Accuracy/__raw_  �?

AccuracyXi?f��Z       o��	E,[���A�*L

Loss\�*?

Adam/Loss/raw+%�>

Accuracy/__raw_  �?

Accuracy�Wk?io?QZ       o��	�b,[���A�*L

Loss��$?

Adam/Loss/rawb�?

Accuracy/__raw_  `?

Accuracy�hm?q�BZ       o��	t~,[���A�*L

Loss��!?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracyrl?dϓHZ       o��	8�,[���A�*L

Loss� ?

Adam/Loss/raw�?

Accuracy/__raw_�m[?

Accuracy�n?���Z       o��	V�,[���A�*L

Loss �?

Adam/Loss/raw��?

Accuracy/__raw_�m[?

Accuracy�2l?����Z       o��	#�,[���A�*L

Losss)?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracyg�j?�Q��Z       o��	��,[���A�*L

Loss[�?

Adam/Loss/raw���>

Accuracy/__raw_  �?

AccuracyC�l?�l�yZ       o��	4-[���A�*L

Loss&?

Adam/Loss/raw��'?

Accuracy/__raw_  `?

Accuracy#�n?]��Z       o��	0.-[���A�*L

Lossg�?

Adam/Loss/raw�3�>

Accuracy/__raw_  �?

AccuracyS$m?��Z       o��	�H-[���A�*L

Loss�4?

Adam/Loss/rawё�>

Accuracy/__raw_  �?

Accuracyo?߶�Z       o��	<f-[���A�*L

LossH
?

Adam/Loss/rawY��>

Accuracy/__raw_  �?

Accuracy��p?�@Z       o��	τ-[���A�*L

Loss�?

Adam/Loss/raw�~>

Accuracy/__raw_  �?

Accuracy�@r?�n��Z       o��	£-[���A�*L

Loss���>

Adam/Loss/raw�E�>

Accuracy/__raw_  �?

Accuracy��s?�5H�Z       o��	��-[���A�*L

Loss��>

Adam/Loss/rawj�>

Accuracy/__raw_  �?

AccuracyO�t?cיZ       o��	��-[���A�*L

LossR��>

Adam/Loss/rawݣ�>

Accuracy/__raw_  �?

Accuracya�u?1P�Z       o��	��-[���A�*L

Loss`e�>

Adam/Loss/raw�%�>

Accuracy/__raw_  `?

Accuracy��v?��M1Z       o��	�.[���A�*L

Lossʫ�>

Adam/Loss/raw{ɘ@

Accuracy/__raw_  �>

Accuracy��t?��Z       o��	M1.[���A�*L

LossL�d?

Adam/Loss/raw*��>

Accuracy/__raw_  �?

Accuracy/�b?��ؘZ       o��	�M.[���A�*L

Loss��T?

Adam/Loss/raw	�?

Accuracy/__raw_�m[?

Accuracyw�e?�TW9Z       o��	�k.[���A�*L

Loss	GN?

Adam/Loss/raw��?

Accuracy/__raw_�m[?

AccuracyJ�d?/���Z       o��	ʇ.[���A�*L

Loss�iH?

Adam/Loss/raw;�>

Accuracy/__raw_  �?

Accuracy�c?33�Z       o��	��.[���A�*L

Loss��??

Adam/Loss/raw	ܥ>

Accuracy/__raw_  �?

AccuracyTwf?~��Z       o��	��.[���A�*L

Loss��4?

Adam/Loss/raww�>

Accuracy/__raw_  �?

Accuracy�i?7��"Z       o��	Y�.[���A�*L

Lossb�*?

Adam/Loss/raw��>

Accuracy/__raw_  �?

AccuracyLQk?�#
Z       o��	Z�.[���A�*L

Lossd�!?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�bm?��-�Z       o��	^/[���A�*L

Loss��?

Adam/Loss/raw�]�>

Accuracy/__raw_  �?

AccuracyJ?o?��i�Z       o��	�)/[���A�*L

Loss:?

Adam/Loss/raw�S?

Accuracy/__raw_  `?

Accuracy)�p?A���Z       o��	�I/[���A�*L

Loss#?

Adam/Loss/raw0��>

Accuracy/__raw_  �?

Accuracy�:o?��N�Z       o��	<g/[���A�*L

Loss�*?

Adam/Loss/rawQά>

Accuracy/__raw_  �?

Accuracy@�p?�Zz�Z       o��	ʇ/[���A�*L

Loss�}	?

Adam/Loss/raw;e�>

Accuracy/__raw_  �?

Accuracy�jr?^�JZ       o��	M�/[���A�*L

Loss�\?

Adam/Loss/raw|V?

Accuracy/__raw_  `?

Accuracy]�s?����Z       o��	;�/[���A�*L

Loss�u?

Adam/Loss/raw,�>

Accuracy/__raw_  �?

Accuracy �q?v�(�Z       o��	�/[���A�*L

Loss)X�>

Adam/Loss/rawr�>

Accuracy/__raw_  �?

Accuracy�7s?��Z       o��	�0[���A�*L

Loss��>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�~t?v�Z       o��	�40[���A�*L

LossF��>

Adam/Loss/rawMr�>

Accuracy/__raw_  �?

Accuracys�u?Z�:Z       o��	>[0[���A�*L

Loss-��>

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracy��v?���Z       o��	}z0[���A�*L

Loss���>

Adam/Loss/raw���@

Accuracy/__raw_  �>

Accuracy�it?���1Z       o��	w�0[���A�*L

Loss5O�?

Adam/Loss/raw���>

Accuracy/__raw_  �?

AccuracyD_b?�rfZ       o��	��0[���A�*L

Loss �?

Adam/Loss/rawAW�>

Accuracy/__raw_  �?

Accuracy�Ue?r���Z       o��	�0[���A�*L

Loss�t�?

Adam/Loss/raw�Y�>

Accuracy/__raw_  �?

Accuracy] h?u}vZ       o��	��0[���A�*L

LossX�n?

Adam/Loss/raw\��>

Accuracy/__raw_  `?

Accuracy�fj?
�r'Z       o��	�1[���A�*L

Loss��b?

Adam/Loss/raw�[�>

Accuracy/__raw_  �?

Accuracyt\i?7ٻ^Z       o��	_(1[���A�*L

Loss[�T?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�k?�&��Z       o��	�C1[���A�*L

Loss3aH?

Adam/Loss/raw@��>

Accuracy/__raw_  �?

Accuracy��m?�C�Z       o��	J]1[���A�*L

LossdE=?

Adam/Loss/rawbh�>

Accuracy/__raw_  �?

Accuracyo? +�AZ       o��	lv1[���A�*L

Loss�C3?

Adam/Loss/raw[S�>

Accuracy/__raw_  `?

Accuracy�%q?��1�Z       o��	B�1[���A�*L

Loss�,?

Adam/Loss/raw�\�>

Accuracy/__raw_  �?

Accuracy�no?n��Z       o��	>�1[���A�*L

LossiR&?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�q?�e&kZ       o��	��1[���A�*L

Loss��?

Adam/Loss/raw��?

Accuracy/__raw_�m[?

Accuracyu�r?�j]Z       o��	��1[���A�*L

Loss��?

Adam/Loss/raw�x?

Accuracy/__raw_�m[?

Accuracy�Cp?n?Z       o��	W
2[���A�*L

Loss3I?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy`.n?;{	�Z       o��	c%2[���A�*L

Loss9�?

Adam/Loss/rawТ�>

Accuracy/__raw_  �?

Accuracy��o?���;Z       o��	�A2[���A�*L

Loss�?

Adam/Loss/raw޴>

Accuracy/__raw_  �?

Accuracy�q?�AռZ       o��	d2[���A�*L

Loss��	?

Adam/Loss/raw�W�>

Accuracy/__raw_  �?

Accuracy�s?AC��Z       o��	��2[���A�*L

Loss�=?

Adam/Loss/raw�Ƹ>

Accuracy/__raw_  �?

AccuracyOt?�~Z       o��	Y�2[���A�*L

Loss�'?

Adam/Loss/raw�m�>

Accuracy/__raw_  �?

Accuracyizu?<elZ       o��	��2[���A�*L

Loss���>

Adam/Loss/raw�\?

Accuracy/__raw_  `?

AccuracyŇv?O_*'Z       o��	��2[���A�*L

Loss���>

Adam/Loss/rawx$�>

Accuracy/__raw_  `?

Accuracy�Ft?!B^Z       o��	;�2[���A�*L

Loss���>

Adam/Loss/raw��~>

Accuracy/__raw_  �?

Accuracy�?r?��+Z       o��	33[���A�*L

Loss-Z�>

Adam/Loss/raw�5}>

Accuracy/__raw_  �?

Accuracy�s?yt�EZ       o��	�23[���A�*L

Losst-�>

Adam/Loss/raw�v�>

Accuracy/__raw_  �?

Accuracy��t?��Z       o��	�N3[���A�*L

Loss+��>

Adam/Loss/raw^A

Accuracy/__raw_    

Accuracy��u?/aZ       o��	�h3[���A�*L

Loss7o�?

Adam/Loss/raw̡�>

Accuracy/__raw_  �?

Accuracy�`]?���Z       o��		�3[���A�*L

Loss���?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy,�`?���Z       o��	Ϡ3[���A�*L

Loss���?

Adam/Loss/raw'��>

Accuracy/__raw_  �?

Accuracy��c?l�հZ       o��		�3[���A�*L

LossV�?

Adam/Loss/raw3Ժ>

Accuracy/__raw_  �?

Accuracy��f?��~Z       o��	X�3[���A�*L

Loss�Ձ?

Adam/Loss/raw�O?

Accuracy/__raw_  `?

Accuracy�Hi?�奂Z       o��	��3[���A�*L

Loss�x?

Adam/Loss/rawS�>

Accuracy/__raw_  �?

Accuracy4[h?m�Z       o��	L4[���A�*L

Loss�h?

Adam/Loss/raw���>

Accuracy/__raw_�m[?

Accuracy|�j?�KJ)Z       o��	D24[���A�*L

Loss�'^?

Adam/Loss/raw}��>

Accuracy/__raw_�m[?

Accuracy1i?����Z       o��	K4[���A�*L

Loss��T?

Adam/Loss/raw�6�>

Accuracy/__raw_  �?

Accuracy��g?Ī�Z       o��	�k4[���A�*L

Loss�I?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�;j?EZ��Z       o��	�4[���A�*L

Loss��<?

Adam/Loss/raw4p ?

Accuracy/__raw_  `?

Accuracyil?h���Z       o��	��4[���A�*L

Loss��6?

Adam/Loss/raw�/�>

Accuracy/__raw_  �?

AccuracyT+k?�IZ       o��	"�4[���A�*L

Lossr/?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�@m?6
SZ       o��	y�4[���A�*L

Loss�(?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy� o?8F�AZ       o��	5[���A�*L

Loss!?

Adam/Loss/rawD�>

Accuracy/__raw_  �?

Accuracy{�p?�V�3Z       o��	N(5[���A�*L

Loss:t?

Adam/Loss/raw*��>

Accuracy/__raw_  �?

Accuracy<Ur?�|�lZ       o��	B5[���A�*L

Loss�M?

Adam/Loss/raw�F�>

Accuracy/__raw_  �?

Accuracy�s?�S��Z       o��	B\5[���A�*L

Losst�?

Adam/Loss/raw/ո>

Accuracy/__raw_  �?

Accuracy �t?�><�Z       o��	�w5[���A�*L

LossD�?

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracyf	v?�n�.Z       o��	K�5[���A�*L

Loss�?

Adam/Loss/raw⹁>

Accuracy/__raw_  �?

AccuracyB�s?��rWZ       o��	T�5[���A�*L

LossJ� ?

Adam/Loss/raw�~�>

Accuracy/__raw_  �?

Accuracy�u?~��9Z       o��	��5[���A�*L

Loss/��>

Adam/Loss/raw��?

Accuracy/__raw_�m[?

Accuracy%v?���,Z       o��	��5[���A�*L

Loss3�>

Adam/Loss/raw>u?

Accuracy/__raw_�m[?

Accuracy ys?�)m�Z       o��	6[���A�*L

LossW?

Adam/Loss/raw6�>

Accuracy/__raw_  �?

Accuracy�q?�bZ       o��	^/6[���A�*L

Loss�n�>

Adam/Loss/raw?��>

Accuracy/__raw_  �?

Accuracyӏr?�qAZ       o��	�N6[���A�*L

LossZ��>

Adam/Loss/rawס�>

Accuracy/__raw_  �?

Accuracy��s?֝�Z       o��	&r6[���A�*L

Lossͫ�>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracyvu?�-Z       o��	��6[���A�*L

Loss���>

Adam/Loss/raw�_�>

Accuracy/__raw_  �?

Accuracy4v?9|5Z       o��	��6[���A�*L

LossJ��>

Adam/Loss/raw�@�>

Accuracy/__raw_  �?

Accuracy�.w?�5�CZ       o��	K�6[���A�*L

Loss�c�>

Adam/Loss/raw�?

Accuracy/__raw_  `?

Accuracy�x?rV�Z       o��	 �6[���A�*L

Lossdc�>

Adam/Loss/raw�	�>

Accuracy/__raw_  �?

Accuracy��u?�xN�Z       o��	�	7[���A�*L

Loss�@�>

Adam/Loss/raw�|>

Accuracy/__raw_  �?

AccuracyL�v?\EnZ       o��	 (7[���A�*L

Loss�;�>

Adam/Loss/raw�W{>

Accuracy/__raw_  �?

Accuracy��w?{���Z       o��	�B7[���A�*L

Loss��>

Adam/Loss/raw��?

Accuracy/__raw_  `?

Accuracyvx?�r�MZ       o��	�_7[���A�*L

Loss��>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�v?����Z       o��	��7[���A�*L

LossT�>

Adam/Loss/raw�^>

Accuracy/__raw_  �?

Accuracynw?;�ĲZ       o��	��7[���A�*L

Loss���>

Adam/Loss/raw��?

Accuracy/__raw_�m[?

Accuracy}�w?09�MZ       o��	��7[���A�*L

Loss���>

Adam/Loss/rawC�?

Accuracy/__raw_�m[?

AccuracyPu?i�f"Z       o��	��7[���A�*L

Loss�K�>

Adam/Loss/raw�"�>

Accuracy/__raw_  �?

Accuracy�r?]y�Z       o��	��7[���A�	*L

LossRa�>

Adam/Loss/raw�H�>

Accuracy/__raw_  �?

Accuracy��s?+xa�Z       o��	j8[���A�	*L

Loss��>

Adam/Loss/rawϣ�>

Accuracy/__raw_  `?

Accuracy�u?2<0tZ       o��	�-8[���A�	*L

Loss��>

Adam/Loss/rawƋ>

Accuracy/__raw_  �?

Accuracyi�r?+�0�Z       o��	�F8[���A�	*L

LossB?�>

Adam/Loss/raw;�>

Accuracy/__raw_  �?

AccuracyECt?W���Z       o��	�b8[���A�	*L

Loss��>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�ou?tQ�Z       o��	�8[���A�	*L

Loss5��>

Adam/Loss/raw'�>

Accuracy/__raw_  �?

Accuracy+~v?*�o�Z       o��	��8[���A�	*L

Lossc�>

Adam/Loss/raw�p?

Accuracy/__raw_  `?

Accuracy�qw?V��Z       o��	_�8[���A�	*L

Loss���>

Adam/Loss/raw�y3>

Accuracy/__raw_  �?

Accuracyeu?��_Z       o��	��8[���A�	*L

Losst��>

Adam/Loss/raw#�2>

Accuracy/__raw_  �?

Accuracyu0v?�+,RZ       o��	�8[���A�	*L

Loss���>

Adam/Loss/rawh,�>

Accuracy/__raw_  �?

Accuracy�+w?���Z       o��	�9[���A�	*L

Loss�q�>

Adam/Loss/raw8
�>

Accuracy/__raw_  �?

Accuracy�x?\��Z       o��	5)9[���A�	*L

Loss4�>

Adam/Loss/rawE�>

Accuracy/__raw_  �?

Accuracy�x?��,Z       o��	�D9[���A�	*L

LossOO�>

Adam/Loss/raw��W>

Accuracy/__raw_  �?

Accuracy-�y?7}�Z       o��	�`9[���A�	*L

Loss�'�>

Adam/Loss/raw?MV>

Accuracy/__raw_  �?

Accuracy�4z?E#�Z       o��	�9[���A�	*L

Lossy��>

Adam/Loss/raw�$?

Accuracy/__raw_  `?

AccuracyC�z?���;Z       o��	�9[���A�	*L

Loss��>

Adam/Loss/rawbA�>

Accuracy/__raw_  �?

Accuracy�x?]$?Z       o��	<�9[���A�	*L

Loss7E�>

Adam/Loss/raw7?

Accuracy/__raw_  `?

Accuracy��x?'�;�Z       o��	8�9[���A�	*L

Loss�b�>

Adam/Loss/raw��M>

Accuracy/__raw_  �?

Accuracy9hv?M:��Z       o��	/�9[���A�	*L

Loss��>

Adam/Loss/raw�L>

Accuracy/__raw_  �?

Accuracy�]w?Z�u�Z       o��	r:[���A�	*L

LossE�>

Adam/Loss/raw�H�>

Accuracy/__raw_  �?

Accuracy�:x?���Z       o��	@3:[���A�	*L

LossdŬ>

Adam/Loss/rawP<�>

Accuracy/__raw_  �?

Accuracy�y?.t|�Z       o��	'P:[���A�	*L

Loss�j�>

Adam/Loss/rawL�?

Accuracy/__raw_  `?

AccuracyĴy?mZ�pZ       o��	�l:[���A�	*L

Lossb�>

Adam/Loss/rawᴜ>

Accuracy/__raw_  �?

Accuracy�"w?�3�Z       o��	��:[���A�	*L

Loss���>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�x?e4Z       o��	~�:[���A�	*L

Loss<�>

Adam/Loss/rawy��>

Accuracy/__raw_  �?

Accuracy��x?V�['Z       o��	��:[���A�	*L

Loss�L�>

Adam/Loss/raw�tn>

Accuracy/__raw_  �?

Accuracy��y?�9Z       o��	��:[���A�	*L

Loss�d�>

Adam/Loss/raw"�>

Accuracy/__raw_  �?

Accuracy/z?�ggZ       o��	� ;[���A�	*L

Lossc�>

Adam/Loss/rawY>

Accuracy/__raw_  �?

Accuracy��z?kT�/Z       o��	�#;[���A�	*L

Loss&�>

Adam/Loss/raw�WX>

Accuracy/__raw_  �?

Accuracy�I{?귳Z       o��	�B;[���A�	*L

Loss�٤>

Adam/Loss/raw�`�>

Accuracy/__raw_  �?

Accuracy��{?��-?Z       o��	xc;[���A�	*L

Loss�M�>

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy#/|?��.Z       o��	�;[���A�	*L

Loss"@�>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy�]y?�fs�Z       o��	r�;[���A�	*L

Loss�j�>

Adam/Loss/raw&�?

Accuracy/__raw_�m[?

Accuracyvz?�o�`Z       o��	r�;[���A�	*L

Loss|_�>

Adam/Loss/raw��?

Accuracy/__raw_�m[?

Accuracy�v?�*\.Z       o��	#�;[���A�	*L

Lossf�>

Adam/Loss/rawP�q>

Accuracy/__raw_  �?

Accuracy7t?J+�Z       o��	�;[���A�	*L

Loss���>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�du?�w�Z       o��	O <[���A�	*L

Loss	�>

Adam/Loss/raw���>

Accuracy/__raw_  �?

AccuracyEtv?�� �Z       o��	�@<[���A�	*L

Loss�4�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�hw?*~0�Z       o��	{i<[���A�	*L

Loss�_�>

Adam/Loss/raws��>

Accuracy/__raw_  �?

Accuracy�Dx?���Z       o��	��<[���A�	*L

Loss�>

Adam/Loss/rawW� ?

Accuracy/__raw_  `?

Accuracy�
y?J��TZ       o��	�<[���A�	*L

Loss�G�>

Adam/Loss/raw?�p>

Accuracy/__raw_  �?

Accuracyy�v?��Z       o��	1�<[���A�	*L

Loss��>

Adam/Loss/rawI��>

Accuracy/__raw_  �?

Accuracy�{w?.6yZ       o��	�<[���A�	*L

Loss���>

Adam/Loss/rawB�Y>

Accuracy/__raw_  �?

Accuracy�Ux?�IZ       o��	e=[���A�	*L

Loss���>

Adam/Loss/raw>fW>

Accuracy/__raw_  �?

Accuracy�y?�U�Z       o��	�>=[���A�	*L

Loss�f�>

Adam/Loss/rawz��>

Accuracy/__raw_  �?

Accuracy��y?e\��Z       o��	b=[���A�	*L

LossB�>

Adam/Loss/rawׯ�>

Accuracy/__raw_  `?

Accuracy�iz?��\KZ       o��	U�=[���A�	*L

Loss��>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy_�w?��|Z       o��	�=[���A�	*L

LossrN�>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy	�x?��֧Z       o��	\�=[���A�	*L

LossG��>

Adam/Loss/rawC��>

Accuracy/__raw_  �?

Accuracy�Uy?�7	3Z       o��	��=[���A�	*L

Losszn�>

Adam/Loss/raw]�>

Accuracy/__raw_  `?

AccuracyE z?�셡Z       o��	��=[���A�	*L

LossW��>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�fw?�w�Z       o��	a>[���A�	*L

Loss�>

Adam/Loss/raw�V�>

Accuracy/__raw_  �?

Accuracy�Bx?k��kZ       o��	�7>[���A�	*L

Loss�e�>

Adam/Loss/raw�6�>

Accuracy/__raw_  �?

Accuracy�y?�1-�Z       o��	/R>[���A�	*L

Loss�-�>

Adam/Loss/raw�a�>

Accuracy/__raw_  �?

Accuracy5�y?=��Z       o��	'l>[���A�	*L

Lossg�>

Adam/Loss/rawB��>

Accuracy/__raw_  `?

Accuracy�[z?��uhZ       o��	ӆ>[���A�	*L

Loss0ݯ>

Adam/Loss/rawH)�>

Accuracy/__raw_  �?

Accuracy�w?wKxZ       o��	�>[���A�	*L

Loss��>

Adam/Loss/raw�E�>

Accuracy/__raw_  `?

AccuracyԌx?�)Z       o��	F�>[���A�	*L

Loss��>

Adam/Loss/rawaY>

Accuracy/__raw_  �?

AccuracyXv?�n$Z       o��	k�>[���A�	*L

Loss���>

Adam/Loss/raw��X>

Accuracy/__raw_  �?

Accuracy�w?s��Z       o��	|?[���A�	*L

LossHi�>

Adam/Loss/raw�T�>

Accuracy/__raw_  �?

Accuracy�w?����Z       o��	N)?[���A�	*L

Loss7g�>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy��x?�U�5Z       o��	�C?[���A�	*L

Loss���>

Adam/Loss/raw�V�>

Accuracy/__raw_  `?

Accuracy[�y?�`G�Z       o��	�^?[���A�	*L

Lossj �>

Adam/Loss/rawU�P>

Accuracy/__raw_  �?

Accuracy��v?#yZ       o��	R|?[���A�	*L

Lossd$�>

Adam/Loss/raw�xO>

Accuracy/__raw_  �?

Accuracy+�w?L,EZ       o��	ˠ?[���A�	*L

Loss0͠>

Adam/Loss/raw��i>

Accuracy/__raw_  �?

Accuracy��x?�<�IZ       o��	w�?[���A�	*L

Loss�j�>

Adam/Loss/rawqj�>

Accuracy/__raw_  �?

AccuracyJgy?7�e�Z       o��	��?[���A�	*L

LossZ��>

Adam/Loss/raw�,�>

Accuracy/__raw_  �?

Accuracy)z?��k#Z       o��	��?[���A�	*L

Lossw)�>

Adam/Loss/raw$�>

Accuracy/__raw_  �?

Accuracy%�z?�c�	Z       o��	@[���A�	*L

LossR�>

Adam/Loss/rawev�>

Accuracy/__raw_  �?

Accuracy�0{?�U�/Z       o��	=(@[���A�	*L

Loss:��>

Adam/Loss/raw�q�>

Accuracy/__raw_  �?

Accuracy	�{?u��Z       o��	B@[���A�	*L

Loss�,�>

Adam/Loss/rawd��>

Accuracy/__raw_  `?

Accuracy�|?�m�;Z       o��	�[@[���A�	*L

Lossr�>

Adam/Loss/raw0X�>

Accuracy/__raw_  �?

AccuracyYKy?�2�yZ       o��	�v@[���A�	*L

Loss�E�>

Adam/Loss/rawŝ�>

Accuracy/__raw_  �?

Accuracy�y?,�sZ       o��	�@[���A�	*L

Lossj��>

Adam/Loss/raw)"�>

Accuracy/__raw_  �?

Accuracy��z?A�CZ       o��	-�@[���A�	*L

Loss}B�>

Adam/Loss/rawEi�>

Accuracy/__raw_  �?

Accuracy�{?h�X�Z       o��	��@[���A�	*L

Loss^F�>

Adam/Loss/rawi��>

Accuracy/__raw_  `?

Accuracy��{?E_�zZ       o��	6�@[���A�	*L

Loss��>

Adam/Loss/raw�Т>

Accuracy/__raw_  �?

Accuracy#�x?�F�Z       o��	�A[���A�	*L

Loss�:�>

Adam/Loss/raw�O>

Accuracy/__raw_  �?

Accuracyl�y?:�f;Z       o��	� A[���A�	*L

LossDܠ>

Adam/Loss/raw��N>

Accuracy/__raw_  �?

Accuracya3z?r�ϔZ       o��	LPA[���A�	*L

Loss`�>

Adam/Loss/raw��?

Accuracy/__raw_  `?

Accuracy��z?Jt�Z       o��	�lA[���A�	*L

Loss+Ŧ>

Adam/Loss/raw�m|>

Accuracy/__raw_  �?

AccuracyAx?u\��Z       o��	��A[���A�	*L

Lossﶢ>

Adam/Loss/raw6�>

Accuracy/__raw_  �?

Accuracyn�x?Ǒ�Z       o��	��A[���A�	*L

Loss@ݟ>

Adam/Loss/raw�X{>

Accuracy/__raw_  �?

Accuracyc�y?D��jZ       o��	��A[���A�	*L

Loss�q�>

Adam/Loss/rawgUz>

Accuracy/__raw_  �?

Accuracy&>z?Иs�Z       o��	��A[���A�	*L

Loss;Q�>

Adam/Loss/rawzD�>

Accuracy/__raw_  `?

Accuracy��z?>���Z       o��	�B[���A�	*L

Loss[��>

Adam/Loss/raw�:A

Accuracy/__raw_    

Accuracy�"x?K`v�Z       o��	�#B[���A�	*L

Loss��?

Adam/Loss/rawD��>

Accuracy/__raw_  `?

Accuracy�R_?{��Z       o��	$BB[���A�	*L

Loss�O�?

Adam/Loss/raw[K�>

Accuracy/__raw_  �?

Accuracyd_?QEZ       o��	}\B[���A�	*L

Lossec�?

Adam/Loss/raw��>

Accuracy/__raw_  �?

AccuracyЦb?}��Z       o��	�uB[���A�	*L

Loss%ڒ?

Adam/Loss/raw\n�>

Accuracy/__raw_  �?

Accuracy"�e?���Z       o��	ŎB[���A�	*L

Loss�?

Adam/Loss/raw�Gw>

Accuracy/__raw_  �?

AccuracyR:h?�� +Z       o��	m�B[���A�	*L

Loss��z?

Adam/Loss/raw�pZ>

Accuracy/__raw_  �?

Accuracy�j?{��Z       o��	e�B[���A�	*L

Loss�/g?

Adam/Loss/raw旅>

Accuracy/__raw_  �?

Accuracy��l?��k�Z       o��	��B[���A�	*L

Loss��V?

Adam/Loss/raw啃>

Accuracy/__raw_  �?

Accuracy��n?�]ٳZ       o��	xC[���A�	*L

Loss��G?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy/gp?���Z       o��	@2C[���A�	*L

Loss�{<?

Adam/Loss/raw-��>

Accuracy/__raw_  `?

Accuracyw�q?K ��Z       o��	�VC[���A�	*L

Loss6?

Adam/Loss/raw(}�>

Accuracy/__raw_  `?

Accuracy�*p?.�1Z       o��	��C[���A�	*L

LossCX.?

Adam/Loss/raw�\�>

Accuracy/__raw_  �?

Accuracy��n?؍�sZ       o��	]�C[���A�	*L

LossF�%?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy{Kp?��I3Z       o��	��C[���A�	*L

Loss/?

Adam/Loss/raw�8�>

Accuracy/__raw_  �?

Accuracy��q?��s�Z       o��	Q�C[���A�	*L

Lossg�?

Adam/Loss/raw쏀>

Accuracy/__raw_  �?

AccuracyaGs?s��Z       o��	ZD[���A�	*L

LossuW?

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy�t?��i�Z       o��	w,D[���A�	*L

Loss��?

Adam/Loss/raw�<\>

Accuracy/__raw_  �?

Accuracy�~r?�2��Z       o��	sGD[���A�	*L

Loss`^?

Adam/Loss/rawˌ[>

Accuracy/__raw_  �?

Accuracy��s?��B\Z       o��	�dD[���A�	*L

Loss�p�>

Adam/Loss/raw��r>

Accuracy/__raw_  �?

Accuracy�u?�ьZ       o��	(�D[���A�	*L

Loss���>

Adam/Loss/rawW�>

Accuracy/__raw_  �?

Accuracy�'v?uZ	�Z       o��	R�D[���A�	*L

Lossv��>

Adam/Loss/rawr�>

Accuracy/__raw_  `?

Accuracy�#w?�]gNZ       o��	b�D[���A�	*L

LossS-�>

Adam/Loss/raw�RF>

Accuracy/__raw_  �?

Accuracyq�t?K��1Z       o��	f�D[���A�	*L

Loss�F�>

Adam/Loss/raw F>

Accuracy/__raw_  �?

Accuracy�u?��*Z       o��	E[���A�	*L

Loss��>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��v?��Z       o��	�E[���A�	*L

Loss�a�>

Adam/Loss/rawۦ>

Accuracy/__raw_  �?

Accuracy��w?�"��Z       o��	�:E[���A�	*L

Loss!�>

Adam/Loss/raw;n�>

Accuracy/__raw_  `?

Accuracy0�x?W���Z       o��	XVE[���A�	*L

Loss^B�>

Adam/Loss/rawY�>

Accuracy/__raw_  �?

Accuracy�3v?�*��Z       o��	rpE[���A�	*L

Lossݻ�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�.w?�eSZ       o��	e�E[���A�	*L

Loss�+�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy@x?N�@|Z       o��	@�E[���A�	*L

Loss)��>

Adam/Loss/raw �d>

Accuracy/__raw_  �?

Accuracym�x?��h�Z       o��	�E[���A�	*L

Loss&�>

Adam/Loss/raw���>

Accuracy/__raw_  `?

AccuracyI�y?m��Z       o��	��E[���A�	*L

Loss0t�>

Adam/Loss/raw�Ę>

Accuracy/__raw_  �?

Accuracy�w?��Z       o��	�F[���A�	*L

Loss��>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy��w?��
LZ       o��	�2F[���A�	*L

Loss���>

Adam/Loss/raw.�>

Accuracy/__raw_  �?

Accuracy��x?c{Z       o��	�VF[���A�	*L

Loss�>

Adam/Loss/rawF}b>

Accuracy/__raw_  �?

Accuracysy?͋�Z       o��	2tF[���A�	*L

Loss�i�>

Adam/Loss/rawv�>

Accuracy/__raw_  `?

Accuracy�z?��8�Z       o��	��F[���A�	*L

Loss���>

Adam/Loss/raw�ח>

Accuracy/__raw_  �?

Accuracyy~w?��Z       o��	�F[���A�	*L

Loss[�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy:Xx?B�Z       o��	e�F[���A�	*L

Loss٫>

Adam/Loss/rawr�K>

Accuracy/__raw_  �?

Accuracy4y?Rj4�Z       o��	��F[���A�	*L

Lossrڤ>

Adam/Loss/raw#��>

Accuracy/__raw_  �?

Accuracy��y?*�U	Z       o��	S	G[���A�	*L

LossjѤ>

Adam/Loss/raw<��>

Accuracy/__raw_  �?

AccuracySkz?���Z       o��	�*G[���A�	*L

Loss�1�>

Adam/Loss/rawϏo>

Accuracy/__raw_  �?

Accuracy1�z?a�(Z       o��	4HG[���A�
*L

Loss�ڞ>

Adam/Loss/raw-bn>

Accuracy/__raw_  �?

Accuracy�z{?=��^Z       o��	�fG[���A�
*L

Loss<�>

Adam/Loss/rawރ�>

Accuracy/__raw_  �?

Accuracy�{?��JXZ       o��	��G[���A�
*L

Loss��>

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracy�V|?�3eZ       o��	�G[���A�
*L

Loss梠>

Adam/Loss/raw� �>

Accuracy/__raw_  �?

Accuracy/�y?���Z       o��	��G[���A�
*L

Loss}_�>

Adam/Loss/rawUt�>

Accuracy/__raw_  �?

Accuracyw'z?���]Z       o��	�G[���A�
*L

Loss�a�>

Adam/Loss/raw犨>

Accuracy/__raw_  �?

Accuracy�z?��PZ       o��	��G[���A�
*L

Loss�2�>

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracy�C{?���0Z       o��	�H[���A�
*L

LossY��>

Adam/Loss/raw�n>

Accuracy/__raw_  �?

AccuracyӉx?�ڴUZ       o��	Z*H[���A�
*L

Loss�l�>

Adam/Loss/raw}ڬ>

Accuracy/__raw_  �?

Accuracy�Hy?�+�Z       o��	tEH[���A�
*L

Loss̪�>

Adam/Loss/raw�ov>

Accuracy/__raw_  �?

Accuracy��y?�1Z       o��	(eH[���A�
*L

Loss�ҝ>

Adam/Loss/rawNu>

Accuracy/__raw_  �?

Accuracy{�z?���Z       o��	�H[���A�
*L

Loss�J�>

Adam/Loss/rawބX>

Accuracy/__raw_  �?

Accuracy�{?��t{Z       o��	�H[���A�
*L

Loss���>

Adam/Loss/raw�r�>

Accuracy/__raw_  `?

Accuracy�{?� Z       o��	ǹH[���A�
*L

Loss�ݜ>

Adam/Loss/rawK��>

Accuracy/__raw_  �?

Accuracy��x?QM��Z       o��	��H[���A�
*L

Loss�$�>

Adam/Loss/raw�vE>

Accuracy/__raw_  �?

Accuracy�y?��tZ       o��	pI[���A�
*L

Loss��>

Adam/Loss/raw��D>

Accuracy/__raw_  �?

Accuracy.2z?����Z       o��	v6I[���A�
*L

Loss3��>

Adam/Loss/rawQ�E>

Accuracy/__raw_  �?

Accuracy��z?~|Z       o��	fI[���A�
*L

Loss�>

Adam/Loss/raw}=?

Accuracy/__raw_  `?

Accuracy|L{?����Z       o��	�I[���A�
*L

Loss�	�>

Adam/Loss/raw�S>

Accuracy/__raw_  �?

Accuracy��x?�Jm�Z       o��	ڭI[���A�
*L

Loss0�>

Adam/Loss/rawf��>

Accuracy/__raw_  �?

Accuracy�Oy?�z�Z       o��	��I[���A�
*L

Loss��>

Adam/Loss/rawR��>

Accuracy/__raw_  �?

Accuracy�y?�<S�Z       o��	��I[���A�
*L

Lossѭ�>

Adam/Loss/raw#L�>

Accuracy/__raw_  �?

Accuracy-�z?��#5Z       o��	�J[���A�
*L

Losss��>

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy�{?.�Z       o��	&J[���A�
*L

Lossߚ>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracyyix?�Qk�Z       o��	�:J[���A�
*L

LossL��>

Adam/Loss/rawn�V>

Accuracy/__raw_  �?

Accuracy�+y?^���Z       o��	GVJ[���A�
*L

Loss=0�>

Adam/Loss/raw�T>

Accuracy/__raw_  �?

Accuracy��y?+~�Z       o��	�pJ[���A�
*L

Losshˑ>

Adam/Loss/rawԳ�>

Accuracy/__raw_  `?

Accuracy�wz?�q�Z       o��	ʉJ[���A�
*L

Losss/�>

Adam/Loss/rawF6e>

Accuracy/__raw_  �?

AccuracyO�w?��PyZ       o��	��J[���A�
*L

Loss8:�>

Adam/Loss/raw�F>

Accuracy/__raw_  �?

Accuracy��x?p��Z       o��	��J[���A�
*L

Loss1$�>

Adam/Loss/raw��b>

Accuracy/__raw_  �?

Accuracy`y?��T�Z       o��	��J[���A�
*L

Loss��>

Adam/Loss/raw��a>

Accuracy/__raw_  �?

Accuracy�	z?���Z       o��	��J[���A�
*L

Loss��>

Adam/Loss/rawr�?

Accuracy/__raw_  `?

AccuracyU�z?�}pNZ       o��	�K[���A�
*L

Loss�C�>

Adam/Loss/rawꁁ>

Accuracy/__raw_  �?

Accuracy��w?�G��Z       o��	�3K[���A�
*L

Loss��>

Adam/Loss/raw��G>

Accuracy/__raw_  �?

Accuracy�x?�f�UZ       o��	�TK[���A�
*L

Loss�,�>

Adam/Loss/rawW?

Accuracy/__raw_�m[?

Accuracyy?Ԉ��Z       o��	~qK[���A�
*L

LossDӟ>

Adam/Loss/raw�?

Accuracy/__raw_�m[?

AccuracyP}v?��Z       o��	��K[���A�
*L

Lossu٭>

Adam/Loss/raw�ng>

Accuracy/__raw_  �?

Accuracy��s?nZ       o��	��K[���A�
*L

LossA	�>

Adam/Loss/raw�eS>

Accuracy/__raw_  �?

AccuracyLu?�b6"Z       o��	��K[���A�
*L

Lossj͡>

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy�v?��*Z       o��	��K[���A�
*L

Loss:�>

Adam/Loss/raw�(e>

Accuracy/__raw_  �?

Accuracy��s?����Z       o��	��K[���A�
*L

Loss���>

Adam/Loss/raw@�d>

Accuracy/__raw_  �?

Accuracy�u?+@uDZ       o��	{L[���A�
*L

Loss��>

Adam/Loss/raw�=i>

Accuracy/__raw_  �?

Accuracy�1v?��!�Z       o��	s*L[���A�
*L

Loss�ę>

Adam/Loss/rawg�>

Accuracy/__raw_  �?

Accuracy�,w?�<m�Z       o��	�EL[���A�
*L

Loss};�>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�x?����Z       o��	�fL[���A�
*L

Loss�>

Adam/Loss/rawߘ�>

Accuracy/__raw_�m[?

Accuracy�x?�0��Z       o��	��L[���A�
*L

Loss^Ğ>

Adam/Loss/raw��>

Accuracy/__raw_�m[?

Accuracy��u?x=Z       o��	؟L[���A�
*L

Lossҙ�>

Adam/Loss/raw�WW>

Accuracy/__raw_  �?

Accuracy�Bs?����Z       o��	A�L[���A�
*L

Loss7��>

Adam/Loss/raw�ʀ>

Accuracy/__raw_  �?

Accuracy��t?k�2�Z       o��	J�L[���A�
*L

Loss0��>

Adam/Loss/raw��w>

Accuracy/__raw_  �?

Accuracy|�u?�:��Z       o��	B�L[���A�
*L

Loss�)�>

Adam/Loss/raw�s�>

Accuracy/__raw_�m[?

Accuracy��v?�:��Z       o��	W
M[���A�
*L

LossF1�>

Adam/Loss/raw���>

Accuracy/__raw_�m[?

Accuracy%�s?.��Z       o��	p$M[���A�
*L

Loss]�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��q?+N�Z       o��	@M[���A�
*L

Loss{�>

Adam/Loss/raw�S>

Accuracy/__raw_  �?

Accuracy��r?b�<�Z       o��	�hM[���A�
*L

Loss�>

Adam/Loss/raw�G>

Accuracy/__raw_  �?

Accuracy[Gt?���Z       o��	>�M[���A�
*L

Loss��>

Adam/Loss/raw*�>

Accuracy/__raw_  �?

Accuracylsu?�<Z       o��	ɰM[���A�
*L

Loss-�>

Adam/Loss/rawz�>

Accuracy/__raw_  �?

Accuracy{�v?���*Z       o��	��M[���A�
*L

Loss�'�>

Adam/Loss/raw�A�>

Accuracy/__raw_  `?

Accuracy�tw?4H�Z       o��	��M[���A�
*L

Lossɐ�>

Adam/Loss/raw�Ls>

Accuracy/__raw_  �?

Accuracyu?k�*Z       o��	�N[���A�
*L

Loss�ߚ>

Adam/Loss/raw�N�>

Accuracy/__raw_  `?

Accuracy�2v?��y6Z       o��	J%N[���A�
*L

LossAѣ>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy��s?�r�&Z       o��	!@N[���A�
*L

LosseJ�>

Adam/Loss/raw�$�>

Accuracy/__raw_  �?

AccuracyS.u?X��zZ       o��	l[N[���A�
*L

Lossh�>

Adam/Loss/raw4ht>

Accuracy/__raw_  �?

AccuracyKCv?�RXZ       o��	�{N[���A�
*L

Loss���>

Adam/Loss/rawF� >

Accuracy/__raw_  �?

Accuracy�<w?R��`Z       o��	�N[���A�
*L

Loss�D�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�x?��n�Z       o��	8�N[���A�
*L

Loss�>

Adam/Loss/rawE�">

Accuracy/__raw_  �?

Accuracy��x?pCsZ       o��	��N[���A�
*L

Lossג�>

Adam/Loss/raw��!>

Accuracy/__raw_  �?

Accuracy��y?�Q�8Z       o��	4�N[���A�
*L

Loss�˄>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy@z?���`Z       o��	�O[���A�
*L

Loss���>

Adam/Loss/raw���>

Accuracy/__raw_  `?

AccuracyF�z?��d�Z       o��	9)O[���A�
*L

LossxZ�>

Adam/Loss/raw�bL>

Accuracy/__raw_  �?

Accuracy�$x?x!�}Z       o��	lCO[���A�
*L

Loss�o�>

Adam/Loss/raw.��>

Accuracy/__raw_  �?

Accuracy��x?Xe�Z       o��	S\O[���A�
*L

Loss�)�>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy��y?���lZ       o��	�zO[���A�
*L

LossX؈>

Adam/Loss/rawFD�>

Accuracy/__raw_  `?

Accuracy�Ez?>0EZ       o��	k�O[���A�
*L

Loss�I�>

Adam/Loss/raw��]>

Accuracy/__raw_  �?

Accuracy�w?��Z       o��	��O[���A�
*L

Loss�֍>

Adam/Loss/rawz'�=

Accuracy/__raw_  �?

Accuracy�zx?����Z       o��	��O[���A�
*L

Lossջ�>

Adam/Loss/rawEm�>

Accuracy/__raw_  �?

Accuracy{;y?�oa�Z       o��	PP[���A�
*L

Loss`��>

Adam/Loss/rawg�>

Accuracy/__raw_  �?

Accuracy��y? PZ�Z       o��	m6P[���A�
*L

Losszs�>

Adam/Loss/rawx7�>

Accuracy/__raw_  �?

Accuracy��z?��s�Z       o��	�[P[���A�
*L

Loss�S�>

Adam/Loss/raw�"�>

Accuracy/__raw_  `?

Accuracy�{?Q�ŸZ       o��	#�P[���A�
*L

Loss�N�>

Adam/Loss/raw2�@>

Accuracy/__raw_  �?

Accuracy\x?p��Z       o��	��P[���A�
*L

Lossꟊ>

Adam/Loss/raw�P]>

Accuracy/__raw_  �?

Accuracy�y?<m�Z       o��	A�P[���A�
*L

Loss�Ӈ>

Adam/Loss/raw	�\>

Accuracy/__raw_  �?

Accuracy��y?q�/�Z       o��	b�P[���A�
*L

Loss�F�>

Adam/Loss/raw$v�>

Accuracy/__raw_  `?

Accuracy&nz?��XmZ       o��	
Q[���A�
*L

Loss�d�>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy��w?$�u�Z       o��	�,Q[���A�
*L

Loss{��>

Adam/Loss/raw�Q>

Accuracy/__raw_  �?

Accuracyțx?Q�ܮZ       o��	GQ[���A�
*L

Loss�>

Adam/Loss/raw�e8>

Accuracy/__raw_  �?

AccuracyYy?��LZ       o��	=aQ[���A�
*L

Loss���>

Adam/Loss/raw�|7>

Accuracy/__raw_  �?

AccuracyNz?
Wo'Z       o��	�{Q[���A�
*L

Loss^��>

Adam/Loss/rawڿX>

Accuracy/__raw_  �?

Accuracy��z?�4Z       o��	ЗQ[���A�
*L

Loss}>

Adam/Loss/raw^$�@

Accuracy/__raw_   >

Accuracy�&{?��Z       o��	ȳQ[���A�
*L

Loss��u?

Adam/Loss/rawTt>

Accuracy/__raw_  �?

AccuracyC<e?v3,�Z       o��	��Q[���A�
*L

Loss�]c?

Adam/Loss/rawnN�>

Accuracy/__raw_  �?

Accuracyp�g?W���Z       o��	��Q[���A�
*L

Loss�KS?

Adam/Loss/raw�7�>

Accuracy/__raw_  �?

AccuracyRj?h���Z       o��	�R[���A�
*L

Loss��D?

Adam/Loss/raw$��>

Accuracy/__raw_  `?

Accuracy}l?��Z       o��	K"R[���A�
*L

Loss��<?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracya=k?��*nZ       o��	@R[���A�
*L

Loss�*-?

Adam/Loss/rawc��>

Accuracy/__raw_  �?

Accuracy�Pm?@'��Z       o��	�`R[���A�
*L

Loss.�"?

Adam/Loss/raw6�'>

Accuracy/__raw_  �?

Accuracy(/o?׉�Z       o��	$}R[���A�
*L

Loss��?

Adam/Loss/raw�?'>

Accuracy/__raw_  �?

Accuracy��p?�R:�Z       o��	�R[���A�
*L

Loss�?

Adam/Loss/raw�O>

Accuracy/__raw_  �?

Accuracyar?ި�$Z       o��	|�R[���A�
*L

LossR�?

Adam/Loss/raw4��>

Accuracy/__raw_  `?

AccuracyŽs?�(�2Z       o��	��R[���A�
*L

Lossf?

Adam/Loss/raw�q�>

Accuracy/__raw_  �?

Accuracyd�q?��Z       o��	��R[���A�
*L

Lossn�>

Adam/Loss/rawq�L>

Accuracy/__raw_  �?

Accuracy�0s?�j2Z       o��	�	S[���A�
*L

Loss���>

Adam/Loss/raw~aL>

Accuracy/__raw_  �?

Accuracy�xt?r+m�Z       o��	/2S[���A�
*L

Loss���>

Adam/Loss/raw� B>

Accuracy/__raw_  �?

Accuracyϟu?N�-�Z       o��	�OS[���A�
*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracyn�v?�hZ       o��	]jS[���A�
*L

Loss��>

Adam/Loss/raw�<H>

Accuracy/__raw_  �?

AccuracyIet?��&Z       o��	
�S[���A�
*L

Loss�%�>

Adam/Loss/raw	3O>

Accuracy/__raw_  �?

Accuracy[�u?��`AZ       o��	'�S[���A�
*L

Lossb�>

Adam/Loss/raw�ZN>

Accuracy/__raw_  �?

Accuracy��v?Z���Z       o��	I�S[���A�
*L

LossG��>

Adam/Loss/raw�=9>

Accuracy/__raw_  �?

AccuracyY�w?�A�Z       o��	U�S[���A�
*L

Loss<�>

Adam/Loss/raw�.�>

Accuracy/__raw_  `?

Accuracy�bx?�Q�&Z       o��	�S[���A�
*L

LossG�>

Adam/Loss/rawp( >

Accuracy/__raw_  �?

Accuracy��u?c%�dZ       o��	�T[���A�
*L

LossB�>

Adam/Loss/raw5r�>

Accuracy/__raw_�m[?

Accuracy��v?��b�Z       o��	�2T[���A�
*L

Loss|�>

Adam/Loss/raw���>

Accuracy/__raw_�m[?

AccuracyV3t?P�\Z       o��	�LT[���A�
*L

Loss<��>

Adam/Loss/raw�sl>

Accuracy/__raw_  �?

Accuracy,�q?�F�LZ       o��	keT[���A�
*L

Lossh�>

Adam/Loss/rawjrA

Accuracy/__raw_   >

Accuracy�&s?�?V�Z       o��	��T[���A�
*L

Loss��?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy0	^?b�SZ       o��	��T[���A�
*L

Loss���?

Adam/Loss/raw�>�>

Accuracy/__raw_�m[?

Accuracy�na?Qm4;Z       o��	��T[���A�
*L

Loss�`�?

Adam/Loss/raw�>

Accuracy/__raw_�m[?

Accuracy��`?CGN�Z       o��	��T[���A�
*L

Losst�y?

Adam/Loss/rawjچ>

Accuracy/__raw_  �?

Accuracy�J`?����Z       o��	��T[���A�
*L

Loss�g?

Adam/Loss/raw\X>

Accuracy/__raw_  �?

Accuracybvc?(&��Z       o��	�U[���A�
*L

Loss��U?

Adam/Loss/raw
\>

Accuracy/__raw_  �?

Accuracy�Pf?�H��Z       o��		3U[���A�
*L

Loss�F?

Adam/Loss/raw�G�>

Accuracy/__raw_�m[?

Accuracys�h?1W��Z       o��	OU[���A�
*L

Loss�D>?

Adam/Loss/raw��>

Accuracy/__raw_�m[?

Accuracy��g?�N�YZ       o��	�iU[���A�
*L

Loss97?

Adam/Loss/raw��H>

Accuracy/__raw_  �?

Accuracy�Sf?�⍉Z       o��	��U[���A�
*L

Loss�)?

Adam/Loss/raw�w�@

Accuracy/__raw_  �>

Accuracy(�h?O�Z       o��	^�U[���A�
*L

Loss�٣?

Adam/Loss/raw�ܾ>

Accuracy/__raw_  `?

Accuracy�4[?3r�uZ       o��	b�U[���A�
*L

Loss�<�?

Adam/Loss/rawQ�Q>

Accuracy/__raw_  �?

Accuracy`�[?j��Z       o��	�V[���A�
*L

Loss���?

Adam/Loss/raw��P>

Accuracy/__raw_  �?

Accuracy
Q_?EEcZ       o��	CV[���A�
*L

Loss;H�?

Adam/Loss/raw0LY>

Accuracy/__raw_  �?

Accuracy��b?~dn0Z       o��	eV[���A�
*L

LossWl?

Adam/Loss/rawh]�>

Accuracy/__raw_  �?

AccuracyÆe?��ܸZ       o��	��V[���A�*L

Loss��[?

Adam/Loss/raw�b�>

Accuracy/__raw_  `?

Accuracy|,h?�m(�Z       o��	ΨV[���A�*L

Loss%�O?

Adam/Loss/rawRBE>

Accuracy/__raw_  �?

Accuracy<[g?2�)�Z       o��	�V[���A�*L

Loss�@?

Adam/Loss/raw�D>

Accuracy/__raw_  �?

Accuracy�i?K2D�Z       o��	��V[���A�*L

Loss��1?

Adam/Loss/raw�a>

Accuracy/__raw_  �?

Accuracy�	l?��4yZ       o��	W[���A�*L

Loss�%?

Adam/Loss/rawÂ>

Accuracy/__raw_  �?

Accuracy�n?}.w�Z       o��	�W[���A�*L

Lossp�?

Adam/Loss/raw��j>

Accuracy/__raw_  �?

Accuracy��o?�5�Z       o��	�BW[���A�*L

Lossv�?

Adam/Loss/raw��`>

Accuracy/__raw_  �?

Accuracy�rq?m�C�Z       o��	`W[���A�*L

Lossu�?

Adam/Loss/raw��_>

Accuracy/__raw_  �?

AccuracyD�r?u�G�Z       o��	�yW[���A�*L

Loss�� ?

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy�6t?���Z       o��	ٕW[���A�*L

Loss���>

Adam/Loss/rawa/>

Accuracy/__raw_  �?

Accuracy1r?ڝ�HZ       o��	ްW[���A�*L

Lossf�>

Adam/Loss/raw�b>

Accuracy/__raw_  �?

Accuracy��s?Bt�Z       o��	W�W[���A�*L

Loss��>

Adam/Loss/raw���>

Accuracy/__raw_�m[?

Accuracy��t?�3�Z       o��	��W[���A�*L

Loss���>

Adam/Loss/raw1<�>

Accuracy/__raw_�m[?

Accuracy�Fr?���8Z       o��	1X[���A�*L

Loss�)�>

Adam/Loss/raw;�I>

Accuracy/__raw_  �?

Accuracy��o?+��7Z       o��	�X[���A�*L

Loss;��>

Adam/Loss/raw��A

Accuracy/__raw_   >

Accuracy��q?����Z       o��	CX[���A�*L

Loss���?

Adam/Loss/raw%*>

Accuracy/__raw_  �?

Accuracy$�\?ml�jZ       o��	�cX[���A�*L

Loss��?

Adam/Loss/rawC�>

Accuracy/__raw_�m[?

Accuracy�+`?����Z       o��	b�X[���A�*L

Loss��?

Adam/Loss/raw���>

Accuracy/__raw_�m[?

Accuracy%�_?�Z�}Z       o��	��X[���A�*L

Loss��}?

Adam/Loss/raw%�>

Accuracy/__raw_  �?

Accuracy�D_?u���Z       o��	˾X[���A�*L

Lossn3l?

Adam/Loss/raw�9A

Accuracy/__raw_   >

AccuracyЊb?ڬ�'Z       o��	U�X[���A�*L

Lossګ�?

Adam/Loss/raw�\�>

Accuracy/__raw_  `?

Accuracy�O?^��Z       o��	��X[���A�*L

Loss��?

Adam/Loss/raw�4>

Accuracy/__raw_  �?

Accuracyz�P?�cZ       o��	wY[���A�*L

Lossֺ?

Adam/Loss/rawS<4>

Accuracy/__raw_  �?

AccuracyT�U?\7�Z       o��	�2Y[���A�*L

Loss�g�?

Adam/Loss/raw˘x>

Accuracy/__raw_  �?

AccuracyL�Y?:�Y2Z       o��	!YY[���A�*L

Loss�x�?

Adam/Loss/rawWa^>

Accuracy/__raw_  �?

Accuracyx�]?!n��Z       o��	�uY[���A�*L

LossӚ�?

Adam/Loss/raw!�l>

Accuracy/__raw_  �?

Accuracy�a?p�Z       o��	l�Y[���A�*L

Loss�3�?

Adam/Loss/raw1/&>

Accuracy/__raw_  �?

Accuracy�d?����Z       o��	y�Y[���A�*L

Loss�r?

Adam/Loss/rawz�$>

Accuracy/__raw_  �?

Accuracy��f?:��Z       o��	��Y[���A�*L

Loss&^?

Adam/Loss/raw�^�>

Accuracy/__raw_  `?

Accuracyji?T��Z       o��	��Y[���A�*L

Loss_�Q?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracyyh?Z       o��	Z[���A�*L

LossQD?

Adam/Loss/raw��U>

Accuracy/__raw_  �?

Accuracyb�j?U;<�Z       o��	R&Z[���A�*L

Loss�6?

Adam/Loss/raw.��>

Accuracy/__raw_  �?

Accuracyr�l?��Q*Z       o��	�CZ[���A�*L

LossN@*?

Adam/Loss/raw@�>

Accuracy/__raw_  �?

AccuracyM�n?F1ARZ       o��	JbZ[���A�*L

Loss��?

Adam/Loss/rawQ"�>

Accuracy/__raw_  `?

Accuracy_�p?[6Z       o��	(|Z[���A�*L

Loss,j?

Adam/Loss/rawN�M>

Accuracy/__raw_  �?

AccuracyU�n?�<{�Z       o��	W�Z[���A�*L

Loss�?

Adam/Loss/raw�v:>

Accuracy/__raw_  �?

Accuracy�p?�R�Z       o��	y�Z[���A�*L

Loss�^?

Adam/Loss/raw:�?

Accuracy/__raw_�m[?

Accuracy�'r?�f՞Z       o��	��Z[���A�*L

Losst�?

Adam/Loss/raw�L?

Accuracy/__raw_�m[?

Accuracy��o?�l�NZ       o��	��Z[���A�*L

Loss�p?

Adam/Loss/raw��g>

Accuracy/__raw_  �?

AccuracyI�m?|Ɔ�Z       o��	|[[���A�*L

Loss0��>

Adam/Loss/raw�r!A

Accuracy/__raw_    

AccuracyB�o?*&�|Z       o��	�'[[���A�*L

Loss`Ϲ?

Adam/Loss/raw�"^>

Accuracy/__raw_  �?

Accuracy!�W?�~�Z       o��	�I[[���A�*L

Lossy�?

Adam/Loss/raw@��>

Accuracy/__raw_�m[?

Accuracy�[?���EZ       o��	o[[���A�*L

LossUf�?

Adam/Loss/raw�]�>

Accuracy/__raw_�m[?

Accuracy��[?N���Z       o��	ӈ[[���A�*L

Loss��?

Adam/Loss/raw܆O>

Accuracy/__raw_  �?

Accuracy��[?K��Z       o��	��[[���A�*L

Loss]��?

Adam/Loss/raw�W}>

Accuracy/__raw_  �?

Accuracy/L_?�VQ�Z       o��	��[[���A�*L

Loss�z?

Adam/Loss/raw�>>

Accuracy/__raw_  �?

Accuracy^�b?��D�Z       o��	8�[[���A�*L

Loss.[f?

Adam/Loss/raw[I>

Accuracy/__raw_  �?

AccuracyՂe?�y�Z       o��	�\[���A�*L

Loss�XT?

Adam/Loss/raw�I>

Accuracy/__raw_  �?

Accuracy�(h?r\�Z       o��	�*\[���A�*L

Loss#D?

Adam/Loss/raw�7�>

Accuracy/__raw_  `?

AccuracyA�j?c8|�Z       o��	d[\[���A�*L

Loss��:?

Adam/Loss/rawʒ>

Accuracy/__raw_  �?

AccuracyT}i?�3��Z       o��	��\[���A�*L

Loss�C/?

Adam/Loss/raw#�>

Accuracy/__raw_  `?

Accuracy��k?čj�Z       o��	ڨ\[���A�*L

Loss��&?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy	�j?��4)Z       o��	��\[���A�*L

Loss�?

Adam/Loss/rawbܒ>

Accuracy/__raw_  �?

Accuracy��l?5��qZ       o��	W�\[���A�*L

Loss9?

Adam/Loss/rawiR>>

Accuracy/__raw_  �?

Accuracy��n?���HZ       o��	�][���A�*L

Loss ?

Adam/Loss/rawP(v>

Accuracy/__raw_  �?

Accuracy`p?ci��Z       o��	["][���A�*L

Loss�N?

Adam/Loss/raw45f>

Accuracy/__raw_  �?

Accuracy�q?�f�yZ       o��	WC][���A�*L

Loss���>

Adam/Loss/raw.Ո>

Accuracy/__raw_  �?

AccuracyXs?��vZ       o��	+i][���A�*L

Lossj��>

Adam/Loss/rawQV�>

Accuracy/__raw_  �?

Accuracy�t?$�U�Z       o��	ʌ][���A�*L

Loss���>

Adam/Loss/raw�y�=

Accuracy/__raw_  �?

Accuracy��u?��MZ       o��	D�][���A�*L

Loss5�>

Adam/Loss/raw�kA

Accuracy/__raw_   >

Accuracy�v?K�rZ       o��	&�][���A�*L

Loss�n�?

Adam/Loss/raw�'>

Accuracy/__raw_  �?

Accuracy�Ka?�ћZ       o��	��][���A�*L

Loss���?

Adam/Loss/raw�ى>

Accuracy/__raw_  �?

Accuracy�]d?`�$Z       o��	`^[���A�*L

Loss���?

Adam/Loss/raw���>

Accuracy/__raw_  �?

AccuracyE!g?�9��Z       o��	6!^[���A�*L

Loss;�?

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy�i?��uFZ       o��	�;^[���A�*L

Loss��v?

Adam/Loss/rawã_>

Accuracy/__raw_  �?

Accuracy��h?�1�Z       o��	~V^[���A�*L

Loss�c?

Adam/Loss/raw �b>

Accuracy/__raw_  �?

Accuracy_�j?���Z       o��	}^[���A�*L

Loss;yR?

Adam/Loss/raw(H�>

Accuracy/__raw_  �?

Accuracy<m?e�B�Z       o��	�^[���A�*L

Loss�C?

Adam/Loss/raw %�>

Accuracy/__raw_  �?

AccuracyP�n?�Z       o��	s�^[���A�*L

Lossک6?

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracy��p?N��Z       o��	t�^[���A�*L

LossR�,?

Adam/Loss/raw04�>

Accuracy/__raw_  �?

Accuracy�o?��-Z       o��	_�^[���A�*L

Loss�"?

Adam/Loss/rawq|�>

Accuracy/__raw_  `?

Accuracy��p?�D Z       o��	)	_[���A�*L

Loss�?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�
o?%E�)Z       o��	�"_[���A�*L

Loss�?

Adam/Loss/raw'Z�>

Accuracy/__raw_  �?

Accuracy�p?I���Z       o��	�;_[���A�*L

Loss �?

Adam/Loss/raw�,<>

Accuracy/__raw_  �?

Accuracy�Cr?���/Z       o��	�U_[���A�*L

Loss�?

Adam/Loss/raw��_>

Accuracy/__raw_  �?

AccuracyI�s?��o�Z       o��	�v_[���A�*L

Loss&��>

Adam/Loss/raw��O>

Accuracy/__raw_  �?

Accuracy��t?jبZ       o��	��_[���A�*L

Loss���>

Adam/Loss/raw�AI>

Accuracy/__raw_  �?

Accuracy��u?�n�Z       o��	!�_[���A�*L

Loss!?�>

Adam/Loss/rawyH>

Accuracy/__raw_  �?

Accuracy��v?���QZ       o��	�_[���A�*L

Loss}9�>

Adam/Loss/rawm܂>

Accuracy/__raw_  �?

Accuracy��w?��;WZ       o��	�_[���A�*L

Loss�|�>

Adam/Loss/raw4��@

Accuracy/__raw_   >

AccuracyE�x?+R�2Z       o��	5`[���A�*L

Loss5�?

Adam/Loss/rawv�7>

Accuracy/__raw_  �?

Accuracy�c?aJ�Z       o��	:#`[���A�*L

Loss��p?

Adam/Loss/raw9ir>

Accuracy/__raw_  �?

Accuracy^�e?�D>Z       o��	6>`[���A�*L

Loss�^?

Adam/Loss/raw�Nr>

Accuracy/__raw_  �?

AccuracyՈh?|g9�Z       o��	qX`[���A�*L

Loss�aN?

Adam/Loss/rawJ�K>

Accuracy/__raw_  �?

Accuracy��j?����Z       o��	t`[���A�*L

Loss��>?

Adam/Loss/raw�h�>

Accuracy/__raw_  `?

Accuracy2�l?G�GZZ       o��	�`[���A�*L

Loss�7?

Adam/Loss/raw@:�>

Accuracy/__raw_  �?

Accuracy��k?�ō~Z       o��	ȱ`[���A�*L

Loss�+?

Adam/Loss/raw��>

Accuracy/__raw_�m[?

Accuracyk�m?�>�Z       o��	��`[���A�*L

LossuU%?

Adam/Loss/raw��>

Accuracy/__raw_�m[?

Accuracy�k?@c?pZ       o��	>�`[���A�*L

Loss�?

Adam/Loss/raw��)>

Accuracy/__raw_  �?

Accuracy�?j?	��qZ       o��	(a[���A�*L

Loss?

Adam/Loss/raw�c>

Accuracy/__raw_  �?

Accuracy\ll?̃��Z       o��	*a[���A�*L

Loss��
?

Adam/Loss/rawK�c>

Accuracy/__raw_  �?

Accuracy�an?.Y=Z       o��	Da[���A�*L

LossL�?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�$p?zxI�Z       o��	�^a[���A�*L

Loss,�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��q?���Z       o��	=}a[���A�*L

Loss��>

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy�'s?AR�+Z       o��	��a[���A�*L

Loss"�>

Adam/Loss/rawS��>

Accuracy/__raw_  �?

Accuracyy=q?9N��Z       o��	ݳa[���A�*L

Lossک�>

Adam/Loss/raw��M>

Accuracy/__raw_  �?

AccuracyS�r?V��Z       o��	-�a[���A�*L

Lossjd�>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracydt?�{Z       o��	`�a[���A�*L

Loss�?�>

Adam/Loss/raw�C�>

Accuracy/__raw_  �?

Accuracyt=u?��SZ       o��	(b[���A�*L

Loss$��>

Adam/Loss/rawb(>

Accuracy/__raw_  �?

Accuracy�Pv?���BZ       o��	A.b[���A�*L

Loss��>

Adam/Loss/raw�w�>

Accuracy/__raw_  `?

Accuracy�Hw?�Z       o��	�Qb[���A�*L

Loss	L�>

Adam/Loss/rawѹi>

Accuracy/__raw_  �?

Accuracy��t?7��yZ       o��	�rb[���A�*L

Losst�>

Adam/Loss/raw3v >

Accuracy/__raw_  �?

Accuracyvv?�7�3Z       o��	Z�b[���A�*L

Loss���>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy�w?e��Z       o��	��b[���A�*L

Loss@��>

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy��w?�`�Z       o��	��b[���A�*L

Loss{;�>

Adam/Loss/raw�;{>

Accuracy/__raw_  �?

Accuracyԍu?ϰ|�Z       o��	��b[���A�*L

Loss�^�>

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracy?�v?����Z       o��	�c[���A�*L

Loss��>

Adam/Loss/rawG�y>

Accuracy/__raw_  �?

Accuracy�Vt?ø��Z       o��	�9c[���A�*L

Lossu��>

Adam/Loss/raw�x>

Accuracy/__raw_  �?

Accuracy@�u?/<Z       o��	GXc[���A�*L

Loss7>�>

Adam/Loss/raw<�>

Accuracy/__raw_  �?

Accuracy�v?ع[Z       o��	_yc[���A�*L

Loss4�>

Adam/Loss/raw�@�@

Accuracy/__raw_   >

Accuracy�w?��8�Z       o��	єc[���A�*L

Lossv|?

Adam/Loss/rawNѵ>

Accuracy/__raw_  `?

Accuracy��a?��m�Z       o��	!�c[���A�*L

LossINl?

Adam/Loss/rawZv�>

Accuracy/__raw_  �?

Accuracy�a?}4;Z       o��	��c[���A�*L

Loss`L[?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy\�d?�{�[Z       o��	��c[���A�*L

LossI�K?

Adam/Loss/rawu�?>

Accuracy/__raw_  �?

Accuracy9�g?���NZ       o��	�d[���A�*L

LossK]<?

Adam/Loss/rawS�@

Accuracy/__raw_  �>

Accuracyg�i?���Z       o��	d[���A�*L

LossQ˦?

Adam/Loss/raw��z>

Accuracy/__raw_  �?

Accuracy��X?%j]&Z       o��	�:d[���A�*L

Loss�?�?

Adam/Loss/raw��Z>

Accuracy/__raw_  �?

Accuracy2�\?��-Z       o��	eTd[���A�*L

Loss쨌?

Adam/Loss/raw��Z>

Accuracy/__raw_  �?

Accuracy�_`?�oEZ       o��	/nd[���A�*L

Loss�S�?

Adam/Loss/raw%M�>

Accuracy/__raw_  `?

Accuracyf�c?�|]Z       o��	D�d[���A�*L

Loss�Zs?

Adam/Loss/raw��$>

Accuracy/__raw_  �?

Accuracy�.c?_EZ       o��	v�d[���A�*L

LossY"_?

Adam/Loss/raw�p>

Accuracy/__raw_  �?

Accuracy�f?�UA�Z       o��	�d[���A�*L

Loss��L?

Adam/Loss/rawZ>�>

Accuracy/__raw_  �?

Accuracy��h?�7�Z       o��	D�d[���A�*L

Loss�9??

Adam/Loss/raw�ǋ>

Accuracy/__raw_  �?

Accuracy�j?�h]Z       o��	K e[���A�*L

Loss�3?

Adam/Loss/rawh��>

Accuracy/__raw_  `?

Accuracy�m?�i�mZ       o��	�"e[���A�*L

Loss+�+?

Adam/Loss/raw��P>

Accuracy/__raw_  �?

Accuracy��k?�:F�Z       o��	�=e[���A�*L

Lossd�?

Adam/Loss/raw�<>

Accuracy/__raw_  �?

Accuracy4�m?q ��Z       o��	2Ye[���A�*L

Loss�z?

Adam/Loss/rawB�r>

Accuracy/__raw_  �?

Accuracy��o?�d��Z       o��	ire[���A�*L

Loss��?

Adam/Loss/rawsr>

Accuracy/__raw_  �?

Accuracy0Cq?�ɬ�Z       o��	m�e[���A�*L

Loss��?

Adam/Loss/raw*`�>

Accuracy/__raw_  `?

Accuracyx�r?]��Z       o��	!�e[���A�*L

Loss�E ?

Adam/Loss/raw��@

Accuracy/__raw_   >

Accuracy��p?�ɡZ       o��	p�e[���A�*L

Loss��?

Adam/Loss/raw"D�>

Accuracy/__raw_  `?

Accuracy��[?т�hZ       o��	��e[���A�*L

Loss��?

Adam/Loss/rawk>

Accuracy/__raw_  �?

Accuracy�`\?x)*Z       o��	�f[���A�*L

Loss��k?

Adam/Loss/rawx=>

Accuracy/__raw_  �?

Accuracy��_?p�T�Z       o��	�2f[���A�*L

Loss�7X?

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy�%c?����Z       o��	�Lf[���A�*L

Loss��J?

Adam/Loss/rawk5C>

Accuracy/__raw_  �?

Accuracy6f?�N�Z       o��	Mgf[���A�*L

Loss}7;?

Adam/Loss/raw�Z>

Accuracy/__raw_  �?

Accuracy��h?/���Z       o��	0�f[���A�*L

Loss��-?

Adam/Loss/raw��}>

Accuracy/__raw_  �?

AccuracyJ�j?���Z       o��	(�f[���A�*L

Loss��"?

Adam/Loss/raw��}>

Accuracy/__raw_  �?

Accuracy�m?���Z       o��	̳f[���A�*L

Loss��?

Adam/Loss/raw�0F>

Accuracy/__raw_  �?

Accuracyc�n?�h�$Z       o��	=�f[���A�*L

Loss��?

Adam/Loss/rawU��>

Accuracy/__raw_  `?

Accuracy��p?#�Z       o��	��f[���A�*L

Loss�	?

Adam/Loss/rawVK>

Accuracy/__raw_  �?

Accuracy��n?�'��Z       o��	�g[���A�*L

Losscg�>

Adam/Loss/rawHSq>

Accuracy/__raw_  �?

Accuracy�p?u�@rZ       o��	4g[���A�*L

Loss��>

Adam/Loss/raw��p>

Accuracy/__raw_  �?

Accuracy�:r?�c�rZ       o��	OWg[���A�*L

Loss���>

Adam/Loss/raw"at>

Accuracy/__raw_  �?

AccuracyP�s?�a�Z       o��	~sg[���A�*L

Loss��>

Adam/Loss/raw�i�>

Accuracy/__raw_  `?

Accuracy��t?�سZ       o��	��g[���A�*L

Loss�>

Adam/Loss/raw��d>

Accuracy/__raw_  �?

Accuracy��r?�T�Z       o��	��g[���A�*L

Loss��>

Adam/Loss/raw��a>

Accuracy/__raw_  �?

Accuracy�t?iA��Z       o��	�g[���A�*L

LossU9�>

Adam/Loss/raw�Ia>

Accuracy/__raw_  �?

Accuracy�Fu?&ϐ�Z       o��	j�g[���A�*L

Loss{��>

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracy\Yv?�o�uZ       o��	�h[���A�*L

Loss���>

Adam/Loss/raw�SM>

Accuracy/__raw_  �?

Accuracy9t?�"CZ       o��	Qh[���A�*L

LossF�>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy�Mu?��(Z       o��	Tsh[���A�*L

Loss��>

Adam/Loss/raw�[�>

Accuracy/__raw_�m[?

AccuracyZ_v?��hZ       o��	��h[���A�*L

Loss��>

Adam/Loss/raw���>

Accuracy/__raw_�m[?

Accuracy��s?\f��Z       o��	��h[���A�*L

Loss��>

Adam/Loss/raw�3B>

Accuracy/__raw_  �?

Accuracy�@q?���Z       o��	��h[���A�*L

Loss���>

Adam/Loss/raw�́>

Accuracy/__raw_  �?

AccuracyQ�r?�Z       o��		�h[���A�*L

LossH�>

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracyt?���\Z       o��	Y�h[���A�*L

LossG��>

Adam/Loss/rawWB<>

Accuracy/__raw_  �?

Accuracy�r?���TZ       o��	�i[���A�*L

Loss��>

Adam/Loss/raw۝;>

Accuracy/__raw_  �?

Accuracy�qs?v�Z       o��	>i[���A�*L

Lossv�>

Adam/Loss/raw4�w>

Accuracy/__raw_  �?

Accuracy:�t?~�f�Z       o��	�_i[���A�*L

Loss �>

Adam/Loss/raw�D>

Accuracy/__raw_  �?

Accuracy��u?�K��Z       o��	�|i[���A�*L

Lossi�>

Adam/Loss/raw��*>

Accuracy/__raw_  �?

Accuracy��v?��Z       o��	�i[���A�*L

Loss#8�>

Adam/Loss/raw{4]>

Accuracy/__raw_  �?

Accuracy,�w? �y�Z       o��	��i[���A�*L

LossY(�>

Adam/Loss/raw�9\>

Accuracy/__raw_  �?

Accuracy�x?�
WZ       o��	��i[���A�*L

LossgZ�>

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy�Sy?#�3Z       o��	q�i[���A�*L

Lossy�>

Adam/Loss/raw�Dc>

Accuracy/__raw_  �?

Accuracyv�v?�Y�{Z       o��	�#j[���A�*L

Loss[��>

Adam/Loss/raw�S�>

Accuracy/__raw_  �?

Accuracy�w?��@Z       o��	�Bj[���A�*L

Loss��>

Adam/Loss/raw�q2>

Accuracy/__raw_  �?

Accuracy4�x?-s��Z       o��	�\j[���A�*L

LossCτ>

Adam/Loss/rawі1>

Accuracy/__raw_  �?

AccuracyJy?��DmZ       o��	�xj[���A�*L

Losszh�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��y?�:�9Z       o��	��j[���A�*L

Loss��v>

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy}�z?���Z       o��	 �j[���A�*L

Lossl�>

Adam/Loss/raw�.+>

Accuracy/__raw_  �?

Accuracyp�w?�.��Z       o��	x�j[���A�*L

Loss��}>

Adam/Loss/raw8;�>

Accuracy/__raw_�m[?

Accuracy��x?�Z       o��	��j[���A�*L

Losshz�>

Adam/Loss/raw���>

Accuracy/__raw_�m[?

Accuracy��u?B�`}Z       o��	�k[���A�*L

LossnP�>

Adam/Loss/raw4Q>

Accuracy/__raw_  �?

Accuracy�&s?� "Z       o��	�k[���A�*L

Loss���>

Adam/Loss/raw?'f>

Accuracy/__raw_  �?

Accuracy�ot?#Ϥ�Z       o��	�;k[���A�*L

Loss�b�>

Adam/Loss/raw؂%>

Accuracy/__raw_  �?

Accuracy�u?מGhZ       o��	�ak[���A�*L

Loss��>

Adam/Loss/raw}��>

Accuracy/__raw_�m[?

AccuracyR�v?\���Z       o��	E�k[���A�*L

Loss=]�>

Adam/Loss/raw�K�>

Accuracy/__raw_�m[?

Accuracy��s?��XZ       o��	؞k[���A�*L

Loss��>

Adam/Loss/rawt@f>

Accuracy/__raw_  �?

Accuracywq?��XtZ       o��	�k[���A�*L

Loss2F�>

Adam/Loss/rawza>

Accuracy/__raw_  �?

Accuracy$�r?�>
Z       o��	o�k[���A�*L

Loss&��>

Adam/Loss/raw�(�>

Accuracy/__raw_  `?

Accuracy:t?}�,GZ       o��	_�k[���A�*L

Lossc(�>

Adam/Loss/raw�2C>

Accuracy/__raw_  �?

Accuracy94r?lMI�Z       o��	�l[���A�*L

Loss �>

Adam/Loss/raw�pA>

Accuracy/__raw_  �?

Accuracyg�s?�Ff�Z       o��	d!l[���A�*L

Loss{,�>

Adam/Loss/raw~�h>

Accuracy/__raw_  �?

AccuracyC�t?I�lZ       o��	5Cl[���A�*L

Loss��>

Adam/Loss/raw]�`>

Accuracy/__raw_  �?

AccuracyV�u?H�7Z       o��	+il[���A�*L

Loss��>

Adam/Loss/raw8m+>

Accuracy/__raw_  �?

Accuracy��v?!���Z       o��	��l[���A�*L

Loss[tw>

Adam/Loss/raw�P>

Accuracy/__raw_  �?

Accuracy��w?Ό�oZ       o��	��l[���A�*L

Loss�s>

Adam/Loss/raw�O>

Accuracy/__raw_  �?

Accuracy�x?�=�MZ       o��	��l[���A�*L

Loss8�o>

Adam/Loss/rawH�6>

Accuracy/__raw_  �?

Accuracy�fy?�IZ       o��	��l[���A�*L

Loss�Fj>

Adam/Loss/raw�v�>

Accuracy/__raw_  `?

Accuracy�z?cnQ�Z       o��	�m[���A�*L

LosssW{>

Adam/Loss/raw�8>

Accuracy/__raw_  �?

Accuracy�tw?|�9Z       o��	31m[���A�*L

Loss��t>

Adam/Loss/raw���>

Accuracy/__raw_�m[?

AccuracyEOx?9a�Z       o��	�Nm[���A�*L

LossƄ>

Adam/Loss/rawrD�>

Accuracy/__raw_�m[?

Accuracy�ku?I'�Z       o��	�rm[���A�*L

Losst�>

Adam/Loss/raw��d>

Accuracy/__raw_  �?

Accuracy~�r?
z
#Z       o��	��m[���A�*L

Loss<Z�>

Adam/Loss/rawR��=

Accuracy/__raw_  �?

Accuracy�#t?� L�Z       o��	C�m[���A�*L

Loss���>

Adam/Loss/raw��G>

Accuracy/__raw_  �?

AccuracyvSu?֭Z       o��	��m[���A�*L

LossT^�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�dv?��&MZ       o��	��m[���A�*L

Loss?;v>

Adam/Loss/raw:M>

Accuracy/__raw_  �?

Accuracy�Zw?�aL�Z       o��	��m[���A�*L

Loss�l>

Adam/Loss/raw2p>

Accuracy/__raw_  �?

Accuracy�7x?��#�Z       o��	�n[���A�*L

Loss�m>

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy/�x?y�Z       o��	
.n[���A�*L

Loss�x>

Adam/Loss/rawE7>

Accuracy/__raw_  �?

AccuracyDv?�э)Z       o��	ZHn[���A�*L

Loss��q>

Adam/Loss/raw=s.>

Accuracy/__raw_  �?

Accuracy�rw?d�DZ       o��	Mgn[���A�*L

Loss9k>

Adam/Loss/raw�->

Accuracy/__raw_  �?

Accuracy|Mx?z�<Z       o��	��n[���A�*L

Loss�e>

Adam/Loss/raw>>

Accuracy/__raw_  �?

Accuracy�y?��Z       o��	Þn[���A�*L

Loss�+a>

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy��y?�άZ       o��	��n[���A�*L

Loss,�q>

Adam/Loss/raw�K>

Accuracy/__raw_  �?

AccuracyK0w?S��VZ       o��	��n[���A�*L

Loss��m>

Adam/Loss/raw-�U>

Accuracy/__raw_  �?

Accuracy�x?��3Z       o��	��n[���A�*L

Loss�lk>

Adam/Loss/raw�U>

Accuracy/__raw_  �?

Accuracy��x?`�e�Z       o��	�
o[���A�*L

Lossb0i>

Adam/Loss/raw�N�>

Accuracy/__raw_  `?

Accuracy��y?=6o�Z       o��	�#o[���A�*L

Loss�!s>

Adam/Loss/raw�:8>

Accuracy/__raw_  �?

Accuracy�w?��Z       o��	�Co[���A�*L

Loss�=m>

Adam/Loss/rawD�>

Accuracy/__raw_  `?

Accuracy��w?˨�Z       o��	�io[���A�*L

LossA�~>

Adam/Loss/rawh�@>

Accuracy/__raw_  �?

Accuracyz�u?Nd�!Z       o��	ۋo[���A�*L

Loss�x>

Adam/Loss/raw��?>

Accuracy/__raw_  �?

Accuracy��v?�p<<Z       o��	2�o[���A�*L

Loss��r>

Adam/Loss/raw�	>

Accuracy/__raw_  �?

Accuracy��w?
�Z       o��	��o[���A�*L

LossUZh>

Adam/Loss/rawrQ7>

Accuracy/__raw_  �?

Accuracy+]x?]�~�Z       o��	�o[���A�*L

Losssc>

Adam/Loss/raw�@�>

Accuracy/__raw_  `?

Accuracy� y?-7��Z       o��	!p[���A�*L

LossP�s>

Adam/Loss/raw�5Y>

Accuracy/__raw_  �?

Accuracyc�v?�-s�Z       o��	\p[���A�*L

Loss�q>

Adam/Loss/rawH�X>

Accuracy/__raw_  �?

Accuracy��w?�Z�Z       o��	�9p[���A�*L

Loss�n>

Adam/Loss/raw^�D>

Accuracy/__raw_  �?

Accuracy�ex?۞�{Z       o��	TTp[���A�*L

Losssuj>

Adam/Loss/rawj<�=

Accuracy/__raw_  �?

Accuracy(y?��BZ       o��	�op[���A�*L

Loss �^>

Adam/Loss/raw��A>

Accuracy/__raw_  �?

Accuracy��y?k�3SZ       o��	ڌp[���A�*L

Loss��[>

Adam/Loss/rawg,�>

Accuracy/__raw_�m[?

AccuracyIuz?���Z       o��	��p[���A�*L

Loss��k>

Adam/Loss/raw�Ƚ>

Accuracy/__raw_�m[?

Accuracy�Zw?A���Z       o��	�p[���A�*L

Loss�"z>

Adam/Loss/raw��F>

Accuracy/__raw_  �?

Accuracy�t?�x�Z       o��	D�p[���A�*L

Loss�t>

Adam/Loss/rawA

Accuracy/__raw_  �>

Accuracyϴu?]3fZ       o��	��p[���A�*L

Loss{��?

Adam/Loss/rawˉ">

Accuracy/__raw_  �?

Accuracy �c?V~Z       o��	nq[���A�*L

Loss�g�?

Adam/Loss/raw�O�=

Accuracy/__raw_  �?

Accuracy�af?�'8�Z       o��	�-q[���A�*L

Loss[s?

Adam/Loss/raw9��=

Accuracy/__raw_  �?

Accuracy��h?��&|Z       o��	�Gq[���A�*L

Loss_�]?

Adam/Loss/rawl h>

Accuracy/__raw_  �?

Accuracy�?k?`�.�Z       o��	bq[���A�*L

Loss�[M?

Adam/Loss/raw$n�@

Accuracy/__raw_   >

AccuracySm?���Z       o��	g}q[���A�*L

Loss1b�?

Adam/Loss/raw�?:>

Accuracy/__raw_  �?

Accuracy��X?�d��Z       o��	�q[���A�*L

Loss^,�?

Adam/Loss/raw�z>

Accuracy/__raw_  �?

Accuracy��\?v�|�Z       o��	l�q[���A�*L

Loss~d�?

Adam/Loss/raw��{>

Accuracy/__raw_  �?

Accuracy�=`?�>sOZ       o��	��q[���A�*L

Loss� �?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�jc?؅�Z       o��	�:r[���A�*L

Loss���?

Adam/Loss/raw�b
A

Accuracy/__raw_  �>

Accuracy�Ff?��6�Z       o��	Yr[���A�*L

Loss�H�?

Adam/Loss/raw�XK>

Accuracy/__raw_  �?

Accuracy�U?��}Z       o��	-|r[���A�*L

LossZ��?

Adam/Loss/rawz�	>

Accuracy/__raw_  �?

Accuracy!�Y?1��;Z       o��	��r[���A�*L

Loss��?

Adam/Loss/raw��	>

Accuracy/__raw_  �?

Accuracy�]?=�?
Z       o��	g�r[���A�*L

Loss⿫?

Adam/Loss/rawLـ>

Accuracy/__raw_  �?

Accuracy  a?�w4Z       o��	<�r[���A�*L

Loss�˝?

Adam/Loss/raw>A

Accuracy/__raw_  �>

Accuracy�6d?����Z       o��	�r[���A�*L

Loss��@

Adam/Loss/rawDO�>

Accuracy/__raw_  `?

Accuracy��S?��3(Z       o��	�s[���A�*L

LossJm�?

Adam/Loss/raw�t#>

Accuracy/__raw_  �?

Accuracy2U?�C��Z       o��	�)s[���A�*L

Loss8��?

Adam/Loss/raw��#>

Accuracy/__raw_  �?

Accuracy�OY?a��(Z       o��	�Bs[���A�*L

Loss�M�?

Adam/Loss/raw"B>

Accuracy/__raw_  �?

Accuracy.]?"ŋZ       o��	O]s[���A�*L

Loss�L�?

Adam/Loss/rawrUIA

Accuracy/__raw_   >

Accuracy��`?�<Z       o��	�zs[���A�*L

Lossn^$@

Adam/Loss/raw�6>

Accuracy/__raw_  �?

AccuracyYeM?��ͤZ       o��	��s[���A�*L

Loss�@

Adam/Loss/rawB{S>

Accuracy/__raw_  �?

Accuracy�tR?��yZ       o��	�s[���A�*L

Loss�|@

Adam/Loss/raw��S>

Accuracy/__raw_  �?

Accuracy�W?m1m�Z       o��	��s[���A�*L

LossΆ�?

Adam/Loss/rawS��>

Accuracy/__raw_  `?

Accuracy[?id��Z       o��	W�s[���A�*L

Loss���?

Adam/Loss/raw	:>

Accuracy/__raw_  �?

AccuracyA�[?sW��Z       o��	t[���A�*L

Loss�L�?

Adam/Loss/raw��@>

Accuracy/__raw_  �?

Accuracy!=_?�7CZ       o��	�t[���A�*L

Loss��?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracyуb?��IZ       o��	�8t[���A�*L

Loss�D�?

Adam/Loss/raw{! >

Accuracy/__raw_  �?

Accuracy�ve?�U�
Z       o��	CTt[���A�*L

Loss�$�?

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracy�h?Qm�Z       o��	)vt[���A�*L

Loss��?

Adam/Loss/raw�N>

Accuracy/__raw_  �?

Accuracy-Ng?O&��Z       o��	�t[���A�*L

Loss2��?

Adam/Loss/rawK�>>

Accuracy/__raw_  �?

Accuracy\�i?�O�Z       o��	v�t[���A�*L

Loss�Fu?

Adam/Loss/raw�@>

Accuracy/__raw_  �?

AccuracyS�k?Sb�Z       o��	��t[���A�*L

Lossٌa?

Adam/Loss/raw��?>

Accuracy/__raw_  �?

Accuracyd�m?�0 �Z       o��	u[���A�*L

Loss�O?

Adam/Loss/raw�d�>

Accuracy/__raw_  `?

Accuracy@�o?�6KhZ       o��	"u[���A�*L

LossyE?

Adam/Loss/rawb�8>

Accuracy/__raw_  �?

Accuracy�7n?���(Z       o��	X<u[���A�*L

LossI�5?

Adam/Loss/raw�9>

Accuracy/__raw_  �?

Accuracy�o?GT�8Z       o��	�Wu[���A�*L

Loss5p(?

Adam/Loss/raw�Z>

Accuracy/__raw_  �?

Accuracy��q?թLUZ       o��	:zu[���A�*L

Loss�?

Adam/Loss/raw
�Y>

Accuracy/__raw_  �?

Accuracyw	s?�!�EZ       o��	ٗu[���A�*L

Loss9�?

Adam/Loss/raw��>

Accuracy/__raw_  `?

AccuracyRUt?���Z       o��	��u[���A�*L

LossGS?

Adam/Loss/raw�n>

Accuracy/__raw_  �?

Accuracy�Lr?C_�Z       o��	��u[���A�*L

Loss��?

Adam/Loss/rawXG�>

Accuracy/__raw_  `?

Accuracy��s?��2�Z       o��	��u[���A�*L

Loss� ?

Adam/Loss/raw]DG>

Accuracy/__raw_  �?

Accuracy��q?Y{�'Z       o��	 v[���A�*L

LossF��>

Adam/Loss/rawf�F>

Accuracy/__raw_  �?

Accuracy�!s?�[&�Z       o��	�?v[���A�*L

Loss���>

Adam/Loss/raw��7>

Accuracy/__raw_  �?

Accuracy^kt?:��VZ       o��	�[v[���A�*L

Loss� �>

Adam/Loss/raw�+,>

Accuracy/__raw_  �?

AccuracyՓu?絿Z       o��	xv[���A�*L

Loss�R�>

Adam/Loss/rawxo�>

Accuracy/__raw_  `?

Accuracy��v?J=�Z       o��	��v[���A�*L

Lossd��>

Adam/Loss/raw^u4>

Accuracy/__raw_  �?

Accuracy�[t?r��Z       o��	B�v[���A�*L

Loss��>

Adam/Loss/raw�.4>

Accuracy/__raw_  �?

Accuracy��u?����Z       o��	��v[���A�*L

Loss¤�>

Adam/Loss/raw&4C>

Accuracy/__raw_  �?

Accuracyݑv?wd'�Z       o��	��v[���A�*L

Loss}p�>

Adam/Loss/raw��;>

Accuracy/__raw_  �?

AccuracyG�w?\v��Z       o��	�w[���A�*L

Loss���>

Adam/Loss/raw�K@>

Accuracy/__raw_  �?

Accuracy�\x?��Z       o��	�=w[���A�*L

Loss��>

Adam/Loss/raw�(�>

Accuracy/__raw_�m[?

Accuracy y?���"Z       o��	�aw[���A�*L

Loss>

Adam/Loss/rawi�>

Accuracy/__raw_�m[?

Accuracy�'v?R��Z       o��	�}w[���A�*L

Loss�H�>

Adam/Loss/raw)�I>

Accuracy/__raw_  �?

Accuracy�{s?��L�Z       o��	�w[���A�*L

Loss%�>

Adam/Loss/raw�IK>

Accuracy/__raw_  �?

Accuracy�t?x]��Z       o��	��w[���A�*L

Loss߱�>

Adam/Loss/raw6�+>

Accuracy/__raw_  �?

Accuracyy�u?zarmZ       o��	i�w[���A�*L

Loss�6�>

Adam/Loss/raw�>

Accuracy/__raw_�m[?

Accuracy�v?@Gn�Z       o��	ix[���A�*L

Loss��>

Adam/Loss/raw��>

Accuracy/__raw_�m[?

Accuracye!t?��wZ       o��	�x[���A�*L

Lossg�>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy�q?�Wc�Z       o��	�9x[���A�*L

Loss�
�>

Adam/Loss/rawZo~>

Accuracy/__raw_  �?

Accuracy s?�Ue�Z       o��	qUx[���A�*L

Loss�(�>

Adam/Loss/rawF�.>

Accuracy/__raw_  �?

Accuracy�bt?��;,Z       o��	Otx[���A�*L

Loss/{�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy܋u?>"$�Z       o��	!�x[���A�*L

Loss�S�>

Adam/Loss/rawy�>

Accuracy/__raw_  �?

Accuracyy�v?u1�Z       o��	*�x[���A�*L

Loss$�>

Adam/Loss/raw�D�>

Accuracy/__raw_  `?

AccuracyS�w?w��Z       o��	.�x[���A�*L

Loss�ڋ>

Adam/Loss/raw�6>

Accuracy/__raw_  �?

Accuracy�-u?$H�Z       o��	q�x[���A�*L

Loss� �>

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy�Bv?�>'Z       o��	�y[���A�*L

Loss���>

Adam/Loss/raw%1>

Accuracy/__raw_  �?

Accuracy	t?1���Z       o��	t(y[���A�*L

Loss�M�>

Adam/Loss/raw�0>

Accuracy/__raw_  �?

AccuracyP;u?D�BZ       o��	Yy[���A�*L

Lossb��>

Adam/Loss/raw�M>

Accuracy/__raw_  �?

Accuracy�Nv?�'J�Z       o��	�|y[���A�*L

Loss�y>

Adam/Loss/raw��^>

Accuracy/__raw_  �?

AccuracyGw?�܉Z       o��	�y[���A�*L

Losse�v>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy`&x?A��Z       o��	E�y[���A�*L

Loss'�l>

Adam/Loss/raw���>

Accuracy/__raw_�m[?

AccuracyV�x?��AZ       o��	�y[���A�*L

LossV}>

Adam/Loss/raw�.�>

Accuracy/__raw_�m[?

Accuracy��u?��M�Z       o��	0�y[���A�*L

Loss��>

Adam/Loss/raw�o>

Accuracy/__raw_  �?

Accuracy&Ts?B��Z       o��	�z[���A�*L

Lossmy�>

Adam/Loss/rawE@>

Accuracy/__raw_  �?

Accuracy��t?V�HmZ       o��	�.z[���A�*L

Loss˭}>

Adam/Loss/raw��$>

Accuracy/__raw_  �?

Accuracy{�u?���Z       o��	Oz[���A�*L

Lossd�t>

Adam/Loss/raw��K>

Accuracy/__raw_  �?

Accuracy<�v?|@�WZ       o��	kz[���A�*L

Loss��p>

Adam/Loss/raw��J>

Accuracy/__raw_  �?

Accuracy��w?@�5Z       o��	�z[���A�*L

Loss��l>

Adam/Loss/rawLWN>

Accuracy/__raw_  �?

Accuracy��x?��k@Z       o��	��z[���A�*L

Loss��i>

Adam/Loss/rawA˥>

Accuracy/__raw_  `?

AccuracyDy?�a�Z       o��	+�z[���A�*L

Loss|�s>

Adam/Loss/rawZT#>

Accuracy/__raw_  �?

AccuracyG�v?D�\yZ       o��	
�z[���A�*L

Loss��k>

Adam/Loss/raw��b>

Accuracy/__raw_  �?

AccuracyZ�w?�I�Z       o��	��z[���A�*L

Loss��j>

Adam/Loss/raw�Fb>

Accuracy/__raw_  �?

Accuracy�x?��Z       o��	{[���A�*L

Lossy�i>

Adam/Loss/raw&��>

Accuracy/__raw_  `?

Accuracy�?y?މ�Z       o��	s*{[���A�*L

LossB:w>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy^�v?�%	�Z       o��	�G{[���A�*L

Loss}m>

Adam/Loss/raw7�*>

Accuracy/__raw_  �?

Accuracyզw?�!3�Z       o��	Jb{[���A�*L

Loss�sf>

Adam/Loss/rawb>

Accuracy/__raw_  �?

Accuracy�|x?�E�wZ       o��	p}{[���A�*L

Loss��]>

Adam/Loss/rawyi>

Accuracy/__raw_  �?

Accuracy�<y?"��zZ       o��	�{[���A�*L

Loss�0V>

Adam/Loss/raw�>p>

Accuracy/__raw_  �?

Accuracy�y?R_�Z       o��	�{[���A�*L

Loss��X>

Adam/Loss/raw�i#A

Accuracy/__raw_   >

Accuracy΅z?�#��Z       o��	*�{[���A�*L

Loss��?

Adam/Loss/raw>��>

Accuracy/__raw_  `?

Accuracy��d?���Z       o��	�|[���A�*L

Loss�ؐ?

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy4d?W��CZ       o��	�!|[���A�*L

Loss��?

Adam/Loss/rawO��=

Accuracy/__raw_  �?

Accuracy��f?9M�Z       o��	�A|[���A�*L

LossWxp?

Adam/Loss/raw�x>

Accuracy/__raw_  �?

Accuracy|i?H��Z       o��	ke|[���A�*L

Loss�(\?

Adam/Loss/raw{rB>

Accuracy/__raw_  �?

Accuracy{�k?��TlZ       o��	w�|[���A�*L

LossJK?

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy<�m?� @LZ       o��	��|[���A�*L

Loss�9?

Adam/Loss/raw���>

Accuracy/__raw_�m[?

Accuracy�o?�@�Z       o��	��|[���A�*L

Loss�C1?

Adam/Loss/raw7��>

Accuracy/__raw_�m[?

Accuracy�m?�� *Z       o��	=�|[���A�*L

Loss�l)?

Adam/Loss/rawk�I>

Accuracy/__raw_  �?

Accuracy��k?�$�:Z       o��	��|[���A�*L

Loss��?

Adam/Loss/raw�X@>

Accuracy/__raw_  �?

Accuracy��m?�iR�Z       o��	�}[���A�*L

Loss��?

Adam/Loss/raw<J>

Accuracy/__raw_  �?

AccuracyI�o?�
;EZ       o��	B}[���A�*L

Loss��?

Adam/Loss/raw���>

Accuracy/__raw_�m[?

Accuracy>q?[�	rZ       o��	�t}[���A�*L

Lossc?

Adam/Loss/raw�R�>

Accuracy/__raw_�m[?

Accuracy�o?�f�Z       o��	ԙ}[���A�*L

Lossd�>

Adam/Loss/rawT2<>

Accuracy/__raw_  �?

Accuracy	m?E���Z       o��	D�}[���A�*L

Loss���>

Adam/Loss/raw�,>

Accuracy/__raw_  �?

Accuracy��n?}�Z       o��	��}[���A�*L

Loss���>

Adam/Loss/raw�ۭ>

Accuracy/__raw_  `?

Accuracyq�p?��Z       o��	��}[���A�*L

Lossѯ�>

Adam/Loss/raw�8*>

Accuracy/__raw_  �?

Accuracy2o?]�s�Z       o��	�~[���A�*L

LossDT�>

Adam/Loss/raw��)>

Accuracy/__raw_  �?

Accuracy�p?��GiZ       o��	3~[���A�*L

Loss	F�>

Adam/Loss/rawЦ<>

Accuracy/__raw_  �?

Accuracy?r?#�}Z       o��	�M~[���A�*L

Loss�`�>

Adam/Loss/raw	�2>

Accuracy/__raw_  �?

Accuracy-�s?�R�:Z       o��	Yn~[���A�*L

Loss���>

Adam/Loss/rawbC>

Accuracy/__raw_  �?

Accuracy�t?����Z       o��	�~[���A�*L

Loss�T�>

Adam/Loss/raw�V>

Accuracy/__raw_  �?

AccuracyA�u?�/�GZ       o��	��~[���A�*L

Lossq��>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy��v?*-fZ       o��	e�~[���A�*L

Loss�ؕ>

Adam/Loss/rawZC>

Accuracy/__raw_  �?

Accuracy��w?����Z       o��	��~[���A�*L

Loss��>

Adam/Loss/raw(��>

Accuracy/__raw_  `?

Accuracyذx?�هZ       o��	[���A�*L

Loss���>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy�8v?K��Z       o��	�1[���A�*L

Loss��>

Adam/Loss/rawSl�>

Accuracy/__raw_�m[?

Accuracy3w?�vjZ       o��	�K[���A�*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_�m[?

Accuracy%lt?�\�Z       o��	�e[���A�*L

Loss��>

Adam/Loss/raw)O>

Accuracy/__raw_  �?

AccuracyM�q?$d��Z       o��	�[���A�*L

Loss���>

Adam/Loss/raw3y@>

Accuracy/__raw_  �?

Accuracy�Ts? ���Z       o��	�[���A�*L

Loss�%�>

Adam/Loss/rawU>>

Accuracy/__raw_  �?

Accuracy�t?���Z       o��	�[���A�*L

Loss0�>

Adam/Loss/raw���>

Accuracy/__raw_�m[?

Accuracy�u?�a�Z       o��	{�[���A�*L

Loss=�>

Adam/Loss/raw**�>

Accuracy/__raw_�m[?

Accuracybs?�}��Z       o��	�[���A�*L

Loss՟�>

Adam/Loss/rawK9>

Accuracy/__raw_  �?

Accuracy7�p?N�T:Z       o��	5�[���A�*L

Loss�Ї>

Adam/Loss/raw�(&>

Accuracy/__raw_  �?

Accuracy�Cr?��N?Z       o��	�'�[���A�*L

Loss���>

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy��s?�N�tZ       o��	�B�[���A�*L

Loss^a�>

Adam/Loss/raw^��=

Accuracy/__raw_  �?

Accuracy��q?���Z       o��	}^�[���A�*L

Loss��>

Adam/Loss/rawZx�=

Accuracy/__raw_  �?

Accuracy{s?�u��Z       o��	~��[���A�*L

Loss��p>

Adam/Loss/raw*9>

Accuracy/__raw_  �?

Accuracy�et?{�3�Z       o��	���[���A�*L

Loss�Zk>

Adam/Loss/raw�7>

Accuracy/__raw_  �?

Accuracy��u?4	9_Z       o��	�ˀ[���A�*L

Loss� f>

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy�v?��CTZ       o��	��[���A�*L

Loss6ml>

Adam/Loss/raw>�W>

Accuracy/__raw_  �?

AccuracyTWt?���Z       o��	��[���A�*L

Lossj[j>

Adam/Loss/raw�2W>

Accuracy/__raw_  �?

Accuracy́u?/���Z       o��	�2�[���A�*L

Loss�ph>

Adam/Loss/raw��P>

Accuracy/__raw_  �?

Accuracyk�v?���Z       o��	"T�[���A�*L

Loss�f>

Adam/Loss/rawR RA

Accuracy/__raw_   >

Accuracy-�w?�Q�Z       o��	1{�[���A�*L

Loss���?

Adam/Loss/raw�WZ>

Accuracy/__raw_  �?

Accuracy[�a?4���Z       o��	ܜ�[���A�*L

Loss69�?

Adam/Loss/raw1�">

Accuracy/__raw_  �?

Accuracy��d?i�=Z       o��	�Á[���A�*L

Loss���?

Adam/Loss/rawy?#>

Accuracy/__raw_  �?

Accuracy��g?u�@Z       o��	�[���A�*L

Lossl�?

Adam/Loss/rawX�>

Accuracy/__raw_  `?

Accuracyj?n�t0Z       o��	���[���A�*L

Loss?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�i?�
�MZ       o��	��[���A�*L

Loss��y?

Adam/Loss/rawDV�>

Accuracy/__raw_  `?

AccuracyK`k?��A3Z       o��	L4�[���A�*L

LossMli?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy=j?8�`�Z       o��	UM�[���A�*L

Loss�^U?

Adam/Loss/rawI,>

Accuracy/__raw_  �?

Accuracy(jl?kLJ�Z       o��	�g�[���A�*L

Loss�OC?

Adam/Loss/rawc�5>

Accuracy/__raw_  �?

Accuracy�_n?����Z       o��	8��[���A�*L

LossqQ4?

Adam/Loss/raw�.A

Accuracy/__raw_   >

Accuracy�"p?���Z       o��	
��[���A�*L

LossZ�?

Adam/Loss/rawT3S>

Accuracy/__raw_  �?

Accuracy�R[?�~X�Z       o��	4��[���A�*L

Loss���?

Adam/Loss/raw���>

Accuracy/__raw_�m[?

Accuracyt�^?�gΐZ       o��	�܂[���A�*L

LossnS�?

Adam/Loss/rawS�>

Accuracy/__raw_�m[?

AccuracyG�^?�sXZ       o��	Q��[���A�*L

Loss�>�?

Adam/Loss/raw6j.>

Accuracy/__raw_  �?

Accuracy9P^?p��Z       o��	k'�[���A�*L

Loss�L�?

Adam/Loss/raw�2>

Accuracy/__raw_  �?

Accuracy��a?I��Z       o��	�A�[���A�*L

Loss�u�?

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy��d?��$Z       o��	�]�[���A�*L

LossA��?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy>d?��,�Z       o��	dw�[���A�*L

Lossf8s?

Adam/Loss/raw�6>

Accuracy/__raw_  �?

Accuracy�g?}�i�Z       o��	��[���A�*L

LossS�^?

Adam/Loss/rawj�>

Accuracy/__raw_  �?

Accuracy2�i?X�NZ       o��	%��[���A�*L

LossGpL?

Adam/Loss/raw�Bi@

Accuracy/__raw_  �>

Accuracy��k?�>6Z       o��	Fу[���A�*L

LossA��?

Adam/Loss/raw�~�>

Accuracy/__raw_  `?

Accuracy��]? %��Z       o��	��[���A�*L

Loss ��?

Adam/Loss/rawbH>

Accuracy/__raw_  �?

Accuracyk^?���Z       o��	��[���A�*L

Lossobl?

Adam/Loss/raw��G>

Accuracy/__raw_  �?

Accuracy�ha?��Z       o��	s0�[���A�*L

Loss�Y?

Adam/Loss/raw�Ah>

Accuracy/__raw_  �?

Accuracy�wd?��+�Z       o��	�N�[���A�*L

Loss<�I?

Adam/Loss/raw Y>

Accuracy/__raw_  �?

Accuracy�8g?�ܵZ       o��	�q�[���A�*L

Loss"9?

Adam/Loss/raw�s�>

Accuracy/__raw_  `?

Accuracy�i?ZZ       o��	��[���A�*L

Loss�/?

Adam/Loss/rawN?>

Accuracy/__raw_  �?

Accuracy��h?�V��Z       o��	i��[���A�*L

Loss�d!?

Adam/Loss/raw�6>

Accuracy/__raw_  �?

AccuracyWk?�6m�Z       o��	HĄ[���A�*L

Loss�"?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�&m?#X�Z       o��	*�[���A�*L

Loss�+
?

Adam/Loss/raw^�@

Accuracy/__raw_  �>

Accuracy	o?�ZUZ       o��	m�[���A�*L

Lossi�?

Adam/Loss/rawʪ�>

Accuracy/__raw_  `?

Accuracy'�]?�(k|Z       o��	��[���A�*L

Loss�x?

Adam/Loss/rawׯS>

Accuracy/__raw_  �?

AccuracyV�]?�U��Z       o��	�8�[���A�*L

LossiRe?

Adam/Loss/raw�T>

Accuracy/__raw_  �?

Accuracyg3a?JؒyZ       o��	�S�[���A�*L

Loss)�S?

Adam/Loss/raw��4>

Accuracy/__raw_  �?

Accuracy�Gd?����Z       o��	�s�[���A�*L

Loss�	C?

Adam/Loss/raw�	>

Accuracy/__raw_  �?

Accuracyzg?+�èZ       o��	힅[���A�*L

Lossm�2?

Adam/Loss/raw�U(>

Accuracy/__raw_  �?

Accuracy!�i?��8YZ       o��	,��[���A�*L

LossI%?

Adam/Loss/raw+p�>

Accuracy/__raw_�m[?

Accuracy��k?)JK�Z       o��	م[���A�*L

Loss� ?

Adam/Loss/raw*�>

Accuracy/__raw_�m[?

Accuracy�'j?]'iZ       o��	���[���A�*L

Loss�?

Adam/Loss/raw(t�=

Accuracy/__raw_  �?

Accuracy��h?���!Z       o��	��[���A�*L

LossL?

Adam/Loss/raw�6�@

Accuracy/__raw_   >

Accuracy�k?Oλ�Z       o��	f/�[���A�*L

Loss�ބ?

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy��V?;���Z       o��	�K�[���A�*L

Loss��r?

Adam/Loss/raw�`�>

Accuracy/__raw_�m[?

Accuracy��Z? ���Z       o��	�g�[���A�*L

Loss�xe?

Adam/Loss/rawN0�>

Accuracy/__raw_�m[?

Accuracy��Z?�R�"Z       o��	Y��[���A�*L

Loss�{Y?

Adam/Loss/raw��@>

Accuracy/__raw_  �?

Accuracy#�Z?�	�TZ       o��	���[���A�*L

Loss��H?

Adam/Loss/raw��
>

Accuracy/__raw_  �?

Accuracy��^?�b�`Z       o��	���[���A�*L

Loss��7?

Adam/Loss/raw�;>

Accuracy/__raw_  �?

Accuracy�a?
�Z       o��	�҆[���A�*L

Loss�C*?

Adam/Loss/raw	�>

Accuracy/__raw_  �?

AccuracyC�d?*�6/Z       o��	R�[���A�*L

Loss�?

Adam/Loss/raw h>

Accuracy/__raw_  �?

Accuracy��g?��QZ       o��	�[���A�*L

Loss�?

Adam/Loss/raw�q�>

Accuracy/__raw_  `?

Accuracy�j?I�A1Z       o��	82�[���A�*L

Loss��?

Adam/Loss/raw��*>

Accuracy/__raw_  �?

Accuracy�i?��MZ       o��	�L�[���A�*L

LossQ?

Adam/Loss/raw��e>

Accuracy/__raw_  �?

Accuracy�fk?��Z       o��	�m�[���A�*L

Loss&��>

Adam/Loss/rawZ̶>

Accuracy/__raw_�m[?

Accuracy�um?��qfZ       o��	&��[���A�*L

Loss�j�>

Adam/Loss/raw�ʶ>

Accuracy/__raw_�m[?

AccuracyU�k?�LV�Z       o��	!��[���A�*L

Loss��>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�j?�9kZ       o��	SЇ[���A�*L

Loss���>

Adam/Loss/raw�N$>

Accuracy/__raw_  �?

Accuracy/;l?5�Z       o��	��[���A�*L

Losso&�>

Adam/Loss/raw� >

Accuracy/__raw_  �?

AccuracyD5n?���OZ       o��	� �[���A�*L

Loss�ǿ>

Adam/Loss/raw�o>>

Accuracy/__raw_  �?

Accuracy��o?>rUZ       o��	m<�[���A�*L

Loss��>

Adam/Loss/rawk�=>

Accuracy/__raw_  �?

Accuracy��q?�M�7Z       o��	h\�[���A�*L

Loss^d�>

Adam/Loss/rawlw�>

Accuracy/__raw_  `?

Accuracy�s?0�|OZ       o��	v�[���A�*L

Loss3�>

Adam/Loss/raw�M>

Accuracy/__raw_  �?

Accuracyp q?�[��Z       o��	ڐ�[���A�*L

Loss9B�>

Adam/Loss/raw~�>

Accuracy/__raw_  �?

Accuracy2�r?Y��#Z       o��	%��[���A�*L

Loss�:�>

Adam/Loss/raw�<>

Accuracy/__raw_  �?

Accuracy��s?^��Z       o��	Pǈ[���A�*L

Loss��>

Adam/Loss/raw/<>

Accuracy/__raw_  �?

AccuracyJ(u?8T'FZ       o��	��[���A�*L

Loss�p�>

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy�=v??�Z       o��	:�[���A�*L

Loss��>

Adam/Loss/raw�.>

Accuracy/__raw_  �?

Accuracyyt?i}��Z       o��	�&�[���A�*L

Loss�>

Adam/Loss/raw�	�>

Accuracy/__raw_  `?

Accuracy:7u?��A�Z       o��	�E�[���A�*L

Loss���>

Adam/Loss/raw��O>

Accuracy/__raw_  �?

Accuracys?�IZ       o��	9`�[���A�*L

LossӐ�>

Adam/Loss/raw�N>

Accuracy/__raw_  �?

Accuracybt?����Z       o��	{�[���A�*L

Loss�و>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracyًu?�8-oZ       o��	���[���A�*L

Loss��>

Adam/Loss/raw<$�@

Accuracy/__raw_  �>

Accuracyw�v?��aZ       o��	5��[���A�*L

Loss�?

Adam/Loss/raw��4>

Accuracy/__raw_  �?

AccuracyUd?o�XnZ       o��	�̉[���A�*L

Loss(mn?

Adam/Loss/raw�'>

Accuracy/__raw_  �?

Accuracyhg?��SZ       o��	��[���A�*L

Loss��Z?

Adam/Loss/raw'>

Accuracy/__raw_  �?

Accuracyޖi?��3�Z       o��	T��[���A�*L

LossI?

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracy��k?�(Z       o��	��[���A�*L

Loss��=?

Adam/Loss/rawg�*>

Accuracy/__raw_  �?

Accuracy��j?��Z       o��	?7�[���A�*L

LossX�.?

Adam/Loss/rawx>F>

Accuracy/__raw_  �?

AccuracyZ�l?HyQ�Z       o��	�T�[���A�*L

LossxM"?

Adam/Loss/raw�A#>

Accuracy/__raw_  �?

AccuracyQ�n?Fޯ�Z       o��	;p�[���A�*L

Loss\'?

Adam/Loss/raw6�#>

Accuracy/__raw_  �?

Accuracyop?�]pZ       o��	G��[���A�*L

Lossa:?

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracy��q?�2Z       o��	���[���A�*L

Lossx�?

Adam/Loss/rawa4>

Accuracy/__raw_  �?

Accuracy1p?�x~Z       o��	�Ǌ[���A�*L

Lossv��>

Adam/Loss/raw3�>

Accuracy/__raw_  �?

Accuracy��q?���.Z       o��	��[���A�*L

Loss ��>

Adam/Loss/raw��d>

Accuracy/__raw_  �?

Accuracy�1s?��!^Z       o��	� �[���A�*L

Loss�>

Adam/Loss/raw�,d>

Accuracy/__raw_  �?

Accuracy�yt?�D�uZ       o��	��[���A�*L

Loss!w�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

AccuracyƠu?
���Z       o��	�@�[���A�*L

Loss�5�>

Adam/Loss/raw28�>

Accuracy/__raw_  `?

AccuracyL�v?�B��Z       o��	/l�[���A�*L

Loss+��>

Adam/Loss/raw~�S>

Accuracy/__raw_  �?

Accuracyft?�1+Z       o��	���[���A�*L

Loss�>

Adam/Loss/raw�#>

Accuracy/__raw_  �?

Accuracy�u?G�r�Z       o��	[��[���A�*L

Loss��>

Adam/Loss/rawI�>

Accuracy/__raw_  �?

AccuracyZ�v?ˆZ       o��	�ˋ[���A�*L

Loss�9�>

Adam/Loss/rawI�>

Accuracy/__raw_  �?

Accuracy�w?��Z       o��	h�[���A�*L

Lossi��>

Adam/Loss/raw�fA

Accuracy/__raw_    

Accuracymcx?�۝�Z       o��	�[���A�*L

Loss� �?

Adam/Loss/rawd��=

Accuracy/__raw_  �?

Accuracy��_?AGwaZ       o��	�[���A�*L

Loss!}?

Adam/Loss/raw�9>

Accuracy/__raw_  �?

Accuracyi�b?"��cZ       o��	<�[���A�*L

Loss�gh?

Adam/Loss/raw�9>

Accuracy/__raw_  �?

Accuracy�e?�O�Z       o��	Y�[���A�*L

Loss��U?

Adam/Loss/raw-I>

Accuracy/__raw_  �?

Accuracy�Wh?���Z       o��	�w�[���A�*L

Loss�uE?

Adam/Loss/rawO��>

Accuracy/__raw_  `?

Accuracy��j?��Z       o��	М�[���A�*L

Loss��:?

Adam/Loss/rawk�>

Accuracy/__raw_  �?

Accuracyj�i?��nZ       o��	3Ō[���A�*L

Lossr�+?

Adam/Loss/raw�HE>

Accuracy/__raw_  �?

Accuracy��k?�Z       o��	��[���A�*L

Loss6y?

Adam/Loss/raw��D>

Accuracy/__raw_  �?

Accuracy�m?����Z       o��	��[���A�*L

Loss�r?

Adam/Loss/raw��&>

Accuracy/__raw_  �?

Accuracyǲo?�6Y:Z       o��	�0�[���A�*L

Loss��	?

Adam/Loss/raw �>

Accuracy/__raw_  `?

AccuracyTq?�n�Z       o��	�V�[���A�*L

Loss��?

Adam/Loss/raw�μ>

Accuracy/__raw_  `?

Accuracy~�o?����Z       o��	yt�[���A�*L

LossL� ?

Adam/Loss/rawK@7>

Accuracy/__raw_  �?

Accuracy>	n?Cb�Z       o��	���[���A�*L

Loss& �>

Adam/Loss/raw�6>

Accuracy/__raw_  �?

Accuracy�o?wQ9�Z       o��	\��[���A�*L

LossV(�>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracysq?��iZ       o��	�Ǎ[���A�*L

Loss�b�>

Adam/Loss/rawj>

Accuracy/__raw_  �?

Accuracy��r?�@��Z       o��	K�[���A�*L

Lossx�>

Adam/Loss/raw��?>

Accuracy/__raw_  �?

Accuracy�6t?N�wZ       o��	��[���A�*L

LossD�>

Adam/Loss/raw�.>

Accuracy/__raw_  �?

Accuracy{du?8ʹZ       o��	S#�[���A�*L

Loss���>

Adam/Loss/raw��->

Accuracy/__raw_  �?

Accuracytv?؞��Z       o��	>�[���A�*L

Loss&��>

Adam/Loss/rawJO�>

Accuracy/__raw_  `?

Accuracynhw?��sUZ       o��	2Z�[���A�*L

LossvO�>

Adam/Loss/raw�� >

Accuracy/__raw_  �?

Accuracy0u?��ɥZ       o��	�v�[���A�*L

Loss���>

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy)v?�տ�Z       o��	摎[���A�*L

Loss؉�>

Adam/Loss/raw&�)>

Accuracy/__raw_  �?

Accuracy��s?_ׁ�Z       o��	���[���A�*L

Loss���>

Adam/Loss/rawK~)>

Accuracy/__raw_  �?

Accuracyc&u?�V�JZ       o��	�Ŏ[���A�*L

Loss�(�>

Adam/Loss/raw��H>

Accuracy/__raw_  �?

Accuracy&<v?[Z#Z       o��	ߎ[���A�*L

Loss���>

Adam/Loss/raw/�=

Accuracy/__raw_  �?

Accuracy"6w?��� Z       o��	���[���A�*L

Loss�:�>

Adam/Loss/raw?��=

Accuracy/__raw_  �?

Accuracyx?�i�hZ       o��	{�[���A�*L

Loss9#|>

Adam/Loss/raw��N>

Accuracy/__raw_  �?

Accuracy��x?B4�Z       o��	�2�[���A�*L

Loss+�w>

Adam/Loss/raw�L>

Accuracy/__raw_  �?

Accuracyٗy?w�/^Z       o��	�M�[���A�*L

LosspHs>

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracy�;z?T��LZ       o��	3o�[���A�*L

Loss��{>

Adam/Loss/raw�9>

Accuracy/__raw_  �?

AccuracyG�w?���Z       o��	a��[���A�*L

Loss�t>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracysx?�8�
Z       o��		��[���A�*L

Loss�k>

Adam/Loss/raw�B6>

Accuracy/__raw_  �?

AccuracyY4y?yxl_Z       o��	v[���A�*L

Loss�;f>

Adam/Loss/raw0�5>

Accuracy/__raw_  �?

AccuracyP�y?��Z       o��	+܏[���A�*L

Loss�]a>

Adam/Loss/raw؅ >

Accuracy/__raw_  �?

Accuracy�~z?/	LZ       o��	��[���A�*L

Loss��Z>

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy�{?O�8	Z       o��	��[���A�*L

LossVbf>

Adam/Loss/raw���>

Accuracy/__raw_  `?

AccuracyjWx?k��OZ       o��	g+�[���A�*L

Loss�m>

Adam/Loss/raw��&>

Accuracy/__raw_  �?

AccuracyF�u?N�)�Z       o��	VF�[���A�*L

Loss��f>

Adam/Loss/raw �%>

Accuracy/__raw_  �?

Accuracy��v?	˶�Z       o��	B`�[���A�*L

Loss�`>

Adam/Loss/raw޺$>

Accuracy/__raw_  �?

Accuracy.�w?eW�Z       o��	|�[���A�*L

Loss:(Z>

Adam/Loss/rawF�8>

Accuracy/__raw_  �?

Accuracyv�x?я[�Z       o��	k��[���A�*L

Loss�V>

Adam/Loss/rawE&�=

Accuracy/__raw_  �?

Accuracy�`y?vL)&Z       o��	8��[���A�*L

LossW�M>

Adam/Loss/raw��2>

Accuracy/__raw_  �?

AccuracyV
z?�=)�Z       o��	�Ր[���A�*L

Loss�CK>

Adam/Loss/raw]2>

Accuracy/__raw_  �?

Accuracy�z?"�G�Z       o��	(�[���A�*L

LossٽH>

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracy6,{?���Z       o��	�	�[���A�*L

Lossd�S>

Adam/Loss/raw�YF>

Accuracy/__raw_  �?

Accuracy�tx?by^mZ       o��	h"�[���A�*L

Loss�QR>

Adam/Loss/raw�:>

Accuracy/__raw_  �?

Accuracy�5y?K+�Z       o��	X<�[���A�*L

Loss��O>

Adam/Loss/rawIs>

Accuracy/__raw_  �?

Accuracy��y?+w��Z       o��	6W�[���A�*L

Loss8J>

Adam/Loss/raw[>

Accuracy/__raw_  �?

Accuracy�z?2�ŋZ       o��	�q�[���A�*L

Lossk�D>

Adam/Loss/raw/��>

Accuracy/__raw_  `?

Accuracy�{?*�4Z       o��	X��[���A�*L

Loss��R>

Adam/Loss/raw�Б@

Accuracy/__raw_  �>

AccuracySXx?e���Z       o��	հ�[���A�*L

Loss�$?

Adam/Loss/raw�2	>

Accuracy/__raw_  �?

Accuracy�e?�S��Z       o��	ґ[���A�*L

Loss?

Adam/Loss/rawΏI>

Accuracy/__raw_  �?

Accuracy��h?��Z       o��	��[���A�*L

Loss�?

Adam/Loss/raw
I>

Accuracy/__raw_  �?

Accuracy�j?N�Z       o��	5�[���A�*L

Loss��?

Adam/Loss/raw6ݜ>

Accuracy/__raw_  `?

Accuracy�l?l�wZ       o��	["�[���A�*L

Loss^5�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

AccuracyĮk?L�VZ       o��	�A�[���A�*L

Lossz�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�m?�&�Z       o��	�]�[���A�*L

Loss���>

Adam/Loss/raw��N>

Accuracy/__raw_  �?

Accuracy �o?,�Y{Z       o��	x�[���A�*L

Loss��>

Adam/Loss/raw:�N>

Accuracy/__raw_  �?

AccuracyM0q?@(w)Z       o��	Ց�[���A�*L

Loss���>

Adam/Loss/raw�k.>

Accuracy/__raw_  �?

Accuracyy�r?���Z       o��	Z��[���A�*L

Loss®�>

Adam/Loss/raw"��>

Accuracy/__raw_  `?

Accuracy� t?��+�Z       o��	]ߒ[���A�*L

Loss2��>

Adam/Loss/rawG��>

Accuracy/__raw_  `?

Accuracy� r?�z�Z       o��	l�[���A�*L

Loss��>

Adam/Loss/raw0P4>

Accuracy/__raw_  �?

Accuracy�3p?���Z       o��	�'�[���A�*L

Loss�ԩ>

Adam/Loss/rawA4>

Accuracy/__raw_  �?

Accuracy5�q?Һt�Z       o��	�F�[���A�*L

Loss�١>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy04s?��Z       o��	jg�[���A�*L

Loss��>

Adam/Loss/raw\�%>

Accuracy/__raw_  �?

Accuracy�{t?��Z       o��	{��[���A�*L

LossR�>

Adam/Loss/raw��	>

Accuracy/__raw_  �?

Accuracy��u?Eb�sZ       o��	���[���A�*L

Loss�L�>

Adam/Loss/rawj��=

Accuracy/__raw_  �?

Accuracy�v?��6Z       o��	��[���A�*L

Loss���>

Adam/Loss/raw�X�=

Accuracy/__raw_  �?

Accuracy��w?M3I;Z       o��	fړ[���A�*L

Loss��w>

Adam/Loss/raw��8>

Accuracy/__raw_  �?

Accuracy�qx?G���Z       o��	4��[���A�*L

Loss[�q>

Adam/Loss/raw���@

Accuracy/__raw_    

Accuracy3y?�d�Z       o��	a�[���A�*L

LossJ�`?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�G`?���Z       o��	�>�[���A�*L

Lossh\M?

Adam/Loss/raw *�>

Accuracy/__raw_�m[?

Accuracy�sc?�%�Z       o��	e�[���A�*L

Loss��@?

Adam/Loss/rawb�>

Accuracy/__raw_�m[?

Accuracy>�b?��1BZ       o��	(��[���A�*L

Loss^\5?

Adam/Loss/raw��;>

Accuracy/__raw_  �?

Accuracyd�a?D��[Z       o��	��[���A�*L

LossS�'?

Adam/Loss/raw|&+>

Accuracy/__raw_  �?

Accuracy@�d?ܴ��Z       o��	�Ô[���A�*L

Loss�g?

Adam/Loss/rawQ��=

Accuracy/__raw_  �?

Accuracy �g?���WZ       o��	��[���A�*L

Loss�?

Adam/Loss/raw�_.>

Accuracy/__raw_  �?

Accuracy�j?�dZ       o��	(�[���A�*L

Lossn?

Adam/Loss/raw��.>

Accuracy/__raw_  �?

Accuracy�Dl?A�4Z       o��	Z/�[���A�*L

LossfX�>

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracy>n?t���Z       o��	EK�[���A�*L

Loss�i�>

Adam/Loss/rawژ>

Accuracy/__raw_  �?

Accuracyq�l?S��Z       o��	/k�[���A�*L

Loss9�>

Adam/Loss/raw�:>

Accuracy/__raw_  �?

Accuracy�n?H<��Z       o��	���[���A�*L

Loss�[�>

Adam/Loss/raw)�>

Accuracy/__raw_�m[?

Accuracyrvp?��A�Z       o��	���[���A�*L

Loss;�>

Adam/Loss/raw���>

Accuracy/__raw_�m[?

Accuracy�[n?^�C�Z       o��	n��[���A�*L

Loss�]�>

Adam/Loss/rawq
>

Accuracy/__raw_  �?

AccuracyYwl?�)�Z       o��	��[���A�*L

Lossq�>

Adam/Loss/raw��%>

Accuracy/__raw_  �?

Accuracyjkn?���Z       o��	��[���A�*L

Loss�7�>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracyy-p?k�EeZ       o��	�!�[���A�*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��q?2���Z       o��	><�[���A�*L

Loss���>

Adam/Loss/raw�6>

Accuracy/__raw_  �?

Accuracy/s?���Z       o��	�U�[���A�*L

LossL��>

Adam/Loss/raw�}�>

Accuracy/__raw_  `?

Accuracy+wt?+���Z       o��	r�[���A�*L

LossԂ�>

Adam/Loss/rawf,P>

Accuracy/__raw_  �?

Accuracy@kr?�cb�Z       o��	���[���A�*L

Loss���>

Adam/Loss/raw`��=

Accuracy/__raw_  �?

Accuracy��s?n�OZ       o��	묖[���A�*L

Loss�x�>

Adam/Loss/raw���>

Accuracy/__raw_�m[?

Accuracy��t?�
�Z       o��	bږ[���A�*L

Loss�̊>

Adam/Loss/raweb�>

Accuracy/__raw_�m[?

Accuracy8qr?�w`Z       o��	��[���A�*L

Loss���>

Adam/Loss/raw��.>

Accuracy/__raw_  �?

Accuracy$p?��$�Z       o��	��[���A�*L

Loss�T�>

Adam/Loss/rawc%=>

Accuracy/__raw_  �?

Accuracy�q?���Z       o��	�=�[���A�*L

Loss�'�>

Adam/Loss/rawLw9>

Accuracy/__raw_  �?

Accuracyt's?E��Z       o��	Ec�[���A�*L

Lossc6�>

Adam/Loss/raw%h�=

Accuracy/__raw_  �?

AccuracyOpt?*Ot�Z       o��	}�[���A�*L

Loss�3r>

Adam/Loss/raw�N�=

Accuracy/__raw_  �?

AccuracyG�u?��60Z       o��	9��[���A�*L

LossYe>

Adam/Loss/raw�j�>

Accuracy/__raw_  `?

Accuracy��v?�`!�Z       o��	1��[���A�*L

LossM�k>

Adam/Loss/rawu,>

Accuracy/__raw_  �?

Accuracy/_t?Y�+TZ       o��	�ʗ[���A�*L

Loss`_e>

Adam/Loss/raw$v>

Accuracy/__raw_  �?

Accuracyވu?��/�Z       o��	��[���A�*L

Loss@�]>

Adam/Loss/raw@�>

Accuracy/__raw_�m[?

AccuracyȔv?a��IZ       o��	���[���A�*L

Loss-i>

Adam/Loss/raw槥>

Accuracy/__raw_�m[?

Accuracy��s?|T�Z       o��	��[���A�*L

Loss��r>

Adam/Loss/rawP�">

Accuracy/__raw_  �?

Accuracylq?(s��Z       o��	�8�[���A�*L

Loss�j>

Adam/Loss/rawh{>

Accuracy/__raw_  �?

AccuracyE�r?�W9�Z       o��	�W�[���A�*L

Loss�`>

Adam/Loss/raw
�>

Accuracy/__raw_  �?

Accuracy%1t?A�9�Z       o��	�u�[���A�*L

Loss�X>

Adam/Loss/raw'4>

Accuracy/__raw_  �?

Accuracyn_u?rL��Z       o��	���[���A�*L

Loss��P>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy}ov?:�?Z       o��	���[���A�*L

Loss��I>

Adam/Loss/raw�֥>

Accuracy/__raw_  `?

AccuracyWdw?����Z       o��	PĘ[���A�*L

Loss8�V>

Adam/Loss/raw�!>

Accuracy/__raw_  �?

Accuracy�u?A�'.Z       o��	�ޘ[���A�*L

Loss%O>

Adam/Loss/raw3�>

Accuracy/__raw_  �?

Accuracy�%v?HE5�Z       o��	���[���A�*L

Loss�H>

Adam/Loss/raw:}�>

Accuracy/__raw_�m[?

Accuracy�!w?�2��Z       o��	��[���A�*L

Loss@XV>

Adam/Loss/rawG �>

Accuracy/__raw_�m[?

Accuracy�\t?���Z       o��	D�[���A�*L

Loss�b>

Adam/Loss/raw'>

Accuracy/__raw_  �?

Accuracys�q?�Fr�Z       o��	0h�[���A�*L

Loss�X>

Adam/Loss/raw�$>

Accuracy/__raw_  �?

Accuracy4Hs?F'�Z       o��	��[���A�*L

Loss�S>

Adam/Loss/raw&~>

Accuracy/__raw_  �?

Accuracyȍt?�,�
Z       o��	u��[���A�*L

Loss�N>

Adam/Loss/rawE�>

Accuracy/__raw_  �?

Accuracyβu?�N��Z       o��	�ș[���A�*L

Lossj�F>

Adam/Loss/raws;>

Accuracy/__raw_  �?

Accuracy��v?��N@Z       o��	G�[���A�*L

Loss�O@>

Adam/Loss/raw�	>

Accuracy/__raw_  �?

Accuracyߧw?h��Z       o��	z��[���A�*L

Loss��:>

Adam/Loss/raw�M�>

Accuracy/__raw_  `?

Accuracy|}x?#�okZ       o��	��[���A�*L

Loss�hG>

Adam/Loss/raw�d�=

Accuracy/__raw_  �?

Accuracy�
v?�� �Z       o��	�7�[���A�*L

Loss��?>

Adam/Loss/raw�[(>

Accuracy/__raw_  �?

Accuracy{	w?�`Q�Z       o��	�S�[���A�*L

LossS8=>

Adam/Loss/rawi�'>

Accuracy/__raw_  �?

Accuracy��w?݉��Z       o��	�n�[���A�*L

Loss�;>

Adam/Loss/raw�o>

Accuracy/__raw_  �?

Accuracyq�x?Owd�Z       o��	r��[���A�*L

Loss��7>

Adam/Loss/raw4�A

Accuracy/__raw_   >

AccuracyLwy?���1Z       o��	P��[���A�*L

LossyX�?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy*�c?L_�~Z       o��		ƚ[���A�*L

Loss�1z?

Adam/Loss/raw,(>

Accuracy/__raw_  �?

Accuracy&�f?c�#Z       o��	]�[���A�*L

Loss�d?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�i?,n��Z       o��	%�[���A�*L

Loss4[Q?

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracy)bk?4�9�Z       o��	�%�[���A�*L

LosszE?

Adam/Loss/raw�	>

Accuracy/__raw_  �?

Accuracy�>j?4�{Z       o��	E�[���A�*L

Loss��4?

Adam/Loss/raw�a!>

Accuracy/__raw_  �?

Accuracy�kl?����Z       o��	3j�[���A�*L

Loss��&?

Adam/Loss/raw��>

Accuracy/__raw_�m[?

Accuracy�`n?��lZ       o��	Y��[���A�*L

Loss�H?

Adam/Loss/raw�
�>

Accuracy/__raw_�m[?

Accuracy�{l?�%\ZZ       o��	��[���A�*L

Lossr�?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy.�j?�du�Z       o��	�ě[���A�*L

Loss��?

Adam/Loss/raw<lG>

Accuracy/__raw_  �?

Accuracyv�l?p���Z       o��	ޛ[���A�*L

Loss"��>

Adam/Loss/raw8�$>

Accuracy/__raw_  �?

Accuracyj�n?f6Z       o��	���[���A�*L

LossHo�>

Adam/Loss/rawI�>

Accuracy/__raw_  �?

Accuracyy�p?H�Z       o��	��[���A�*L

Lossc�>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy�r?�Un�Z       o��	�4�[���A�*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracy�ws?�j�Z       o��	uU�[���A�*L

LossQ�>

Adam/Loss/raw�	>

Accuracy/__raw_  �?

Accuracy��q?����Z       o��	�z�[���A�*L

Loss��>

Adam/Loss/raw��)>

Accuracy/__raw_  �?

Accuracy8�r?7�FZ       o��	���[���A�*L

Loss6��>

Adam/Loss/raw7�>

Accuracy/__raw_  �?

Accuracy�Et?���Z       o��	��[���A�*L

Loss&��>

Adam/Loss/raw6\>

Accuracy/__raw_  �?

Accuracyru?�TG�Z       o��	М[���A�*L

LossX`�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy7�v?��Z       o��	J�[���A�*L

Loss3I�>

Adam/Loss/raw:`A

Accuracy/__raw_   >

Accuracyesw?\��VZ       o��	c�[���A�*L

Lossw�?

Adam/Loss/rawha�>

Accuracy/__raw_  `?

Accuracy��a?F)FZ       o��	�*�[���A�*L

Loss� �?

Adam/Loss/raw_1>

Accuracy/__raw_  �?

Accuracy�a?��Z       o��	'L�[���A�*L

Lossr�x?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy]�d?ƺ�Z       o��	"p�[���A�*L

Loss߳c?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy!xg?o�g�Z       o��	���[���A�*L

LossXO?

Adam/Loss/raw��E@

Accuracy/__raw_   ?

Accuracy�i?�Z-�Z       o��	{��[���A�*L

Loss�ۄ?

Adam/Loss/raw~�>

Accuracy/__raw_  �?

Accuracy�T_?N l�Z       o��	۝[���A�*L

Loss��r?

Adam/Loss/rawkU�>

Accuracy/__raw_�m[?

Accuracyۘb?�ҷ=Z       o��	���[���A�*L

Loss	�c?

Adam/Loss/raw�O�>

Accuracy/__raw_�m[?

AccuracyW�a?cJ!�Z       o��	)$�[���A�*L

Loss�U?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy-<a?'�{�Z       o��	@�[���A�*L

Loss/+D?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�Od?�R�IZ       o��	%Z�[���A�*L

LossR3?

Adam/Loss/rawB��=

Accuracy/__raw_  �?

Accuracy�g?(�UZ       o��	 u�[���A�*L

Loss2$?

Adam/Loss/raw+G'>

Accuracy/__raw_  �?

Accuracy��i?��LZ       o��	���[���A�*L

LossI�?

Adam/Loss/raw5z'>

Accuracy/__raw_  �?

Accuracy��k?py�nZ       o��	��[���A�*L

Loss�?

Adam/Loss/raw�L�>

Accuracy/__raw_  `?

Accuracyh�m?7�	7Z       o��	XǞ[���A�*L

Loss$8?

Adam/Loss/rawB�>

Accuracy/__raw_  �?

AccuracyDsl?T_��Z       o��	��[���A�*L

Loss�R�>

Adam/Loss/raw�}�>

Accuracy/__raw_  `?

Accuracy�gn?��cmZ       o��	3��[���A�*L

Loss���>

Adam/Loss/raw�,>

Accuracy/__raw_  �?

Accuracy��l?P�zZ       o��	��[���A�*L

Loss��>

Adam/Loss/raw�&,>

Accuracy/__raw_  �?

AccuracyE�n?hk�Z       o��	�-�[���A�*L

Lossz��>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracyؔp?��cZ       o��	�G�[���A�*L

Lossڈ�>

Adam/Loss/raw">

Accuracy/__raw_  �?

Accuracy�r?����Z       o��	�d�[���A�*L

Loss/�>

Adam/Loss/rawH;
>

Accuracy/__raw_  �?

Accuracy΂s?�LxZ       o��	I��[���A�*L

Loss�ƫ>

Adam/Loss/rawq.�>

Accuracy/__raw_�m[?

Accuracy��t?�6�Z       o��	��[���A�*L

LossQQ�>

Adam/Loss/raw%��>

Accuracy/__raw_�m[?

Accuracy:r?��YZ       o��	k��[���A�*L

Loss��>

Adam/Loss/rawv�=

Accuracy/__raw_  �?

Accuracyi�o?�։Z       o��	
ܟ[���A�*L

Loss�s�>

Adam/Loss/raw��'>

Accuracy/__raw_  �?

Accuracy_�q?�Ԭ�Z       o��	"��[���A�*L

Loss��>

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracy<�r?k��_Z       o��	��[���A�*L

Loss$�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�q?��kZ       o��	�4�[���A�*L

Loss�n�>

Adam/Loss/rawci>

Accuracy/__raw_  �?

Accuracyk�r?`���Z       o��	�P�[���A�*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��s?sϼZ       o��	+l�[���A�*L

Loss���>

Adam/Loss/rawG�>

Accuracy/__raw_  �?

Accuracy�"u?*;eZ       o��	���[���A�*L

Loss�ox>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy�8v?��6Z       o��	갠[���A�*L

Loss6Lo>

Adam/Loss/raw���>

Accuracy/__raw_�m[?

Accuracy;3w?;�Z       o��	(Ѡ[���A�*L

Losscx>

Adam/Loss/raw�"�>

Accuracy/__raw_�m[?

AccuracyGlt?Y$B�Z       o��	��[���A�*L

LossT�>

Adam/Loss/raw>>

Accuracy/__raw_  �?

Accuracyl�q?r)#IZ       o��	�[���A�*L

LossLmt>

Adam/Loss/rawl��=

Accuracy/__raw_  �?

Accuracy�Ts?�*7�Z       o��	�!�[���A�*L

Lossp�g>

Adam/Loss/raw9�>

Accuracy/__raw_  �?

Accuracy�t?�o_ Z       o��	�<�[���A�*L

Loss=^>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��u?�?�OZ       o��	�V�[���A�*L

Loss>>T>

Adam/Loss/rawF��=

Accuracy/__raw_  �?

Accuracy��v?�̭LZ       o��	�p�[���A�*L

Loss�5K>

Adam/Loss/rawŪ�>

Accuracy/__raw_  `?

Accuracy�w?�=N�Z       o��	q��[���A�*L

Loss�V>

Adam/Loss/raw>

Accuracy/__raw_  �?

Accuracy�Qu?��e�Z       o��	\��[���A�*L

Loss��N>

Adam/Loss/rawƾ>

Accuracy/__raw_  �?

Accuracy#cv?�QZ       o��	8ס[���A�*L

Loss�&H>

Adam/Loss/raw�p�=

Accuracy/__raw_  �?

Accuracy9Yw?����Z       o��	���[���A�*L

Loss�=>

Adam/Loss/rawm��=

Accuracy/__raw_  �?

Accuracy�6x?��ӕZ       o��	q�[���A�*L

Loss�]4>

Adam/Loss/raw�)0>

Accuracy/__raw_  �?

Accuracy�x?(���Z       o��	m9�[���A�*L

LossD�3>

Adam/Loss/rawԎ>

Accuracy/__raw_  `?

Accuracyn�y?��YkZ       o��	�R�[���A�*L

Losst�>>

Adam/Loss/rawsB�=

Accuracy/__raw_  �?

Accuracy�w?�#�nZ       o��	�r�[���A�*L

LossT�6>

Adam/Loss/raw1�=

Accuracy/__raw_  �?

Accuracy�x?qBY�Z       o��	�[���A�*L

Loss?�,>

Adam/Loss/rawB��=

Accuracy/__raw_  �?

Accuracym�x?p��Z       o��	��[���A�*L

Loss�^$>

Adam/Loss/rawA�>

Accuracy/__raw_  `?

Accuracy|�y?<���Z       o��	M֢[���A�*L

Loss��4>

Adam/Loss/raw^%>

Accuracy/__raw_  �?

Accuracy��v?�hi�Z       o��	v��[���A�*L

Lossxd3>

Adam/Loss/raw�61>

Accuracy/__raw_  �?

Accuracy��w?���#Z       o��	�[���A�*L

Loss�,3>

Adam/Loss/rawU�
>

Accuracy/__raw_  �?

Accuracyڰx?�5Z       o��	�7�[���A�*L

Loss�/>

Adam/Loss/raw��	>

Accuracy/__raw_  �?

Accuracy�ky?.ȦZ       o��	�Q�[���A�*L

Loss�d+>

Adam/Loss/raw}�=

Accuracy/__raw_  �?

Accuracy^z?HcZ       o��	Hk�[���A�*L

Loss��!>

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy�z?	uhZ       o��	���[���A�*L

Loss�0>

Adam/Loss/rawR>

Accuracy/__raw_  �?

Accuracy#x?��[Z       o��	���[���A�*L

Loss�n,>

Adam/Loss/raw�̘>

Accuracy/__raw_�m[?

Accuracy��x?�&RZ       o��	��[���A�*L

Loss�9>

Adam/Loss/rawK|�>

Accuracy/__raw_�m[?

Accuracy��u?~�v�Z       o��	jܣ[���A�*L

Loss�E>

Adam/Loss/raw?p�=

Accuracy/__raw_  �?

Accuracy9s?����Z       o��	���[���A�*L

Loss��=>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy�t?�j�Z       o��	�[���A�*L

LossN�9>

Adam/Loss/rawr=>

Accuracy/__raw_  �?

Accuracy�u?�2�Z       o��	^.�[���A�*L

Lossk�3>

Adam/Loss/raw߭�>

Accuracy/__raw_�m[?

Accuracyr�v?>)iZ       o��	RI�[���A�*L

Loss�D>

Adam/Loss/raw�Z�>

Accuracy/__raw_�m[?

Accuracy��s?N�/Z       o��	�c�[���A�*L

Loss�R>

Adam/Loss/raw�v�=

Accuracy/__raw_  �?

Accuracy��q?o�Z       o��	[|�[���A�*L

Loss<�H>

Adam/Loss/raw�y�=

Accuracy/__raw_  �?

Accuracy��r?�}�Z       o��	ݔ�[���A�*L

Loss50A>

Adam/Loss/raw4��>

Accuracy/__raw_  `?

Accuracy�Bt?X��/Z       o��	���[���A�*L

Loss��J>

Adam/Loss/rawm�=

Accuracy/__raw_  �?

Accuracy�;r?�Ga�Z       o��	dͤ[���A�*L

Loss9�@>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy`�s?�1��Z       o��	�[���A�*L

LossII7>

Adam/Loss/rawQ�>

Accuracy/__raw_  �?

Accuracy��t?6 �Z       o��	:�[���A�*L

Loss}�4>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��u?�r��Z       o��	�<�[���A�*L

LosslJ/>

Adam/Loss/rawY�=

Accuracy/__raw_  �?

Accuracy��v?�PZ       o��	^e�[���A�*L

Losso)>

Adam/Loss/raw-H�=

Accuracy/__raw_  �?

Accuracy�w?���<Z       o��	��[���A�*L

LossL�$>

Adam/Loss/rawϟ�=

Accuracy/__raw_  �?

Accuracy0�x?�"Z       o��	���[���A�*L

Loss�w >

Adam/Loss/rawUӐ>

Accuracy/__raw_  `?

Accuracyxjy?�ԑ�Z       o��	�Х[���A�*L

Loss�b->

Adam/Loss/raw�A

Accuracy/__raw_   >

Accuracy��v?�Ie�Z       o��	��[���A�*L

Loss��?

Adam/Loss/raw�M�=

Accuracy/__raw_  �?

Accuracy
ca?�	nZ       o��	��[���A�*L

Loss��?

Adam/Loss/rawC�>

Accuracy/__raw_  �?

Accuracy�rd?����Z       o��	�:�[���A�*L

Loss�wr?

Adam/Loss/rawI�>

Accuracy/__raw_  �?

Accuracy4g?-��eZ       o��	�U�[���A�*L

LossA�]?

Adam/Loss/rawx��>

Accuracy/__raw_  `?

Accuracyۮi?���Z       o��	�o�[���A�*L

Loss��O?

Adam/Loss/raw�!�=

Accuracy/__raw_  �?

Accuracy��h?~�<.Z       o��	H��[���A�*L

Lossi�=?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracyk?�H��Z       o��		��[���A�*L

Loss|.?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�#m?N��OZ       o��	쿦[���A�*L

Loss��?

Adam/Loss/raw�e�=

Accuracy/__raw_  �?

Accuracyho?�hA�Z       o��	�٦[���A�*L

Loss t?

Adam/Loss/raw��	>

Accuracy/__raw_  �?

Accuracy��p?X\aZ       o��	<��[���A�*L

Loss�@?

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy@r?�|SZ       o��	f�[���A�*L

Loss�� ?

Adam/Loss/raw�z5>

Accuracy/__raw_  �?

Accuracy�lp?՘|�Z       o��	,�[���A�*L

Loss��>

Adam/Loss/raw+�=

Accuracy/__raw_  �?

Accuracy��q?�7wZ       o��	�F�[���A�*L

Loss ��>

Adam/Loss/raw ��=

Accuracy/__raw_  �?

Accuracylbs?"(XZ       o��	�b�[���A�*L

Loss�p�>

Adam/Loss/raw ��=

Accuracy/__raw_  �?

Accuracya�t?��)�Z       o��	}�[���A�*L

Loss�o�>

Adam/Loss/raw/x�>

Accuracy/__raw_  `?

Accuracy�u?�.�fZ       o��	���[���A�*L

LossE
�>

Adam/Loss/raw�(>

Accuracy/__raw_  �?

Accuracyp�s?E�QZ       o��	,��[���A�*L

LossJK�>

Adam/Loss/raw���>

Accuracy/__raw_�m[?

Accuracy��t?���Z       o��	nۧ[���A�*L

Loss9V�>

Adam/Loss/raw�y�>

Accuracy/__raw_�m[?

Accuracy/Mr?�N�Z       o��	���[���A�*L

Loss�Y�>

Adam/Loss/raw~U�=

Accuracy/__raw_  �?

Accuracy�p?���Z       o��	��[���A�*L

Loss���>

Adam/Loss/raw �A

Accuracy/__raw_   >

Accuracy��q?>�B�Z       o��	�>�[���A�*L

Loss�$�?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyɦ\?����Z       o��	�^�[���A�*L

Loss�ɇ?

Adam/Loss/raw� >

Accuracy/__raw_  �?

Accuracy�/`?��Z       o��	�y�[���A�*L

Loss<�w?

Adam/Loss/rawF�>

Accuracy/__raw_  �?

Accuracy#^c?f6�Z       o��	��[���A�*L

Loss�6b?

Adam/Loss/rawx�=

Accuracy/__raw_  �?

Accuracy ;f?�1�sZ       o��	��[���A�*L

Loss��N?

Adam/Loss/raw+��>

Accuracy/__raw_  `?

Accuracy��h?�%JZ       o��	�Ȩ[���A�*L

Loss&A?

Adam/Loss/raw�I�>

Accuracy/__raw_  `?

AccuracyU�g?����Z       o��	��[���A�*L

Loss`L4?

Adam/Loss/rawޗ�=

Accuracy/__raw_  �?

Accuracyf"g?�w�VZ       o��	H��[���A�*L

Losso�$?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��i?��}QZ       o��	��[���A�*L

LossD�?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��k?[LPZ       o��	�5�[���A�*L

Loss�
?

Adam/Loss/raw�?�@

Accuracy/__raw_  �>

Accuracyz�m?h�z�Z       o��	�P�[���A�*L

Losst?g?

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyT|\?���]Z       o��	k�[���A�*L

Loss̵R?

Adam/Loss/raw	�>

Accuracy/__raw_�m[?

Accuracy	`?ZwLiZ       o��	+��[���A�*L

Loss�HE?

Adam/Loss/raw��>

Accuracy/__raw_�m[?

Accuracy��_?0�MZ       o��	�[���A�*L

Loss;59?

Adam/Loss/raw�_ >

Accuracy/__raw_  �?

AccuracyW)_?SЅ Z       o��	|��[���A�*L

Loss�)?

Adam/Loss/raw���@

Accuracy/__raw_   >

Accuracyrb?�!%Z       o��	�ҩ[���A�*L

Loss�?�?

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracy5 O?NT��Z       o��	���[���A�*L

Loss��?

Adam/Loss/raw�sA>

Accuracy/__raw_  �?

Accuracyc�P?c)�Z       o��	��[���A�*L

Loss��o?

Adam/Loss/raw�A>

Accuracy/__raw_  �?

Accuracy@nU?e�2�Z       o��	(�[���A�*L

Loss>�\?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�Y?$2ZZ       o��	�a�[���A�*L

Loss�mI?

Adam/Loss/rawB��=

Accuracy/__raw_  �?

Accuracy҄]?!�bZ       o��	���[���A�*L

Loss�7?

Adam/Loss/raw-� >

Accuracy/__raw_  �?

Accuracy��`?LnZ       o��	$��[���A�*L

Lossܹ(?

Adam/Loss/raw/S>

Accuracy/__raw_  �?

Accuracy�d?�BO�Z       o��	�Ӫ[���A�*L

Loss'�?

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy��f?Uf/Z       o��	��[���A�*L

Loss�?

Adam/Loss/raw@'�>

Accuracy/__raw_  `?

Accuracy|`i?CfޟZ       o��	l	�[���A�*L

LossQI?

Adam/Loss/raw7_�=

Accuracy/__raw_  �?

Accuracypph?{� �Z       o��	�*�[���A�*L

Loss��>

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracy��j?C8Z       o��	S�[���A�*L

Loss�x�>

Adam/Loss/rawǋ>

Accuracy/__raw_  �?

Accuracy<�i?�uU�Z       o��	�|�[���A�*L

Loss&�>

Adam/Loss/raw�P>

Accuracy/__raw_  �?

Accuracy��k?���JZ       o��	I��[���A�*L

Loss�[�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy$�m?�QFZ       o��	Ը�[���A�*L

Lossg��>

Adam/Loss/raw�Z�=

Accuracy/__raw_  �?

Accuracy:�o?+��Z       o��	A֫[���A�*L

Loss�V�>

Adam/Loss/raw(�>

Accuracy/__raw_  `?

Accuracyaq?�E5Z       o��	��[���A�*L

Loss<R�>

Adam/Loss/raw		>

Accuracy/__raw_  �?

Accuracy2�o?I��Z       o��	�[���A�*L

LossDW�>

Adam/Loss/raw'�>

Accuracy/__raw_  �?

Accuracy�Fq?	ˊ�Z       o��	4,�[���A�*L

Loss�o�>

Adam/Loss/raw�|�=

Accuracy/__raw_  �?

Accuracy�r?'dH�Z       o��	�M�[���A�*L

Lossc��>

Adam/Loss/raw�t�=

Accuracy/__raw_  �?

Accuracyt?ع�1Z       o��	�t�[���A�*L

Loss���>

Adam/Loss/raw�,m>

Accuracy/__raw_  `?

AccuracybDu??�Z       o��	[���A�*L

Loss矈>

Adam/Loss/raw�H>

Accuracy/__raw_  �?

Accuracy�#s?�7tZ       o��	-��[���A�*L

Loss�9�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy'mt?(��Z       o��	�Ҭ[���A�*L

Loss��x>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracyp�u?d��Z       o��	^��[���A�*L

Loss�o>

Adam/Loss/raw�% >

Accuracy/__raw_  �?

Accuracy�v?�y�_Z       o��	<�[���A�*L

Loss�jd>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�w?||z�Z       o��	�2�[���A�*L

Loss�ZZ>

Adam/Loss/raw�"�=

Accuracy/__raw_  �?

Accuracyhx?��SMZ       o��	�X�[���A�*L

Loss�FN>

Adam/Loss/raw�o�=

Accuracy/__raw_  �?

Accuracyx*y?�}&�Z       o��	M��[���A�*L

Loss�^C>

Adam/Loss/raw3�>

Accuracy/__raw_  `?

Accuracyl�y?uf��Z       o��	���[���A�*L

LossyJ>

Adam/Loss/raw�X#>

Accuracy/__raw_  �?

Accuracy�Cw?	��Z       o��	�ĭ[���A�*L

Lossk�F>

Adam/Loss/rawm>

Accuracy/__raw_  �?

AccuracyP#x?��iaZ       o��		�[���A�*L

Loss�%B>

Adam/Loss/rawx��=

Accuracy/__raw_  �?

Accuracy��x?)e�Z       o��	n��[���A�*L

Loss�7>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��y?Տ�Z       o��	��[���A�*L

Loss��.>

Adam/Loss/raw6H�=

Accuracy/__raw_  �?

Accuracy�Dz?�q��Z       o��	�.�[���A�*L

Loss�)>

Adam/Loss/raw �>

Accuracy/__raw_  `?

Accuracyz�z?�E��Z       o��	oG�[���A�*L

LossTx4>

Adam/Loss/raw��>

Accuracy/__raw_  `?

AccuracyT(x?wuNZ       o��	cc�[���A�*L

Lossu @>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�u?~��Z       o��	���[���A�*L

Loss
9>

Adam/Loss/raw X�=

Accuracy/__raw_  �?

Accuracy��v?�ȵ�Z       o��	^��[���A�*L

Loss��2>

Adam/Loss/raw.K�=

Accuracy/__raw_  �?

Accuracy۰w?��TZ       o��	��[���A�*L

Loss�7,>

Adam/Loss/raw�VA

Accuracy/__raw_    

Accuracy��x?&�Z       o��	�Ү[���A�*L

Loss֟�?

Adam/Loss/rawpZ>

Accuracy/__raw_  �?

Accuracyi�_?;���Z       o��	1��[���A�*L

LossbW�?

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy�b?����Z       o��	��[���A�*L

Loss��?

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy��e?Yڙ�Z       o��	�!�[���A�*L

LossF��?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy^nh?�v�Z       o��	 A�[���A�*L

Loss��?

Adam/Loss/raw�-�>

Accuracy/__raw_  `?

Accuracy��j?��Z       o��	a�[���A�*L

Loss)�q?

Adam/Loss/rawnr>

Accuracy/__raw_  `?

Accuracy��i?jrZ       o��	b��[���A�*L

Loss��_?

Adam/Loss/raw �6>

Accuracy/__raw_  �?

Accuracy�h?A�-pZ       o��	���[���A�*L

Loss��M?

Adam/Loss/rawE�6>

Accuracy/__raw_  �?

Accuracy�k?0��Z       o��	�ǯ[���A�*L

Loss(�=?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracyt(m?B���Z       o��	��[���A�*L

Loss6^-?

Adam/Loss/raw�f>

Accuracy/__raw_  �?

Accuracy�
o?%�5�Z       o��	���[���A�*L

Loss�]?

Adam/Loss/raw�{>

Accuracy/__raw_  `?

Accuracy�p?t�00Z       o��	��[���A�*L

Loss��?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracypo?&��TZ       o��	�3�[���A�*L

LossX�	?

Adam/Loss/raw@��=

Accuracy/__raw_  �?

Accuracy��p?��6�Z       o��	^M�[���A�*L

LossyW�>

Adam/Loss/raw�8�=

Accuracy/__raw_  �?

Accuracy1Hr?����Z       o��	Zg�[���A�*L

LossW��>

Adam/Loss/raw�� >

Accuracy/__raw_  �?

Accuracy_�s?-<��Z       o��	܂�[���A�*L

Loss��>

Adam/Loss/raw�ݳ=

Accuracy/__raw_  �?

Accuracyo�t?kf&Z       o��	���[���A�*L

Lossp��>

Adam/Loss/rawMƄ>

Accuracy/__raw_�m[?

Accuracy��u?
^]�Z       o��	���[���A�*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_�m[?

Accuracy�Ws?)n�Z       o��	8ذ[���A�*L

Loss��>

Adam/Loss/rawG>

Accuracy/__raw_  �?

Accuracyz�p?�V]�Z       o��	J�[���A�*L

Loss�R�>

Adam/Loss/rawb�>

Accuracy/__raw_  �?

Accuracy�tr?�2PZ       o��	J�[���A�*L

Loss�T�>

Adam/Loss/raw>�>

Accuracy/__raw_  �?

Accuracyu�s?v�`.Z       o��	�&�[���A�*L

Loss���>

Adam/Loss/rawѰ�>

Accuracy/__raw_�m[?

Accuracy�u?�!�Z       o��	@�[���A�*L

Loss�[�>

Adam/Loss/rawn�>

Accuracy/__raw_�m[?

Accuracy"xr?��UZ       o��	�Z�[���A�*L

Losslݚ>

Adam/Loss/rawtz�=

Accuracy/__raw_  �?

AccuracyJ*p?�s�9Z       o��	mt�[���A�*L

LossWJ�>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��q?�FF�Z       o��	y��[���A�*L

Loss�N�>

Adam/Loss/raw�p(>

Accuracy/__raw_  �?

Accuracy,s?��Z       o��	S��[���A�*L

Loss1�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�tt?ͬJZ       o��	�ӱ[���A�*L

Lossz_t>

Adam/Loss/raw"��=

Accuracy/__raw_  �?

Accuracy]�u?�-��Z       o��	���[���A�*L

Loss�Pd>

Adam/Loss/raw�M�>

Accuracy/__raw_  `?

AccuracyT�v?_�G�Z       o��	T�[���A�*L

Lossp�h>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracybt?-�7Z       o��	�6�[���A�*L

Loss�\>

Adam/Loss/raw�*�>

Accuracy/__raw_  `?

Accuracyًu?�3��Z       o��	�P�[���A�*L

Losst�b>

Adam/Loss/raw���=

Accuracy/__raw_  �?

AccuracyCds?5l+�Z       o��		l�[���A�*L

LossZ�T>

Adam/Loss/rawz�=

Accuracy/__raw_  �?

Accuracy	�t?����Z       o��	]��[���A�*L

Loss�G>

Adam/Loss/raw�;>

Accuracy/__raw_  �?

Accuracy��u?@W�DZ       o��	U��[���A�*L

LossI�B>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��v?z' HZ       o��	Cǲ[���A�*L

Loss��9>

Adam/Loss/rawo�>

Accuracy/__raw_  �?

AccuracyG�w?��a�Z       o��	 �[���A�*L

Loss �4>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�x?�I.�Z       o��	��[���A�*L

Loss��,>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�Ly?�RIdZ       o��	S!�[���A�*L

Loss��%>

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracy.�y?Li�vZ       o��	9B�[���A�*L

Loss� 0>

Adam/Loss/rawn�=

Accuracy/__raw_  �?

Accuracy]_w?0�XZ       o��	$c�[���A�*L

Loss��)>

Adam/Loss/raw�{�=

Accuracy/__raw_  �?

Accuracy:<x?D�ƿZ       o��	�~�[���A�*L

Loss��#>

Adam/Loss/raw�h�>

Accuracy/__raw_  �?

Accuracyy?-/��Z       o��	���[���A�*L

Lossی/>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy�y?+�s�Z       o��	x��[���A�*L

Lossa:>

Adam/Loss/raw�'>

Accuracy/__raw_  �?

Accuracy�Vz?��*Z       o��	0׳[���A�*L

LossWn4>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��z?�FkvZ       o��	��[���A�*L

Loss�b.>

Adam/Loss/raw\��=

Accuracy/__raw_  �?

Accuracy>j{?���lZ       o��	5�[���A�*L

Loss�&>

Adam/Loss/rawn>

Accuracy/__raw_  �?

Accuracy��{?x��Z       o��	E)�[���A�*L

LossA�#>

Adam/Loss/raw��>

Accuracy/__raw_  �?

AccuracyAI|?���Z       o��	�G�[���A�*L

Loss�!>

Adam/Loss/raw<�{>

Accuracy/__raw_  �?

AccuracyT�|?/Al�Z       o��	�l�[���A�*L

Lossͯ*>

Adam/Loss/rawd>

Accuracy/__raw_  �?

Accuracy��|?<��Z       o��	'��[���A�*L

Loss;�&>

Adam/Loss/raw�/�=

Accuracy/__raw_  �?

Accuracy�J}?;���Z       o��	Q��[���A�*L

Loss͙!>

Adam/Loss/raw�L�=

Accuracy/__raw_  �?

Accuracy7�}?�EZ       o��	���[���A�*L

Loss@�>

Adam/Loss/rawѺ=

Accuracy/__raw_  �?

Accuracy��}?bLz�Z       o��	P�[���A�*L

Lossz�>

Adam/Loss/raw��
>

Accuracy/__raw_  �?

Accuracy�~?��)DZ       o��	6�[���A�*L

Loss�>

Adam/Loss/rawX~�>

Accuracy/__raw_  �?

AccuracyC9~?�,�Z       o��	��[���A�*L

Loss^�>

Adam/Loss/rawV��=

Accuracy/__raw_  �?

Accuracy�f~?��Z       o��	X8�[���A�*L

Loss�">

Adam/Loss/raw}>

Accuracy/__raw_  �?

Accuracy��~?:���Z       o��	LR�[���A�*L

Loss�E>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�~?����Z       o��	Dm�[���A�*L

LossUT>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��~?_9ziZ       o��	b��[���A�*L

Loss�$>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy|�~?8�d5Z       o��	࠵[���A�*L

Loss��>

Adam/Loss/raw<��=

Accuracy/__raw_  �?

AccuracyV?γҩZ       o��	0��[���A�*L

Loss�U>

Adam/Loss/raw�2#>

Accuracy/__raw_  �?

Accuracy�&?�{vtZ       o��	Z׵[���A�*L

LossAR>

Adam/Loss/raw�u">

Accuracy/__raw_  �?

AccuracyA<?��ǋZ       o��	�[���A�*L

Loss�">

Adam/Loss/raw<f>

Accuracy/__raw_  �?

Accuracy�O??1�]Z       o��	�[���A�*L

Loss)�">

Adam/Loss/raw�S�=

Accuracy/__raw_  �?

Accuracyra?\��dZ       o��	�)�[���A�*L

Lossn2>

Adam/Loss/rawnS�=

Accuracy/__raw_  �?

AccuracyMq?��+<Z       o��	�D�[���A�*L

Loss��>

Adam/Loss/raw�|�=

Accuracy/__raw_  �?

Accuracy�? eiZ       o��	�^�[���A�*L

Loss�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyj�?�3cpZ       o��	F|�[���A�*L

Loss;x>

Adam/Loss/raw�(>

Accuracy/__raw_  �?

Accuracy��?��1Z       o��	p��[���A�*L

Loss�	>

Adam/Loss/rawq>|>

Accuracy/__raw_  �?

Accuracy`�?(�p�Z       o��	ع�[���A�*L

Loss!>

Adam/Loss/raw�[�>

Accuracy/__raw_  �?

Accuracy��?]T �Z       o��	�ڶ[���A�*L

Loss�$>

Adam/Loss/raw'��=

Accuracy/__raw_  �?

Accuracy*�?C��KZ       o��	��[���A�*L

Lossy5>

Adam/Loss/raw�i�=

Accuracy/__raw_  �?

Accuracy��?j$��Z       o��	�'�[���A�*L

Lossћ>

Adam/Loss/raw�|�=

Accuracy/__raw_  �?

Accuracy��?C��Z       o��	�S�[���A�*L

Lossz�>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?<R�Z       o��	6t�[���A�*L

Loss��>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy>�?R;%�Z       o��	W��[���A�*L

Loss��>

Adam/Loss/raw�ݦ=

Accuracy/__raw_  �?

Accuracy8�?Q�nZ       o��	���[���A�*L

Loss�	>

Adam/Loss/raw*�=

Accuracy/__raw_  �?

Accuracy��?|��Z       o��	�η[���A�*L

Loss]>

Adam/Loss/rawv0�=

Accuracy/__raw_  �?

Accuracy��?/�2Z       o��	��[���A�*L

Lossǯ>

Adam/Loss/rawЦW>

Accuracy/__raw_  �?

Accuracy[�?�I�Z       o��	�[���A�*L

LossH>

Adam/Loss/rawc �=

Accuracy/__raw_  �?

Accuracy��?`qq�Z       o��	�0�[���A�*L

Loss�G>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy��?���yZ       o��	�R�[���A�*L

Loss��>

Adam/Loss/raw�]�>

Accuracy/__raw_  �?

Accuracy4�?��HZ       o��	\q�[���A�*L

Loss�%>

Adam/Loss/raw�I>

Accuracy/__raw_  �?

Accuracy��?�&��Z       o��	 ��[���A�*L

Loss/!">

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?ǡ��Z       o��	���[���A�*L

Lossئ>

Adam/Loss/raw\��=

Accuracy/__raw_  �?

Accuracy��?,�ԨZ       o��	ȸ[���A�*L

Loss�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyc�?�"�Z       o��	��[���A�*L

Loss�>

Adam/Loss/raw1ľ=

Accuracy/__raw_  �?

Accuracy��?\�5Z       o��	X��[���A�*L

Loss�|>

Adam/Loss/rawd:�=

Accuracy/__raw_  �?

Accuracy[�?g�LZ       o��	��[���A�*L

Losss	>

Adam/Loss/rawa�m>

Accuracy/__raw_  �?

Accuracy��?��^Z       o��	�4�[���A�*L

Loss�}>

Adam/Loss/raw]`>

Accuracy/__raw_  �?

Accuracy��?l8�NZ       o��	@Q�[���A�*L

Loss*.>

Adam/Loss/raw"�>

Accuracy/__raw_  �?

Accuracy��?<��Z       o��	rk�[���A�*L

Loss�>

Adam/Loss/raw�G>

Accuracy/__raw_  �?

Accuracy��?�JMZ       o��	ۈ�[���A�*L

Loss��>

Adam/Loss/rawʑ�=

Accuracy/__raw_  �?

Accuracy��?�_JZ       o��	��[���A�*L

LossA	>

Adam/Loss/raw�4`>

Accuracy/__raw_  �?

AccuracyG�?�+�Z       o��	1͹[���A�*L

Loss�>

Adam/Loss/raw�?�=

Accuracy/__raw_  �?

Accuracy��?ϼ�Z       o��	��[���A�*L

LossX>

Adam/Loss/raw>+�=

Accuracy/__raw_  �?

Accuracy��?E#�5Z       o��	��[���A�*L

Lossߒ>

Adam/Loss/rawQ��=

Accuracy/__raw_  �?

Accuracy�?qoK�Z       o��	 �[���A�*L

LossfM>

Adam/Loss/raw@�=

Accuracy/__raw_  �?

Accuracy��?�B�Z       o��	�I�[���A�*L

LossC�>

Adam/Loss/raws/X>

Accuracy/__raw_  �?

Accuracy�?��KZ       o��	�h�[���A�*L

Loss�>

Adam/Loss/raw)�=

Accuracy/__raw_  �?

Accuracyn�?�&g_Z       o��	�[���A�*L

Loss�
>

Adam/Loss/raw*q>

Accuracy/__raw_  �?

Accuracy��?�i!9Z       o��	���[���A�*L

Loss�^>

Adam/Loss/raw��p>

Accuracy/__raw_  �?

Accuracy�?Ù�Z       o��	���[���A�*L

LossX�>

Adam/Loss/rawj�>

Accuracy/__raw_  �?

Accuracye�?;�,�Z       o��	�Ժ[���A�*L

Loss@I>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?|B]�Z       o��	p�[���A�*L

Loss)>

Adam/Loss/raw̎>

Accuracy/__raw_  �?

Accuracy��?����Z       o��	_	�[���A�*L

Loss��>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�?\}�hZ       o��	S"�[���A�*L

Loss3�>

Adam/Loss/raw�0�=

Accuracy/__raw_  �?

AccuracyK�?mɳ$Z       o��	O=�[���A�*L

Loss��>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracyw�?�K�Z       o��	�X�[���A�*L

Loss:�>

Adam/Loss/rawD�@

Accuracy/__raw_   >

Accuracy��?}9Z       o��	�r�[���A�*L

Loss�
f?

Adam/Loss/rawhd�=

Accuracy/__raw_  �?

Accuracy[�i?�b��Z       o��	�[���A�*L

Loss�WQ?

Adam/Loss/raw *�=

Accuracy/__raw_  �?

Accuracy��k?2׌�Z       o��	z��[���A�*L

Lossr�>?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy!�m?dmZ       o��	���[���A�*L

Loss�{.?

Adam/Loss/raw�G�=

Accuracy/__raw_  �?

Accuracy��o?u1J|Z       o��	�ܻ[���A�*L

Lossu�?

Adam/Loss/raw%w>

Accuracy/__raw_  �?

Accuracy�Lq?��Z       o��	U��[���A�*L

Loss��?

Adam/Loss/raw"R|>

Accuracy/__raw_  �?

Accuracy)�r?6��Z       o��	��[���A�*L

LossfI?

Adam/Loss/raw�y�=

Accuracy/__raw_  �?

Accuracy�t?�5GZ       o��	�<�[���A�*L

Lossb@?

Adam/Loss/rawKp�=

Accuracy/__raw_  �?

Accuracy�Hu?<}�Z       o��	�`�[���A�*L

Loss��>

Adam/Loss/raw:]�=

Accuracy/__raw_  �?

Accuracy�Zv?�pZ       o��	8��[���A�*L

LossP��>

Adam/Loss/rawR��=

Accuracy/__raw_  �?

Accuracy�Qw?R��Z       o��	k��[���A�*L

Lossʥ�>

Adam/Loss/rawX��=

Accuracy/__raw_  �?

Accuracy0x?BO�Z       o��	R��[���A�*L

Loss��>

Adam/Loss/raw�p>

Accuracy/__raw_  �?

Accuracy�x?����Z       o��	ռ[���A�*L

Loss��>

Adam/Loss/raw+>

Accuracy/__raw_  �?

Accuracy�y?ǏjdZ       o��	,�[���A�*L

Loss���>

Adam/Loss/raw�W>

Accuracy/__raw_  �?

AccuracyNz?W� QZ       o��	9�[���A�*L

Loss�*�>

Adam/Loss/raw�4�=

Accuracy/__raw_  �?

Accuracy��z?�)�nZ       o��	x%�[���A�*L

Loss���>

Adam/Loss/rawA��=

Accuracy/__raw_  �?

Accuracyc{?�%��Z       o��	�@�[���A�*L

Loss	��>

Adam/Loss/rawi0�>

Accuracy/__raw_  �?

Accuracy-�{??�Z       o��	�\�[���A�*L

Loss��>

Adam/Loss/rawe�>

Accuracy/__raw_  �?

AccuracyuC|?ʰ�Z       o��	`x�[���A�*L

Loss�i�>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�|?^��Z       o��	��[���A�*L

Loss�0�>

Adam/Loss/raw&$�@

Accuracy/__raw_  �>

Accuracy4�|?�y��Z       o��	u��[���A�*L

Loss�2|?

Adam/Loss/raw�F�=

Accuracy/__raw_  �?

Accuracy�Fm?�wB�Z       o��	�Ƚ[���A�*L

Lossz+f?

Adam/Loss/raw�|�>

Accuracy/__raw_  �?

Accuracy&o?�T��Z       o��	��[���A�*L

Loss\�U?

Adam/Loss/rawpl�>

Accuracy/__raw_  �?

Accuracyj�p?Y�SZ       o��	���[���A�*L

Loss?NG?

Adam/Loss/raw�I�=

Accuracy/__raw_  �?

Accuracy�Yr?/��Z       o��	��[���A�*L

Loss��5?

Adam/Loss/raw`��=

Accuracy/__raw_  �?

Accuracy�s?�칒Z       o��	�3�[���A�*L

Loss�%?

Adam/Loss/raw�=�=

Accuracy/__raw_  �?

Accuracy��t?���Z       o��	/M�[���A�*L

Loss.Q?

Adam/Loss/raw3j�=

Accuracy/__raw_  �?

Accuracy�v?��vZ       o��	rk�[���A�*L

Lossc�
?

Adam/Loss/raw~�=

Accuracy/__raw_  �?

Accuracy_w?9�,Z       o��	Έ�[���A�*L

Loss���>

Adam/Loss/raw̞o>

Accuracy/__raw_  �?

Accuracy��w?�0�`Z       o��	���[���A�*L

Loss2�>

Adam/Loss/raw3�=

Accuracy/__raw_  �?

Accuracy��x?x;�/Z       o��	�Ѿ[���A�*L

Loss'��>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�xy?#>Z       o��	p�[���A�*L

Loss�4�>

Adam/Loss/raw�e>

Accuracy/__raw_  �?

Accuracy�z? �YZ       o��	�	�[���A�*L

Losst��>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy9�z?�9�Z       o��	K#�[���A�*L

LossZ#�>

Adam/Loss/raw.��=

Accuracy/__raw_  �?

Accuracy�={?����Z       o��	�<�[���A�*L

Loss��>

Adam/Loss/raw.�^>

Accuracy/__raw_  �?

Accuracyq�{? ^ �Z       o��	2V�[���A�*L

Loss��>

Adam/Loss/raw�R�=

Accuracy/__raw_  �?

Accuracy%|?��:�Z       o��	�t�[���A�*L

Loss�J�>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracyʇ|?����Z       o��	���[���A�*L

Loss��>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��|?a0�Z       o��	���[���A�*L

Loss�ւ>

Adam/Loss/raw��|>

Accuracy/__raw_  �?

Accuracy�0}?��ɁZ       o��	Ͽ[���A�*L

LossJe�>

Adam/Loss/rawN}�=

Accuracy/__raw_  �?

Accuracy~x}?��Z       o��	B�[���A�*L

Lossb�s>

Adam/Loss/raw䁦=

Accuracy/__raw_  �?

Accuracy>�}?3pjqZ       o��	��[���A�*L

Loss#�c>

Adam/Loss/rawgE�=

Accuracy/__raw_  �?

Accuracy��}?�׽�Z       o��	X �[���A�*L

Loss��V>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�'~?�D[Z       o��	�:�[���A�*L

Lossw�K>

Adam/Loss/raw,�>

Accuracy/__raw_  �?

Accuracy,W~?	�Z       o��	�T�[���A�*L

Loss�|D>

Adam/Loss/raw��Y>

Accuracy/__raw_  �?

Accuracy��~?쎽�Z       o��	Hp�[���A�*L

Loss;�F>

Adam/Loss/raw5��=

Accuracy/__raw_  �?

Accuracy�~?���xZ       o��	��[���A�*L

Loss�S9>

Adam/Loss/raw�J�=

Accuracy/__raw_  �?

AccuracyM�~?�PоZ       o��	;��[���A�*L

LossL1>

Adam/Loss/raw^3�=

Accuracy/__raw_  �?

AccuracyE�~?3�?�Z       o��	?��[���A�*L

LossV�)>

Adam/Loss/raw�G�=

Accuracy/__raw_  �?

Accuracy%?�<Z       o��	���[���A�*L

Loss��$>

Adam/Loss/raw:�p>

Accuracy/__raw_  �?

Accuracy;?����Z       o��	��[���A�*L

Loss��,>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy�4?���Z       o��	�'�[���A�*L

Loss��4>

Adam/Loss/raw�L�=

Accuracy/__raw_  �?

Accuracy!I?��sZ       o��	cE�[���A�*L

Loss"�,>

Adam/Loss/rawy��=

Accuracy/__raw_  �?

Accuracyk[?\��5Z       o��	�`�[���A�*L

Loss�%>

Adam/Loss/raw�,>=

Accuracy/__raw_  �?

Accuracy�k?��F�Z       o��	F}�[���A�*L

Loss��>

Adam/Loss/raw�L�=

Accuracy/__raw_  �?

Accuracy�z?�lZ       o��	_��[���A�*L

Loss��>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�?����Z       o��	���[���A�*L

Lossc@>

Adam/Loss/raw0�=

Accuracy/__raw_  �?

Accuracy�?Wv%�Z       o��	���[���A�*L

Loss�>

Adam/Loss/raw�t�=

Accuracy/__raw_  �?

Accuracyў?A˹Z       o��	���[���A�*L

Loss!>

Adam/Loss/raw�@�=

Accuracy/__raw_  �?

Accuracy��?-]aZ       o��	��[���A�*L

Loss�h>

Adam/Loss/raw.o>

Accuracy/__raw_  �?

AccuracyH�?$��VZ       o��	1�[���A�*L

Losse�>

Adam/Loss/raw/JV>

Accuracy/__raw_  �?

Accuracy'�?D�
�Z       o��	\U�[���A�*L

Loss,>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy=�?�\��Z       o��	�o�[���A�*L

Lossce>

Adam/Loss/rawK��=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	��[���A�*L

Loss��>

Adam/Loss/raw�B�=

Accuracy/__raw_  �?

AccuracyZ�?�Y\Z       o��	���[���A�*L

Loss�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�g7Z       o��	2��[���A�*L

Lossp�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy*�?�a�iZ       o��	C��[���A�*L

LossH->

Adam/Loss/rawGgo>

Accuracy/__raw_  �?

AccuracyY�?/lZ       o��	��[���A�*L

Loss{>

Adam/Loss/raw��n>

Accuracy/__raw_  �?

Accuracy�?���\Z       o��	�!�[���A�*L

Lossb�>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?_i��Z       o��	�<�[���A�*L

Loss>H>

Adam/Loss/rawlx�@

Accuracy/__raw_  �>

Accuracy��?$ԒZ       o��	Z�[���A�*L

Lossf}?

Adam/Loss/raw�9[>

Accuracy/__raw_  �?

AccuracyL�o?����Z       o��	�u�[���A�*L

LossMR ?

Adam/Loss/raw�8�=

Accuracy/__raw_  �?

Accuracy^�q?Re"Z       o��	���[���A�*L

Loss]B�>

Adam/Loss/raw�Ϫ=

Accuracy/__raw_  �?

Accuracy;�r?���Z       o��	���[���A�*L

Loss� �>

Adam/Loss/rawF>�=

Accuracy/__raw_  �?

AccuracyDt?�q��Z       o��	���[���A�*L

Loss���>

Adam/Loss/raw�`A

Accuracy/__raw_    

Accuracyhpu?���Z       o��	��[���A�*L

Loss3��?

Adam/Loss/raw'�=

Accuracy/__raw_  �?

Accuracy*�\?�43�Z       o��	��[���A�*L

Loss;�?

Adam/Loss/rawb�=

Accuracy/__raw_  �?

Accuracy�g`?`�OZ       o��	�,�[���A�*L

LossR�?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��c?~AOZ       o��	�H�[���A�*L

LossN�?

Adam/Loss/rawR{s>

Accuracy/__raw_  �?

Accuracy�hf?M���Z       o��	Rc�[���A�*L

Loss&��?

Adam/Loss/rawk-�=

Accuracy/__raw_  �?

Accuracy��h?+uQFZ       o��	�}�[���A�*L

LossE�?

Adam/Loss/raw�ũ=

Accuracy/__raw_  �?

Accuracy]Ek?�9�Z       o��	���[���A�*L

Loss��|?

Adam/Loss/raw�u>

Accuracy/__raw_  �?

AccuracyXm?���Z       o��	E��[���A�*L

LossZ�i?

Adam/Loss/raw�3u>

Accuracy/__raw_  �?

Accuracy�5o?�SpZ       o��	E��[���A�*L

Loss�mX?

Adam/Loss/rawc�=

Accuracy/__raw_  �?

Accuracyv�p?�!Z       o��	m��[���A�*L

Loss��D?

Adam/Loss/raw,6>

Accuracy/__raw_  �?

AccuracyQfr?���}Z       o��	�!�[���A�*L

LosseX4?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy|�s?8��Z       o��	>�[���A�*L

Loss��$?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��t?��җZ       o��	�]�[���A�*L

Lossu?

Adam/Loss/raw;�=

Accuracy/__raw_  �?

Accuracy�v?�eS�Z       o��	dx�[���A�*L

Loss{
?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�w?�5�Z       o��	x��[���A�*L

Loss�H�>

Adam/Loss/raw�9?>

Accuracy/__raw_  �?

Accuracy�w?�E(�Z       o��	��[���A�*L

LossQ�>

Adam/Loss/rawt>

Accuracy/__raw_  �?

Accuracy��x?#ε�Z       o��	���[���A�*L

Loss���>

Adam/Loss/rawQc=

Accuracy/__raw_  �?

Accuracy�~y?�p@Z       o��	�[���A�*L

LossZ]�>

Adam/Loss/raw�b=

Accuracy/__raw_  �?

Accuracy@%z?Ӹ�wZ       o��	"4�[���A�*L

Loss�ܹ>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy �z?��*0Z       o��	�R�[���A�*L

Loss�l�>

Adam/Loss/raw<�N>

Accuracy/__raw_  �?

AccuracyB{?����Z       o��	�o�[���A�*L

Loss���>

Adam/Loss/raw�S�=

Accuracy/__raw_  �?

Accuracyi�{?��@Z       o��	v��[���A�*L

Loss�5�>

Adam/Loss/rawmB�=

Accuracy/__raw_  �?

Accuracy�(|?Q��Z       o��	���[���A�*L

Loss���>

Adam/Loss/raw(�=

Accuracy/__raw_  �?

Accuracy �|?�yG�Z       o��	v��[���A�*L

LossC��>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��|?L+Z       o��	���[���A�*L

Lossv0v>

Adam/Loss/rawG6A

Accuracy/__raw_  �>

Accuracy&3}?ʬl�Z       o��	���[���A�*L

Loss{��?

Adam/Loss/rawl��=

Accuracy/__raw_  �?

Accuracy�zm?_���Z       o��	r�[���A�*L

Loss�H�?

Adam/Loss/raw֍f>

Accuracy/__raw_  �?

Accuracy�To?�l�Z       o��		3�[���A�*L

Lossjr?

Adam/Loss/raw�f>

Accuracy/__raw_  �?

Accuracy��p?����Z       o��	8N�[���A�*L

Loss��_?

Adam/Loss/raw29�=

Accuracy/__raw_  �?

Accuracy�r?�`l�Z       o��	jh�[���A�*L

Loss�,L?

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyS�s?��@Z       o��	8��[���A�*L

Loss�Z:?

Adam/Loss/raw��\>

Accuracy/__raw_  �?

Accuracydu?r�aZ       o��	=��[���A�*L

LossH>-?

Adam/Loss/raw楮=

Accuracy/__raw_  �?

AccuracyZ(v?�v�Z       o��	��[���A�*L

Loss ?

Adam/Loss/raw�0�=

Accuracy/__raw_  �?

AccuracyQ$w?����Z       o��	$��[���A�*L

Lossx?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyx?���zZ       o��	���[���A�*L

Loss�?

Adam/Loss/raww8>

Accuracy/__raw_  �?

Accuracy-�x?K٠Z       o��	��[���A�*L

Loss�d�>

Adam/Loss/raw>��=

Accuracy/__raw_  �?

Accuracy܊y?��6Z       o��	�F�[���A�*L

Loss]e�>

Adam/Loss/raws?M>

Accuracy/__raw_  �?

Accuracy,0z?9��Z       o��	�q�[���A�*L

Lossf�>

Adam/Loss/raw^M>

Accuracy/__raw_  �?

Accuracy��z?�M��Z       o��	G��[���A�*L

Loss��>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�J{?�EZ       o��	��[���A�*L

LossGe�>

Adam/Loss/raw/$>

Accuracy/__raw_  �?

Accuracy`�{?�$jZ       o��	��[���A�*L

Loss�v�>

Adam/Loss/raw�	�=

Accuracy/__raw_  �?

Accuracy�/|?�_�Z       o��	���[���A�*L

Loss�j�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyt�|?]B_Z       o��	k�[���A�*L

Lossl��>

Adam/Loss/raw?c�=

Accuracy/__raw_  �?

AccuracyO�|?�B�Z       o��	v4�[���A�*L

Loss�"�>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracya8}?Hr^Z       o��	�R�[���A�*L

Loss�"�>

Adam/Loss/raw6�H>

Accuracy/__raw_  �?

Accuracy�}?���MZ       o��	hu�[���A�*L

Loss ܁>

Adam/Loss/raw6�=

Accuracy/__raw_  �?

Accuracy��}?nCN�Z       o��	ő�[���A�*L

Loss�s>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy;�}?dH�"Z       o��	���[���A�*L

LossP�u>

Adam/Loss/raw[L�>

Accuracy/__raw_  �?

Accuracy-~?J��=Z       o��	J��[���A�*L

Lossڏw>

Adam/Loss/rawJ3�=

Accuracy/__raw_  �?

Accuracy�[~?�ރ�Z       o��	���[���A�*L

Loss�i>

Adam/Loss/raw`�=

Accuracy/__raw_  �?

Accuracyх~?:ks!Z       o��	I�[���A�*L

Loss�NY>

Adam/Loss/raw� �=

Accuracy/__raw_  �?

Accuracy��~?	��"Z       o��	�8�[���A�*L

Loss�`K>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��~?�:Z       o��	h[�[���A�*L

Loss�:B>

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyN�~?.�.�Z       o��	x�[���A�*L

Loss>�9>

Adam/Loss/raw��[>

Accuracy/__raw_  �?

Accuracy�?�.��Z       o��	Ȗ�[���A�*L

Loss�[=>

Adam/Loss/rawp�A

Accuracy/__raw_    

Accuracy� ?uI�,Z       o��	Ͱ�[���A�*L

Loss���?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracyk�e?��U�Z       o��	���[���A�*L

Loss�L�?

Adam/Loss/rawϙ=

Accuracy/__raw_  �?

Accuracy�@h?Hk�Z       o��	���[���A�*L

Lossf�h?

Adam/Loss/raw)��=

Accuracy/__raw_  �?

Accuracyʠj?$H��Z       o��	S�[���A�*L

Loss	�S?

Adam/Loss/raw=!�=

Accuracy/__raw_  �?

Accuracy��l?Qy~�Z       o��	"�[���A�*L

Loss%A?

Adam/Loss/raw\�W>

Accuracy/__raw_  �?

AccuracyR�n?�V\Z       o��	tC�[���A�*L

Loss]3?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy}kp?�Sw�Z       o��	�e�[���A�*L

Lossm�#?

Adam/Loss/raw�=

Accuracy/__raw_  �?

AccuracyW�q?<��Z       o��	A��[���A�*L

Loss�M?

Adam/Loss/rawi��=

Accuracy/__raw_  �?

AccuracyNas?X�d&Z       o��	k��[���A�*L

Loss1R
?

Adam/Loss/rawQ3P>

Accuracy/__raw_  �?

Accuracy`�t?���IZ       o��	���[���A�*L

Loss��?

Adam/Loss/raw>e�=

Accuracy/__raw_  �?

Accuracy#�u?dZ|XZ       o��	���[���A�*L

LossP�>

Adam/Loss/raw^>�>

Accuracy/__raw_  �?

Accuracy��v?�s'`Z       o��	���[���A�*L

LossQ�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyX�w?��r�Z       o��	-�[���A�*L

Loss���>

Adam/Loss/raw���=

Accuracy/__raw_  �?

AccuracyO�x?�5��Z       o��	�"�[���A�*L

Lossif�>

Adam/Loss/raw*�=

Accuracy/__raw_  �?

AccuracyKy?�%�Z       o��	1@�[���A�*L

LossS��>

Adam/Loss/rawϳ$A

Accuracy/__raw_    

Accuracy��y?�.Z       o��	N_�[���A�*L

Loss���?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��`?�C�AZ       o��	�{�[���A�*L

Loss�1�?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracyd?����Z       o��	}��[���A�*L

Loss��?

Adam/Loss/rawˀ�=

Accuracy/__raw_  �?

Accuracy�f?�`JZ       o��	���[���A�*L

Loss�^�?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�`i?���Z       o��	}��[���A�*L

Loss2k?

Adam/Loss/raw�`5A

Accuracy/__raw_   >

Accuracy��k?���Z       o��	���[���A�*L

Loss-��?

Adam/Loss/rawm>�=

Accuracy/__raw_  �?

Accuracy�FW?��C)Z       o��	��[���A�*L

Lossr �?

Adam/Loss/raw2T�=

Accuracy/__raw_  �?

AccuracyY[?�Nv�Z       o��	G�[���A�*L

Loss�J�?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracye_?Ĩ�Z       o��	9�[���A�*L

Loss���?

Adam/Loss/raw��m>

Accuracy/__raw_  �?

Accuracy�Ob?n��%Z       o��	�W�[���A�*L

Loss��?

Adam/Loss/rawc��=

Accuracy/__raw_  �?

Accuracy�Ge?	Ц�Z       o��	A�[���A�*L

LossPd�?

Adam/Loss/raw�|g>

Accuracy/__raw_  �?

Accuracy��g?���Z       o��	g��[���A�*L

Loss�؍?

Adam/Loss/raw�#�=

Accuracy/__raw_  �?

Accuracy[j?�m��Z       o��	���[���A�*L

Loss�	�?

Adam/Loss/raw�Q�=

Accuracy/__raw_  �?

Accuracy��l?��2Z       o��	���[���A�*L

Loss�k?

Adam/Loss/raw
�=

Accuracy/__raw_  �?

Accuracy1xn?;��Z       o��	,��[���A�*L

Loss-�U?

Adam/Loss/rawĿ�=

Accuracy/__raw_  �?

Accuracy�8p?����Z       o��	0�[���A�*L

LossA�B?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��q?-+}�Z       o��	�,�[���A�*L

Loss�z2?

Adam/Loss/raw�_]>

Accuracy/__raw_  �?

Accuracyc8s?� �ZZ       o��	xG�[���A�*L

Loss�*&?

Adam/Loss/raw�]>

Accuracy/__raw_  �?

Accuracy�t?�ƅ�Z       o��	�c�[���A�*L

Lossi?

Adam/Loss/raw�ӷ=

Accuracy/__raw_  �?

Accuracy��u?tV �Z       o��	���[���A�*L

Loss��?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��v?��W�Z       o��	ʣ�[���A�*L

Loss�y?

Adam/Loss/raw�ĭ=

Accuracy/__raw_  �?

Accuracy~�w?7�VZ       o��	n��[���A�*L

Loss�3�>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy%tx?���Z       o��	���[���A�*L

Loss�X�>

Adam/Loss/rawgm�=

Accuracy/__raw_  �?

AccuracyU5y?�f2Z       o��	o��[���A�*L

Loss�E�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy3�y?T��Z       o��	A�[���A�*L

Loss|��>

Adam/Loss/raw!ĉ=

Accuracy/__raw_  �?

Accuracy�z?6;��Z       o��	�&�[���A�*L

Lossp8�>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�{?C2=Z       o��	�@�[���A�*L

Loss{V�>

Adam/Loss/rawKr�=

Accuracy/__raw_  �?

AccuracyC�{?����Z       o��	]�[���A�*L

Loss�М>

Adam/Loss/raw{��=

Accuracy/__raw_  �?

AccuracyV�{?�UMZ       o��	y�[���A�*L

Loss�m�>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracyd|?�lUDZ       o��	��[���A�*L

Loss$��>

Adam/Loss/raw��[>

Accuracy/__raw_  �?

Accuracyg�|?DN��Z       o��	���[���A�*L

Loss+�>

Adam/Loss/raw`��=

Accuracy/__raw_  �?

Accuracy�}?�h�yZ       o��	h��[���A�*L

Loss,�|>

Adam/Loss/raw	!�=

Accuracy/__raw_  �?

Accuracyh^}?:�2GZ       o��	N��[���A�*L

Loss�k>

Adam/Loss/raw�t�=

Accuracy/__raw_  �?

Accuracyġ}?:��qZ       o��	�	�[���A�*L

Loss~[>

Adam/Loss/raw<�Q>

Accuracy/__raw_  �?

Accuracyd�}?68��Z       o��	#�[���A�*L

LossD%Z>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�~?���uZ       o��	�;�[���A�*L

Loss��O>

Adam/Loss/rawLp>

Accuracy/__raw_  �?

AccuracyF~?;�QZ       o��	*V�[���A�*L

Loss��R>

Adam/Loss/raw�?�=

Accuracy/__raw_  �?

AccuracyAr~?���Z       o��	ip�[���A�*L

Loss"�F>

Adam/Loss/raw�r�=

Accuracy/__raw_  �?

Accuracy�~?5���Z       o��	G��[���A�*L

Loss'<>

Adam/Loss/raw	~�=

Accuracy/__raw_  �?

Accuracyӽ~?���Z       o��	���[���A�*L

Loss
�4>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�~?Y�q�Z       o��	C��[���A�*L

Loss��)>

Adam/Loss/raw��a>

Accuracy/__raw_  �?

Accuracy
�~?�I��Z       o��	;��[���A�*L

LossR/>

Adam/Loss/raw"��=

Accuracy/__raw_  �?

Accuracy#?��eZ       o��	���[���A�*L

Loss8R%>

Adam/Loss/rawxB�=

Accuracy/__raw_  �?

Accuracy�,?�Y�vZ       o��	��[���A�*L

LossRM>

Adam/Loss/rawy��=

Accuracy/__raw_  �?

Accuracy�A?Z�Q�Z       o��	�1�[���A�*L

Loss�(>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�T?��P1Z       o��	J�[���A�*L

Loss�9>

Adam/Loss/raw0�=

Accuracy/__raw_  �?

Accuracy�e?H�|�Z       o��	�e�[���A�*L

Losse�>

Adam/Loss/rawf��=

Accuracy/__raw_  �?

AccuracyQu?/0�Z       o��	E�[���A�*L

Loss�:	>

Adam/Loss/rawQ�=

Accuracy/__raw_  �?

Accuracy/�?����Z       o��	(��[���A�*L

Loss�>

Adam/Loss/raw�YF>

Accuracy/__raw_  �?

Accuracy��?�(�Z       o��	���[���A�*L

Loss�c>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�?��R-Z       o��	���[���A�*L

Loss��
>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�?<g�Z       o��	���[���A�*L

Loss�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�?�xiWZ       o��	�[���A�*L

Lossm>

Adam/Loss/raw~�=

Accuracy/__raw_  �?

AccuracyL�?,�2Z       o��	u�[���A�*L

Loss
 >

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?f�Z       o��	�=�[���A�*L

Loss�+�=

Adam/Loss/raw�^S>

Accuracy/__raw_  �?

AccuracyM�?%yZ       o��	$`�[���A�*L

Loss��>

Adam/Loss/raw�u�=

Accuracy/__raw_  �?

AccuracyE�?Ŗ�Z       o��	�}�[���A�*L

Loss�0�=

Adam/Loss/rawX��=

Accuracy/__raw_  �?

Accuracy��?Dd�	Z       o��	Ė�[���A�*L

Loss���=

Adam/Loss/raw�j�=

Accuracy/__raw_  �?

Accuracy{�?���SZ       o��	��[���A�*L

Loss�/�=

Adam/Loss/raw'3�=

Accuracy/__raw_  �?

Accuracy��?�=;-Z       o��	N��[���A�*L

Loss���=

Adam/Loss/rawiL>

Accuracy/__raw_  �?

Accuracy��?�̗�Z       o��	A��[���A�*L

Loss���=

Adam/Loss/rawScG>

Accuracy/__raw_  �?

AccuracyF�?Ah�NZ       o��	��[���A�*L

Loss�>

Adam/Loss/rawOm�=

Accuracy/__raw_  �?

Accuracyr�?_���Z       o��	�*�[���A�*L

Loss96>

Adam/Loss/raw>�=

Accuracy/__raw_  �?

AccuracyM�?�R�{Z       o��	�G�[���A�*L

Loss���=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?��TZ       o��	�h�[���A�*L

Loss F�=

Adam/Loss/raw&�,A

Accuracy/__raw_   >

Accuracy/�?���Z       o��	���[���A�*L

LossH�?

Adam/Loss/raw<>

Accuracy/__raw_  �?

Accuracy݆i?���CZ       o��	o��[���A�*L

LossOg�?

Adam/Loss/raw�B�=

Accuracy/__raw_  �?

Accuracy-�k?�/}MZ       o��	���[���A�*L

Loss�:}?

Adam/Loss/raw[��=

Accuracy/__raw_  �?

Accuracy��m?mmΞZ       o��	���[���A�*L

Loss�3f?

Adam/Loss/rawp�=

Accuracy/__raw_  �?

Accuracy��o?�mtUZ       o��	���[���A�*L

Loss�AR?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy]Aq?���lZ       o��	�[���A�*L

Lossn??

Adam/Loss/raw��C>

Accuracy/__raw_  �?

AccuracyԺr?j�Z       o��	�,�[���A�*L

Loss}-1?

Adam/Loss/rawE�=

Accuracy/__raw_  �?

Accuracy�t?�ø�Z       o��	NE�[���A�*L

Lossg!?

Adam/Loss/rawi~�=

Accuracy/__raw_  �?

AccuracyK@u?c"��Z       o��	�^�[���A�*L

Loss>�?

Adam/Loss/rawS�>

Accuracy/__raw_  �?

AccuracywSv?��~Z       o��	�z�[���A�*L

Loss-�?

Adam/Loss/rawGҤ=

Accuracy/__raw_  �?

AccuracyKw?�`�gZ       o��	[��[���A�*L

Loss,�>

Adam/Loss/raw�R>

Accuracy/__raw_  �?

Accuracy*x?L��Z       o��	��[���A�*L

Loss��>

Adam/Loss/raw~��=

Accuracy/__raw_  �?

Accuracy��x?�E��Z       o��	+��[���A�*L

Loss���>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy%�y?錌�Z       o��	��[���A�*L

LossO�>

Adam/Loss/raw�J�=

Accuracy/__raw_  �?

Accuracy�Iz?�r͙Z       o��	��[���A�*L

Loss��>

Adam/Loss/raw(��=

Accuracy/__raw_  �?

Accuracy��z?��Z       o��	�/�[���A�*L

Loss�d�>

Adam/Loss/raw�l]>

Accuracy/__raw_  �?

Accuracy{_{?���Z       o��	�K�[���A�*L

Loss�l�>

Adam/Loss/raw`x�=

Accuracy/__raw_  �?

Accuracy��{?�E=�Z       o��	�e�[���A�*L

Loss'8�>

Adam/Loss/raw&;�=

Accuracy/__raw_  �?

Accuracy�@|?ċ�/Z       o��	���[���A�*L

Loss7�>

Adam/Loss/raw�Ʀ=

Accuracy/__raw_  �?

Accuracy|�|?>t�Z       o��	���[���A�*L

Lossݱ�>

Adam/Loss/rawBZy=

Accuracy/__raw_  �?

Accuracy��|?�8�sZ       o��	���[���A�*L

Loss6�x>

Adam/Loss/raw�j�=

Accuracy/__raw_  �?

Accuracy�D}?b�E_Z       o��	��[���A�*L

Loss	cg>

Adam/Loss/raw�U>

Accuracy/__raw_  �?

Accuracy�}?�eL�Z       o��	n��[���A�*L

Loss�e>

Adam/Loss/rawf�T>

Accuracy/__raw_  �?

Accuracyr�}?z��Z       o��	��[���A�*L

LossP�c>

Adam/Loss/rawQA>

Accuracy/__raw_  �?

Accuracy~?��Z       o��	
0�[���A�*L

Loss��[>

Adam/Loss/rawYփ=

Accuracy/__raw_  �?

Accuracy5~?2�bZ       o��	�H�[���A�*L

Lossa(L>

Adam/Loss/raw*N�=

Accuracy/__raw_  �?

Accuracy�b~?��E�Z       o��	Jb�[���A�*L

Loss��A>

Adam/Loss/rawg�=

Accuracy/__raw_  �?

AccuracyH�~?]�nZ       o��	l|�[���A�*L

LossA�5>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracyt�~?��� Z       o��	l��[���A�*L

Loss�*>

Adam/Loss/raw3�^>

Accuracy/__raw_  �?

Accuracy��~?�ќZ       o��	���[���A�*L

Loss��/>

Adam/Loss/rawP�A

Accuracy/__raw_  �>

Accuracy�~?�jY?Z       o��	y��[���A�*L

Loss���?

Adam/Loss/raww��=

Accuracy/__raw_  �?

Accuracy��k?��FZ       o��	���[���A�*L

Loss�|?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��m?ϣ�Z       o��	d�[���A�*L

Loss�f?

Adam/Loss/rawqh�=

Accuracy/__raw_  �?

Accuracy$�o?���Z       o��	�"�[���A�*L

Loss��Q?

Adam/Loss/raw�(>

Accuracy/__raw_  �?

AccuracyOq? ��Z       o��	D�[���A�*L

Loss-A?

Adam/Loss/raw�g�=

Accuracy/__raw_  �?

Accuracy �r?8G�8Z       o��	�`�[���A�*L

Loss(\0?

Adam/Loss/raw��E>

Accuracy/__raw_  �?

Accuracy�t?�n��Z       o��	�y�[���A�*L

LossU�#?

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyAJu?���Z       o��	���[���A�*L

Loss�W?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyn\v?� �Z       o��	���[���A�*L

LossYr?

Adam/Loss/raw�j�=

Accuracy/__raw_  �?

Accuracy0Sw?)���Z       o��	���[���A�*L

Loss~��>

Adam/Loss/raw̸�@

Accuracy/__raw_  �>

AccuracyE1x?2�oZ       o��	?��[���A�*L

Loss�}�?

Adam/Loss/raw�C�=

Accuracy/__raw_  �?

Accuracy��e?�C4Z       o��	��[���A�*L

Loss�?

Adam/Loss/raw���=

Accuracy/__raw_  �?

AccuracyYeh?�j[Z       o��	�2�[���A�*L

Loss6Eh?

Adam/Loss/raw�g�=

Accuracy/__raw_  �?

Accuracy��j?���Z       o��	Y�[���A�*L

Loss��S?

Adam/Loss/raw%è=

Accuracy/__raw_  �?

Accuracyt�l?|�TBZ       o��	x�[���A�*L

Loss9�@?

Adam/Loss/raw�cJ>

Accuracy/__raw_  �?

Accuracy��n?d�^Z       o��	��[���A�*L

Loss�q2?

Adam/Loss/rawF/A>

Accuracy/__raw_  �?

Accuracyj�p?�NEMZ       o��	��[���A�*L

Loss�m%?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�r?��Z       o��	���[���A�*L

LossS�?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�ts?0�#�Z       o��	���[���A�*L

Loss�h	?

Adam/Loss/rawPa�=

Accuracy/__raw_  �?

Accuracyѵt?����Z       o��	w�[���A�*L

Loss_�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��u?v���Z       o��	�8�[���A�*L

Lossv��>

Adam/Loss/raw�X�=

Accuracy/__raw_  �?

Accuracy��v?h��^Z       o��	7S�[���A�*L

Loss��>

Adam/Loss/rawhN�=

Accuracy/__raw_  �?

Accuracy�w?Si#�Z       o��	�k�[���A�*L

Loss:��>

Adam/Loss/raw(�=

Accuracy/__raw_  �?

Accuracy��x?���Z       o��	���[���A�*L

Loss�ܵ>

Adam/Loss/raw�`:>

Accuracy/__raw_  �?

AccuracyaUy?��_;Z       o��	Ʀ�[���A�*L

Loss���>

Adam/Loss/raw�4�=

Accuracy/__raw_  �?

Accuracy z?��$Z       o��	z��[���A�*L

Loss��>

Adam/Loss/raw�ϳ=

Accuracy/__raw_  �?

Accuracy��z?;�`Z       o��	v��[���A�*L

LossEk�>

Adam/Loss/raw"�L>

Accuracy/__raw_  �?

Accuracy�#{?A�A�Z       o��	���[���A�*L

Losss��>

Adam/Loss/raw�L>

Accuracy/__raw_  �?

AccuracyJ�{?�3,YZ       o��	��[���A�*L

Lossiz�>

Adam/Loss/raw���=

Accuracy/__raw_  �?

AccuracyC|?Ú[Z       o��	�8�[���A�*L

Lossv��>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy	u|?�jpZ       o��	�T�[���A�*L

Losst�v>

Adam/Loss/raw��H>

Accuracy/__raw_  �?

Accuracy��|?��Z       o��	�n�[���A�*L

Lossw r>

Adam/Loss/rawو�=

Accuracy/__raw_  �?

Accuracy\!}?��7Z       o��	ۈ�[���A�*L

LossCd>

Adam/Loss/raw{F�=

Accuracy/__raw_  �?

Accuracy�j}?�{=Z       o��	Ϥ�[���A�*L

LossupW>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�}?�k��Z       o��	���[���A�*L

LossvK>

Adam/Loss/rawg$�=

Accuracy/__raw_  �?

Accuracys�}?��aZ       o��	���[���A�*L

Loss�<?>

Adam/Loss/raw~��=

Accuracy/__raw_  �?

Accuracy~?��2�Z       o��	+��[���A�*L

Loss2�5>

Adam/Loss/rawU��=

Accuracy/__raw_  �?

Accuracy4N~?�[>Z       o��	�[���A�*L

Loss��->

Adam/Loss/raw	!�=

Accuracy/__raw_  �?

Accuracy�y~?��{Z       o��	�5�[���A�*L

Loss0�&>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��~?)�wBZ       o��	^�[���A�*L

LossD�>

Adam/Loss/raw�.>

Accuracy/__raw_  �?

Accuracy��~?طAZ       o��	(}�[���A�*L

Loss;Y!>

Adam/Loss/rawFk�=

Accuracy/__raw_  �?

Accuracyc�~?���NZ       o��	���[���A�*L

LossE�>

Adam/Loss/raw�1k>

Accuracy/__raw_  �?

Accuracy��~?0-lZ       o��	ղ�[���A�*L

LossO�">

Adam/Loss/raw��j>

Accuracy/__raw_  �?

Accuracyw?!�V7Z       o��	���[���A�*L

Loss��)>

Adam/Loss/rawJ�t=

Accuracy/__raw_  �?

Accuracy�0?�/c:Z       o��	��[���A�*L

Loss�>

Adam/Loss/rawqj�=

Accuracy/__raw_  �?

AccuracyEE?KZ       o��	��[���A�*L

Loss4�>

Adam/Loss/rawlp�=

Accuracy/__raw_  �?

Accuracy�W?\D@Z       o��	��[���A�*L

LossN�>

Adam/Loss/raw�GM>

Accuracy/__raw_  �?

Accuracy�h?�*DoZ       o��	�L�[���A�*L

Loss��>

Adam/Loss/raw��L>

Accuracy/__raw_  �?

Accuracy�w?C&�+Z       o��	nm�[���A�*L

Loss| >

Adam/Loss/raw�V�=

Accuracy/__raw_  �?

Accuracy|�?v~JJZ       o��	ʉ�[���A�*L

Lossa�>

Adam/Loss/rawU�=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	i��[���A�*L

Loss��>

Adam/Loss/raw�X>

Accuracy/__raw_  �?

AccuracyÜ?~s?�Z       o��	���[���A�*L

LossS>

Adam/Loss/raw%$�=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	D��[���A�*L

Loss��>

Adam/Loss/rawm��=

Accuracy/__raw_  �?

Accuracy��?p,$�Z       o��	+��[���A�*L

Loss{�>

Adam/Loss/raw"%�=

Accuracy/__raw_  �?

Accuracy��?��!qZ       o��	�[���A�*L

Loss�>

Adam/Loss/raw�O�=

Accuracy/__raw_  �?

Accuracy�?`p�yZ       o��	�,�[���A�*L

Loss���=

Adam/Loss/rawu�=

Accuracy/__raw_  �?

Accuracyg�?8�޹Z       o��	�L�[���A�*L

Loss���=

Adam/Loss/raw�Θ=

Accuracy/__raw_  �?

AccuracyC�?��Z       o��		q�[���A�*L

Loss84�=

Adam/Loss/raw�e�=

Accuracy/__raw_  �?

Accuracy��?�yZ       o��	��[���A�*L

Loss���=

Adam/Loss/rawZX�=

Accuracy/__raw_  �?

AccuracyH�?��lsZ       o��	���[���A�*L

Loss��=

Adam/Loss/rawB>

Accuracy/__raw_  �?

Accuracy��?��9)Z       o��	���[���A�*L

Loss��=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracyf�?�DfZ       o��	`��[���A�*L

Loss���=

Adam/Loss/raw�^�=

Accuracy/__raw_  �?

Accuracy��?V���Z       o��	��[���A�*L

Loss��=

Adam/Loss/raw�Ѹ=

Accuracy/__raw_  �?

Accuracy��?eZ       o��	!�[���A�*L

Loss*�=

Adam/Loss/rawV��=

Accuracy/__raw_  �?

Accuracy��?��Z       o��	G:�[���A�*L

Loss.��=

Adam/Loss/raw/�#>

Accuracy/__raw_  �?

AccuracyM�?��ŕZ       o��	�T�[���A�*L

Loss�!�=

Adam/Loss/raw(��=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	Cr�[���A�*L

Loss���=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?�Π�Z       o��	��[���A�*L

Loss���=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyt�?	efUZ       o��	���[���A�*L

Loss���=

Adam/Loss/raw$L=

Accuracy/__raw_  �?

Accuracy�?#��@Z       o��	���[���A�*L

Loss]N�=

Adam/Loss/rawxp;>

Accuracy/__raw_  �?

Accuracy��?��h�Z       o��	���[���A�*L

Loss�)�=

Adam/Loss/raw4�J>

Accuracy/__raw_  �?

Accuracy��?Ω��Z       o��	�[���A�*L

Loss���=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy%�?�&�Z       o��	.�[���A�*L

Loss�k�=

Adam/Loss/raw�	�=

Accuracy/__raw_  �?

Accuracy;�?��n�Z       o��	ZG�[���A�*L

Loss�.�=

Adam/Loss/raw~4�=

Accuracy/__raw_  �?

Accuracy5�?H���Z       o��	$a�[���A�*L

Loss�H�=

Adam/Loss/rawz�=

Accuracy/__raw_  �?

Accuracy�?��Z       o��	�~�[���A�*L

Loss�V�=

Adam/Loss/raw�F�=

Accuracy/__raw_  �?

Accuracy��?[}�Z       o��	M��[���A�*L

Loss�n�=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?ƺ��Z       o��	
��[���A�*L

Lossx��=

Adam/Loss/raw �=

Accuracy/__raw_  �?

Accuracy;�?;�.Z       o��	���[���A�*L

Loss��=

Adam/Loss/rawQ��=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	���[���A�*L

Lossƨ�=

Adam/Loss/raw�� >

Accuracy/__raw_  �?

AccuracyT�?��gZ       o��	��[���A�*L

Lossgn�=

Adam/Loss/raw`pu=

Accuracy/__raw_  �?

Accuracy��?=ÓZ       o��	�<�[���A�*L

Loss�(�=

Adam/Loss/raw�޿=

Accuracy/__raw_  �?

Accuracy8�?�r:Z       o��	�a�[���A�*L

Loss%��=

Adam/Loss/rawG4�=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	=��[���A�*L

Loss�`�=

Adam/Loss/raw1;>

Accuracy/__raw_  �?

Accuracy��?�uVZ       o��	s��[���A�*L

Loss�z�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy>�?fp�7Z       o��	���[���A�*L

Loss���=

Adam/Loss/raw�*>

Accuracy/__raw_  �?

Accuracy��?�X�}Z       o��	3��[���A�*L

Loss#L�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?q��Z       o��	r��[���A�*L

Loss���=

Adam/Loss/rawꈢ=

Accuracy/__raw_  �?

Accuracy��?p:�Z       o��	#�[���A�*L

Loss3��=

Adam/Loss/raw'�=

Accuracy/__raw_  �?

Accuracy1�?Roa�Z       o��	0�[���A�*L

Loss/�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy_�?�O/�Z       o��	�b�[���A�*L

Loss^W�=

Adam/Loss/raw�a�=

Accuracy/__raw_  �?

Accuracy��?y�Z-Z       o��	��[���A�*L

Loss��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�ݙeZ       o��	G��[���A�*L

Loss�&�=

Adam/Loss/raw6��=

Accuracy/__raw_  �?

Accuracy��?̤&PZ       o��	��[���A�*L

Loss��=

Adam/Loss/raw4�=

Accuracy/__raw_  �?

Accuracy��?�(Z       o��	"��[���A�*L

Loss��=

Adam/Loss/rawh�6>

Accuracy/__raw_  �?

Accuracy
�?a�Z       o��	��[���A�*L

Loss�#�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy#�?�\(Z       o��	=�[���A�*L

Loss�,�=

Adam/Loss/rawa�=

Accuracy/__raw_  �?

Accuracy9�?;��@Z       o��	�Y�[���A�*L

LossI��=

Adam/Loss/raw_̢=

Accuracy/__raw_  �?

AccuracyM�?�_�^Z       o��	�y�[���A�*L

Losse��=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy_�?w��(Z       o��	B��[���A�*L

Loss'��=

Adam/Loss/rawr�>

Accuracy/__raw_  �?

Accuracyo�?��Z       o��	k��[���A�*L

Loss�(�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy~�?�S��Z       o��	]��[���A�*L

Loss��=

Adam/Loss/rawA*>

Accuracy/__raw_  �?

Accuracy��?�N��Z       o��	���[���A�*L

Loss@��=

Adam/Loss/raw��)>

Accuracy/__raw_  �?

Accuracy��?C�'Z       o��	m�[���A�*L

Losss��=

Adam/Loss/raw�ʖ=

Accuracy/__raw_  �?

Accuracy��?��EZ       o��	\=�[���A�*L

Lossa��=

Adam/Loss/rawj��=

Accuracy/__raw_  �?

Accuracy��?/'��Z       o��	�b�[���A�*L

LossH(�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�\W7Z       o��	���[���A�*L

Loss���=

Adam/Loss/raw)��=

Accuracy/__raw_  �?

Accuracy��?Q�Z       o��	q��[���A�*L

Loss27�=

Adam/Loss/raw�5�=

Accuracy/__raw_  �?

Accuracy��?۽��Z       o��	���[���A�*L

Loss݃�=

Adam/Loss/rawHȜ=

Accuracy/__raw_  �?

Accuracy��?�rtZ       o��	��[���A�*L

Lossq�=

Adam/Loss/raw8s?>

Accuracy/__raw_  �?

Accuracy��?�C!zZ       o��	�4�[���A�*L

Loss=c�=

Adam/Loss/raw�t=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	UP�[���A�*L

Loss�d�=

Adam/Loss/raw�o?>

Accuracy/__raw_  �?

Accuracy��?����Z       o��	�k�[���A�*L

Loss|W�=

Adam/Loss/rawj?>

Accuracy/__raw_  �?

Accuracy��?Q�͊Z       o��	���[���A�*L

Loss�i�=

Adam/Loss/raw~�=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	7��[���A�*L

Loss�v�=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?4H4Z       o��	���[���A�*L

Loss1�=

Adam/Loss/raw�~�=

Accuracy/__raw_  �?

Accuracy��?p9CRZ       o��	���[���A�*L

Loss��=

Adam/Loss/rawb��=

Accuracy/__raw_  �?

Accuracy��?1%�Z       o��	5�[���A�*L

Loss���=

Adam/Loss/raw:�=

Accuracy/__raw_  �?

Accuracy��?"��Z       o��	,+�[���A�*L

Loss��=

Adam/Loss/raw
�=

Accuracy/__raw_  �?

Accuracy��?�h�Z       o��	�E�[���A�*L

Loss+ �=

Adam/Loss/rawGq>

Accuracy/__raw_  �?

Accuracy��?����Z       o��	xa�[���A�*L

Loss�c�=

Adam/Loss/rawZ�=

Accuracy/__raw_  �?

Accuracy��?6�gZ       o��	�|�[���A�*L

LossH\�=

Adam/Loss/raw�2�=

Accuracy/__raw_  �?

Accuracy��?%�oZ       o��	���[���A�*L

Loss$��=

Adam/Loss/raw_��=

Accuracy/__raw_  �?

Accuracy��?�_��Z       o��	հ�[���A�*L

Loss��=

Adam/Loss/raw�i�=

Accuracy/__raw_  �?

Accuracy��?�*k�Z       o��	W��[���A�*L

Loss�g�=

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��?G��&Z       o��	���[���A�*L

Loss�[�=

Adam/Loss/raw��#>

Accuracy/__raw_  �?

Accuracy��?��b�Z       o��	k�[���A�*L

Loss��=

Adam/Loss/raw�x�=

Accuracy/__raw_  �?

Accuracy��?���YZ       o��	�(�[���A�*L

Loss��=

Adam/Loss/raw3�=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	�F�[���A�*L

LossZ�=

Adam/Loss/raw�4�=

Accuracy/__raw_  �?

Accuracy��?���LZ       o��	�b�[���A�*L

Loss�o�=

Adam/Loss/raw�{p=

Accuracy/__raw_  �?

Accuracy��?���2Z       o��	U��[���A�*L

Loss�j�=

Adam/Loss/raw�]s=

Accuracy/__raw_  �?

Accuracy��?�aflZ       o��	Ϡ�[���A�*L

Loss�q�=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?��#zZ       o��	���[���A�*L

LossW��=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?��GZ       o��	��[���A�*L

Loss�R�=

Adam/Loss/raw�%>

Accuracy/__raw_  �?

Accuracy��?_�Z       o��	+��[���A�*L

Loss}��=

Adam/Loss/rawꬷ=

Accuracy/__raw_  �?

Accuracy��?5䷾Z       o��	��[���A�*L

Loss�b�=

Adam/Loss/raw\�=

Accuracy/__raw_  �?

Accuracy��?��Z       o��	�7�[���A�*L

LossIH�=

Adam/Loss/raw�do=

Accuracy/__raw_  �?

Accuracy��?4A��Z       o��	HQ�[���A�*L

Loss��=

Adam/Loss/raw!n=

Accuracy/__raw_  �?

Accuracy��?�!tZZ       o��	Yk�[���A�*L

Loss+��=

Adam/Loss/raw�n�=

Accuracy/__raw_  �?

Accuracy��?A�Z       o��	C��[���A�*L

Loss;f�=

Adam/Loss/rawڶ)>

Accuracy/__raw_  �?

Accuracy��?a+s�Z       o��	���[���A�*L

Loss.��=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?�ߕfZ       o��	���[���A�*L

Loss��=

Adam/Loss/rawd�=

Accuracy/__raw_  �?

Accuracy��?�K�Z       o��	���[���A�*L

Loss�r�=

Adam/Loss/rawR��=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	�
�[���A�*L

Loss�Ĳ=

Adam/Loss/rawP�=

Accuracy/__raw_  �?

Accuracy��?+���Z       o��	�6�[���A�*L

Loss���=

Adam/Loss/rawv#>

Accuracy/__raw_  �?

Accuracy��?P@�+Z       o��	�_�[���A�*L

Loss7��=

Adam/Loss/raw� �=

Accuracy/__raw_  �?

Accuracy��?#j
�Z       o��	,��[���A�*L

Loss�L�=

Adam/Loss/raw��r=

Accuracy/__raw_  �?

Accuracy��?ǋ��Z       o��	^��[���A�*L

Loss&3�=

Adam/Loss/raw&�q=

Accuracy/__raw_  �?

Accuracy��?h�aZ       o��	���[���A�*L

Loss�Ʋ=

Adam/Loss/rawhV>

Accuracy/__raw_  �?

Accuracy��?�Z       o��	���[���A�*L

Loss1ľ=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�`hZ       o��	��[���A�*L

Loss���=

Adam/Loss/raw�Q�=

Accuracy/__raw_  �?

Accuracy��?��3�Z       o��	*�[���A�*L

Losst޸=

Adam/Loss/raw�m->

Accuracy/__raw_  �?

Accuracy��?HV��Z       o��	�H�[���A�*L

Lossf�=

Adam/Loss/raw��,>

Accuracy/__raw_  �?

Accuracy��?k�M�Z       o��	x�[���A�*L

Loss���=

Adam/Loss/raw�Y{=

Accuracy/__raw_  �?

Accuracy��?{��Z       o��	���[���A�*L

Loss	��=

Adam/Loss/rawC|�=

Accuracy/__raw_  �?

Accuracy��?s�NZ       o��	ް�[���A�*L

LossB�=

Adam/Loss/rawX��=

Accuracy/__raw_  �?

Accuracy��?4ߩ�Z       o��	F��[���A�*L

Loss*6�=

Adam/Loss/raw�l=

Accuracy/__raw_  �?

Accuracy��?7�_Z       o��	q��[���A�*L

Loss��=

Adam/Loss/raw��k=

Accuracy/__raw_  �?

Accuracy��?uGK}Z       o��	G�[���A�*L

Lossp�=

Adam/Loss/raw;C�=

Accuracy/__raw_  �?

Accuracy��?�C�Z       o��	�)�[���A�*L

Loss�x�=

Adam/Loss/raw��$>

Accuracy/__raw_  �?

Accuracy��?&s��Z       o��	CU�[���A�*L

Lossҿ=

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��?/��Z       o��	�u�[���A�*L

Loss�c�=

Adam/Loss/raw%5k=

Accuracy/__raw_  �?

Accuracy��?+,�LZ       o��	��[���A�*L

Loss��=

Adam/Loss/raw��j=

Accuracy/__raw_  �?

Accuracy��?�^٨Z       o��	��[���A�*L

Lossy@�=

Adam/Loss/raw<^�=

Accuracy/__raw_  �?

Accuracy��?�mHBZ       o��	���[���A�*L

Loss]�=

Adam/Loss/rawB>�=

Accuracy/__raw_  �?

Accuracy��?j41Z       o��	���[���A�*L

Loss�s�=

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��?�l<$Z       o��	6�[���A�*L

Loss���=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?�^�uZ       o��	�]�[���A�*L

Loss��=

Adam/Loss/rawg��=

Accuracy/__raw_  �?

Accuracy��?\1��Z       o��	�[���A�*L

Loss���=

Adam/Loss/raw�m�=

Accuracy/__raw_  �?

Accuracy��?R&z-Z       o��	w��[���A�*L

Loss ̷=

Adam/Loss/raw�"l=

Accuracy/__raw_  �?

Accuracy��?yb��Z       o��	���[���A�*L

LossW9�=

Adam/Loss/rawF@u=

Accuracy/__raw_  �?

Accuracy��?N��LZ       o��	���[���A�*L

Loss�ë=

Adam/Loss/rawu=

Accuracy/__raw_  �?

Accuracy��?�0�Z       o��	C�[���A�*L

Loss�֦=

Adam/Loss/rawe5t=

Accuracy/__raw_  �?

Accuracy��?��jIZ       o��	)"�[���A�*L

Loss_]�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?� JVZ       o��	�>�[���A�*L

Loss׭�=

Adam/Loss/raw�A

Accuracy/__raw_   >

Accuracy��?˞��Z       o��	�b�[���A�*L

Loss�a?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��i?&��RZ       o��	��[���A�*L

LossUvM?

Adam/Loss/raw��+=

Accuracy/__raw_  �?

Accuracy�k?K�-Z       o��	)��[���A�*L

Loss�9?

Adam/Loss/raw��+=

Accuracy/__raw_  �?

Accuracy �m?_�Z       o��	���[���A�*L

Loss�v(?

Adam/Loss/rawa��=

Accuracy/__raw_  �?

Accuracy��o?�WVvZ       o��	x��[���A�*L

Loss��?

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy�Mq?�z��Z       o��	��[���A�*L

Loss��?

Adam/Loss/raw="
>

Accuracy/__raw_  �?

Accuracy��r?5j�Z       o��	o-�[���A�*L

Loss;=?

Adam/Loss/raw~��=

Accuracy/__raw_  �?

Accuracy�t?9-ScZ       o��	�H�[���A�*L

Loss:E�>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy@Iu?���NZ       o��	l�[���A�*L

Loss>5�>

Adam/Loss/rawQg�=

Accuracy/__raw_  �?

Accuracy�[v?ϊ�|Z       o��	���[���A�*L

Loss���>

Adam/Loss/raw��m=

Accuracy/__raw_  �?

Accuracy_Rw?�.��Z       o��	��[���A�*L

Loss�/�>

Adam/Loss/raw*s>

Accuracy/__raw_  �?

Accuracy�0x?�t?�Z       o��	���[���A�*L

Loss�>

Adam/Loss/rawwq�=

Accuracy/__raw_  �?

Accuracy{�x?f8EoZ       o��	,�[���A�*L

Loss���>

Adam/Loss/rawMm�=

Accuracy/__raw_  �?

Accuracyo�y?8N��Z       o��	�2�[���A�*L

Loss��>

Adam/Loss/raw�t~=

Accuracy/__raw_  �?

AccuracydNz?�d�Z       o��	�[�[���A�*L

Loss���>

Adam/Loss/raw_u�=

Accuracy/__raw_  �?

Accuracy'�z?��<Z       o��	
��[���A�*L

Loss0�>

Adam/Loss/raw4�=

Accuracy/__raw_  �?

AccuracyVc{?���pZ       o��	���[���A�*L

Lossx:n>

Adam/Loss/rawX�o=

Accuracy/__raw_  �?

Accuracyg�{?��Z       o��	M��[���A�*L

Losshe\>

Adam/Loss/rawh�n=

Accuracy/__raw_  �?

Accuracy�C|?�4��Z       o��	�1�[���A�*L

Loss�TL>

Adam/Loss/rawnv@=

Accuracy/__raw_  �?

AccuracyL�|?P��Z       o��	�^�[���A�*L

Loss��<>

Adam/Loss/raw]->

Accuracy/__raw_  �?

Accuracy^�|?{��8Z       o��	+��[���A�*L

LossI%;>

Adam/Loss/raw�u�=

Accuracy/__raw_  �?

Accuracy�F}?wЭ�Z       o��	:��[���A�*L

Lossqg/>

Adam/Loss/raw�ww=

Accuracy/__raw_  �?

Accuracy��}?�{}Z       o��	/��[���A�*L

Loss�$>

Adam/Loss/raw��v=

Accuracy/__raw_  �?

AccuracyL�}?����Z       o��	��[���A�*L

Loss��>

Adam/Loss/rawV6(>

Accuracy/__raw_  �?

Accuracy�~?\r�Z       o��	-�[���A�*L

Loss-B>

Adam/Loss/raw\I�@

Accuracy/__raw_  �>

Accuracy�6~?*y�Z       o��	�R�[���A�*L

Loss�\?

Adam/Loss/raw`�=

Accuracy/__raw_  �?

Accuracy!1k?�-�Z       o��	7��[���A�*L

Loss�?

Adam/Loss/raw]�=

Accuracy/__raw_  �?

Accuracy�Em?�^FZ       o��	ȷ�[���A�*L

Loss�V ?

Adam/Loss/raw6
�=

Accuracy/__raw_  �?

Accuracy<%o?�ABZ       o��	���[���A�*L

LossG\�>

Adam/Loss/raw6�>

Accuracy/__raw_  �?

Accuracy��p?��Z       o��	���[���A�*L

Loss�t�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy
Yr?|�J�Z       o��	?�[���A�*L

Loss=�>

Adam/Loss/raw��v=

Accuracy/__raw_  �?

Accuracy��s?��!Z       o��	�9�[���A�*L

LossAM�>

Adam/Loss/raw=

Accuracy/__raw_  �?

Accuracy�t?�P��Z       o��	X�[���A�*L

Loss@/�>

Adam/Loss/raw?؁=

Accuracy/__raw_  �?

Accuracy-v?l"�Z       o��	-z�[���A�*L

Loss���>

Adam/Loss/rawBQ>

Accuracy/__raw_  �?

Accuracy�
w?��XZ       o��	|��[���A�*L

LossR��>

Adam/Loss/raw���=

Accuracy/__raw_  �?

AccuracyC�w?'��Z       o��	!��[���A�*L

Loss�:�>

Adam/Loss/raw`ٛ=

Accuracy/__raw_  �?

Accuracy��x?�B�Z       o��	=��[���A�*L

Loss�}>

Adam/Loss/rawK�>

Accuracy/__raw_  �?

Accuracy`xy?��}Z       o��	��[���A�*L

LossJzs>

Adam/Loss/rawC�>

Accuracy/__raw_  �?

Accuracy�z?j'׹Z       o��	�9�[���A�*L

Loss��j>

Adam/Loss/raw1�=

Accuracy/__raw_  �?

Accuracy��z?�&SZ       o��	�U�[���A�*L

Loss�'[>

Adam/Loss/raw��l=

Accuracy/__raw_  �?

Accuracyc={?#}�RZ       o��	�q�[���A�*L

Loss�(K>

Adam/Loss/raw�Hm=

Accuracy/__raw_  �?

Accuracy@�{?�ց�Z       o��	ގ�[���A�*L

Lossh�<>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�$|?I�L8Z       o��	��[���A�*L

Loss�m1>

Adam/Loss/raw�>�=

Accuracy/__raw_  �?

Accuracy��|?][s�Z       o��	���[���A�*L

Loss�2'>

Adam/Loss/raw�J >

Accuracy/__raw_  �?

Accuracyx�|?�(��Z       o��	��[���A�*L

Loss�&>

Adam/Loss/rawP�=

Accuracy/__raw_  �?

Accuracyl0}?���Z       o��	�<�[���A�*L

LossKM>

Adam/Loss/raw~�>

Accuracy/__raw_  �?

Accuracyax}?+�ckZ       o��	1[�[���A�*L

Loss�>

Adam/Loss/rawh1�=

Accuracy/__raw_  �?

Accuracy$�}?cݳ�Z       o��	�u�[���A�*L

Loss��>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracym�}?wL�Z       o��	m��[���A�*L

Loss�V
>

Adam/Loss/rawRx�=

Accuracy/__raw_  �?

Accuracy�'~?n�=Z       o��	���[���A�*L

Loss;�>

Adam/Loss/raw�&�=

Accuracy/__raw_  �?

AccuracyW~?�ZK�Z       o��	���[���A�*L

Loss���=

Adam/Loss/rawY>

Accuracy/__raw_  �?

Accuracy��~?��Z       o��	��[���A�*L

LossJ� >

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracyԧ~?��!Z       o��	e�[���A�*L

Loss{��=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy?�~?>";�Z       o��	6<�[���A�*L

Loss���=

Adam/Loss/rawB�q=

Accuracy/__raw_  �?

Accuracy9�~?��Z       o��	�\�[���A�*L

Loss��=

Adam/Loss/raw�C=

Accuracy/__raw_  �?

Accuracy?Ơ1.Z       o��	�w�[���A�*L

Loss���=

Adam/Loss/rawXg`=

Accuracy/__raw_  �?

Accuracy1?���Z       o��	���[���A�*L

LossYt�=

Adam/Loss/raw^�=

Accuracy/__raw_  �?

Accuracy�4?�0o(Z       o��	2��[���A�*L

Loss�6�=

Adam/Loss/raw���=

Accuracy/__raw_  �?

AccuracyI?�10AZ       o��	`��[���A�*L

Loss�\�=

Adam/Loss/raw��O=

Accuracy/__raw_  �?

Accuracyc[?�H��Z       o��	��[���A�*L

Loss�=

Adam/Loss/rawC�>

Accuracy/__raw_  �?

Accuracy�k?Z�SRZ       o��	��[���A�*L

Loss^��=

Adam/Loss/raw~ȧ=

Accuracy/__raw_  �?

Accuracy�z?."Z       o��	�8�[���A�*L

Loss{��=

Adam/Loss/raw=V�=

Accuracy/__raw_  �?

Accuracy��?�6�xZ       o��	�]�[���A�*L

Loss��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�q�Z       o��	�z�[���A�*L

Loss�!�=

Adam/Loss/rawE�~=

Accuracy/__raw_  �?

Accuracy̞?b	CNZ       o��	F��[���A�*L

Loss�@�=

Adam/Loss/raw�_�=

Accuracy/__raw_  �?

Accuracy��?LZ�Z       o��	:��[���A�*L

Loss���=

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyD�?=��Z       o��	u��[���A�*L

Loss��=

Adam/Loss/raw1v>

Accuracy/__raw_  �?

Accuracy$�?u��:Z       o��	`��[���A�*L

Loss6�=

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy:�?�]J�Z       o��	��[���A�*L

Loss�1�=

Adam/Loss/raw�%�=

Accuracy/__raw_  �?

Accuracy��?ʟ�Z       o��	�B�[���A�*L

Loss<J�=

Adam/Loss/raw>�c=

Accuracy/__raw_  �?

AccuracyX�?0�
�Z       o��	�g�[���A�*L

Loss���=

Adam/Loss/rawBG=

Accuracy/__raw_  �?

Accuracy��?yn�HZ       o��	M��[���A�*L

Loss
��=

Adam/Loss/rawN�E=

Accuracy/__raw_  �?

Accuracy(�?�qZ�Z       o��	@��[���A�*L

Loss�]�=

Adam/Loss/raw��D=

Accuracy/__raw_  �?

AccuracyW�?Ŵ��Z       o��	w��[���A�*L

Loss��=

Adam/Loss/raw��^=

Accuracy/__raw_  �?

Accuracy�?O0��Z       o��	E��[���A�*L

Loss]j�=

Adam/Loss/raw��1>

Accuracy/__raw_  �?

Accuracy�?��dZ       o��	���[���A�*L

Loss��=

Adam/Loss/rawԣ�=

Accuracy/__raw_  �?

Accuracy��?�'�/Z       o��	G�[���A�*L

Loss��=

Adam/Loss/rawo�=

Accuracy/__raw_  �?

AccuracyK�?��8�Z       o��	�B�[���A�*L

Loss=R�=

Adam/Loss/rawX =

Accuracy/__raw_  �?

Accuracy��?����Z       o��	b�[���A�*L

Loss
�=

Adam/Loss/raw� �=

Accuracy/__raw_  �?

Accuracy��?Y��Z       o��	��[���A�*L

Loss٣=

Adam/Loss/rawX>

Accuracy/__raw_  �?

Accuracy��?�f��Z       o��	���[���A�*L

Loss�|�=

Adam/Loss/raw�d>

Accuracy/__raw_  �?

Accuracy��?;���Z       o��	k��[���A�*L

Loss�j�=

Adam/Loss/raw�	�=

Accuracy/__raw_  �?

Accuracyi�?Ѵ�Z       o��	���[���A�*L

Loss2��=

Adam/Loss/rawGӛ=

Accuracy/__raw_  �?

Accuracy��??�C�Z       o��	Z��[���A�*L

Loss� �=

Adam/Loss/rawWz)=

Accuracy/__raw_  �?

Accuracy/�?['G�Z       o��	z�[���A�*L

Loss���=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy^�?xE}Z       o��	�9�[���A�*L

Lossn/�=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracyn�?~!@�Z       o��	�Z�[���A�*L

Lossk�=

Adam/Loss/raw�׊=

Accuracy/__raw_  �?

Accuracyc�?�Ƈ�Z       o��	�w�[���A�*L

Loss")�=

Adam/Loss/raw�i�=

Accuracy/__raw_  �?

Accuracy@�?l6uZ       o��	%��[���A�*L

Loss�/�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�?5<�pZ       o��	?��[���A�*L

Loss1�=

Adam/Loss/raw@!�=

Accuracy/__raw_  �?

Accuracy��?��ԝZ       o��	y��[���A�*L

Loss͡=

Adam/Loss/raw�y=

Accuracy/__raw_  �?

AccuracyZ�?�N��Z       o��	���[���A�*L

Loss��=

Adam/Loss/raw!�f=

Accuracy/__raw_  �?

Accuracy��?Y��Z       o��	0�[���A�*L

Loss#̙=

Adam/Loss/raw�te=

Accuracy/__raw_  �?

Accuracym�?�T$�Z       o��	�>�[���A�*L

Loss��=

Adam/Loss/raw�m>

Accuracy/__raw_  �?

Accuracy��?�y��Z       o��	Eg�[���A�*L

Loss���=

Adam/Loss/raw��]=

Accuracy/__raw_  �?

AccuracyK�?N_{�Z       o��	J��[���A�*L

Loss<��=

Adam/Loss/rawZnU=

Accuracy/__raw_  �?

Accuracy��?4Ow8Z       o��	f��[���A�*L

Loss!z�=

Adam/Loss/raw�غ=

Accuracy/__raw_  �?

Accuracy��?���!Z       o��	��[���A�*L

Loss`М=

Adam/Loss/raw8h�=

Accuracy/__raw_  �?

AccuracyL�?�;K7Z       o��	M��[���A�*L

Loss�ş=

Adam/Loss/raw��E=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	�[���A�*L

Loss��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?��RZ       o��	@3�[���A�*L

Loss���=

Adam/Loss/raw�M8=

Accuracy/__raw_  �?

Accuracy�?Xy?TZ       o��	�b�[���A�*L

Loss�a�=

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy:�?ظZ       o��	?��[���A�*L

Loss�=

Adam/Loss/rawv�>

Accuracy/__raw_  �?

Accuracyg�?�f�Z       o��	���[���A�*L

Loss�V�=

Adam/Loss/raw�r�=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	e��[���A�*L

Loss"&�=

Adam/Loss/raw{�=

Accuracy/__raw_  �?

Accuracy��?�U0Z       o��	���[���A�*L

Loss:Ȫ=

Adam/Loss/raw��I=

Accuracy/__raw_  �?

Accuracy��?�2G�Z       o��	���[���A�*L

Loss�ǣ=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?~��qZ       o��	U�[���A�*L

Loss�3�=

Adam/Loss/raw1Z�=

Accuracy/__raw_  �?

Accuracy�?�*�nZ       o��	�2�[���A�*L

LossOў=

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy'�?.Ws�Z       o��	.V�[���A�*L

Loss'$�=

Adam/Loss/raw�}=

Accuracy/__raw_  �?

Accuracy=�?�z�,Z       o��	�t�[���A�*L

Loss
��=

Adam/Loss/raw]jh=

Accuracy/__raw_  �?

AccuracyQ�?��n�Z       o��	$��[���A�*L

Loss��=

Adam/Loss/rawO�E=

Accuracy/__raw_  �?

Accuracyc�?e<��Z       o��	`��[���A�*L

Loss�=

Adam/Loss/rawZ�D=

Accuracy/__raw_  �?

Accuracys�?�X�#Z       o��	���[���A�*L

LossW_�=

Adam/Loss/rawn2Z=

Accuracy/__raw_  �?

Accuracy��?���nZ       o��	���[���A�*L

Loss�q�=

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��?s �EZ       o��	!�[���A�*L

Loss�%�=

Adam/Loss/rawM��=

Accuracy/__raw_  �?

Accuracy��?_�Z       o��	&�[���A�*L

Loss�J�=

Adam/Loss/raw�F=

Accuracy/__raw_  �?

Accuracy��?/��	Z       o��	�E�[���A�*L

Loss�^�=

Adam/Loss/rawJ�D=

Accuracy/__raw_  �?

Accuracy��?�9]�Z       o��	�i�[���A�*L

Losss�=

Adam/Loss/raw�-b=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	*��[���A�*L

Loss��=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?py|eZ       o��	d��[���A�*L

Loss��=

Adam/Loss/raw.4z=

Accuracy/__raw_  �?

Accuracy��?�"R�Z       o��	���[���A�*L

Loss�=

Adam/Loss/raw�T}=

Accuracy/__raw_  �?

Accuracy��?e�n�Z       o��	���[���A�*L

Lossv�=

Adam/Loss/raw��{=

Accuracy/__raw_  �?

Accuracy��?G� �Z       o��	��[���A�*L

Loss��=

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��?��5Z       o��	�0�[���A�*L

Loss��=

Adam/Loss/raw_)7=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	sJ�[���A�*L

Loss��=

Adam/Loss/rawhkN=

Accuracy/__raw_  �?

Accuracy��?#��HZ       o��	m�[���A�*L

Loss ��=

Adam/Loss/raw)+�=

Accuracy/__raw_  �?

Accuracy��?W~Z       o��	\��[���A�*L

Loss���=

Adam/Loss/rawڨ�=

Accuracy/__raw_  �?

Accuracy��?ˮ1�Z       o��	���[���A�*L

Loss3�=

Adam/Loss/raw��~=

Accuracy/__raw_  �?

Accuracy��?��M�Z       o��	���[���A�*L

Loss��=

Adam/Loss/raw�j�=

Accuracy/__raw_  �?

Accuracy��?�7�-Z       o��	���[���A�*L

Loss�2�=

Adam/Loss/raw/C>

Accuracy/__raw_  �?

Accuracy��?�b��Z       o��	G�[���A�*L

Loss#n�=

Adam/Loss/raw#`g=

Accuracy/__raw_  �?

Accuracy��?C�L�Z       o��	"�[���A�*L

Loss�'�=

Adam/Loss/raw�f=

Accuracy/__raw_  �?

Accuracy��?3��%Z       o��	q:�[���A�*L

Loss�`�=

Adam/Loss/raw�x=

Accuracy/__raw_  �?

Accuracy��?k.��Z       o��	.V�[���A�*L

Loss�v�=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?�C4�Z       o��	�t�[���A�*L

Loss��=

Adam/Loss/raw�c>

Accuracy/__raw_  �?

Accuracy��?zSn3Z       o��	(��[���A�*L

LossA!�=

Adam/Loss/raw�,o=

Accuracy/__raw_  �?

Accuracy��?�e��Z       o��	^��[���A�*L

Loss���=

Adam/Loss/raw-en=

Accuracy/__raw_  �?

Accuracy��?�'.�Z       o��	���[���A�*L

Loss�2�=

Adam/Loss/raw�8&=

Accuracy/__raw_  �?

Accuracy��?`�f�Z       o��	<��[���A�*L

Lossn0�=

Adam/Loss/rawF�x=

Accuracy/__raw_  �?

Accuracy��?���cZ       o��	n�[���A�*L

Losss�=

Adam/Loss/raw1>

Accuracy/__raw_  �?

Accuracy��?�yZ       o��	H3�[���A�*L

Loss��=

Adam/Loss/raw�Ir=

Accuracy/__raw_  �?

Accuracy��?��֠Z       o��	�N�[���A�*L

LossN��=

Adam/Loss/rawN�q=

Accuracy/__raw_  �?

Accuracy��?�rY�Z       o��	�i�[���A�*L

Lossb�=

Adam/Loss/rawn�p=

Accuracy/__raw_  �?

Accuracy��?рs�Z       o��	3��[���A�*L

Loss�z�=

Adam/Loss/raw�X"=

Accuracy/__raw_  �?

Accuracy��?�Ռ�Z       o��	���[���A�*L

Loss��=

Adam/Loss/rawz=

Accuracy/__raw_  �?

Accuracy��?��C*Z       o��	.��[���A�*L

Loss�u�=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?1��Z       o��	���[���A�*L

Loss���=

Adam/Loss/raw_4�=

Accuracy/__raw_  �?

Accuracy��?�$�_Z       o��	� \���A�*L

LossPO�=

Adam/Loss/raw$��=

Accuracy/__raw_  �?

Accuracy��?���$Z       o��	q \���A�*L

Losse��=

Adam/Loss/raw<-DA

Accuracy/__raw_    

Accuracy��?��Z       o��	%A \���A�*L

Loss�&�?

Adam/Loss/raw0>B=

Accuracy/__raw_  �?

Accuracybff?/���Z       o��	�^ \���A�*L

LossP>�?

Adam/Loss/rawi�=

Accuracy/__raw_  �?

Accuracy��h?�ЭEZ       o��	�{ \���A�*L

Loss�D�?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�Ck?�
ϗZ       o��	� \���A�*L

LossSeu?

Adam/Loss/raw�`*=

Accuracy/__raw_  �?

AccuracyjVm?�'eZ       o��	�� \���A�*L

Loss��]?

Adam/Loss/raw�%�=

Accuracy/__raw_  �?

Accuracy,4o?�&�Z       o��	&� \���A�*L

Loss�J?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy(�p?N"�Z       o��	a� \���A�*L

Loss6�8?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy$er?U�#Z       o��	w\���A�*L

LossQ7'?

Adam/Loss/raww�=

Accuracy/__raw_  �?

Accuracym�s?�V�Z       o��	!<\���A�*L

Loss[k?

Adam/Loss/rawz+>=

Accuracy/__raw_  �?

Accuracy��t?8�O�Z       o��	�Z\���A�*L

LossJw	?

Adam/Loss/rawz�=

Accuracy/__raw_  �?

Accuracy�v?����Z       o��	�y\���A�*L

Loss�C�>

Adam/Loss/raw�+�=

Accuracy/__raw_  �?

Accuracy�w?;��Z       o��	p�\���A�*L

Loss*~�>

Adam/Loss/rawQ�=

Accuracy/__raw_  �?

Accuracyi�w?�2��Z       o��	��\���A�*L

Loss���>

Adam/Loss/rawg߂=

Accuracy/__raw_  �?

Accuracy�x?Vu�PZ       o��	��\���A�*L

Lossڹ�>

Adam/Loss/raw§�=

Accuracy/__raw_  �?

Accuracy*~y?9��Z       o��	�\���A�*L

Lossܱ�>

Adam/Loss/raw̖D=

Accuracy/__raw_  �?

Accuracy�$z?ZL Z       o��	�)\���A�*L

Loss�.�>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��z?=��Z       o��	�H\���A�*L

Loss?��>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�A{?�M�<Z       o��	�a\���A�*L

Loss&��>

Adam/Loss/raw_!�=

Accuracy/__raw_  �?

Accuracy�{?�`�$Z       o��	1|\���A�*L

LossxƆ>

Adam/Loss/raw�JI=

Accuracy/__raw_  �?

AccuracyX(|?�dxZ       o��	S�\���A�*L

Loss��w>

Adam/Loss/raw,M9=

Accuracy/__raw_  �?

Accuracy��|?��PZ       o��	��\���A�*L

Loss`c>

Adam/Loss/raw鬀=

Accuracy/__raw_  �?

Accuracy=�|?�K��Z       o��	@�\���A�*L

Loss{.S>

Adam/Loss/raw7K=

Accuracy/__raw_  �?

Accuracy�2}?hK��Z       o��	\���A�*L

Loss�$C>

Adam/Loss/raw��J=

Accuracy/__raw_  �?

Accuracy�z}?�-�BZ       o��	�\���A�*L

Lossѱ4>

Adam/Loss/raw)S=

Accuracy/__raw_  �?

Accuracy)�}?�B-Z       o��	�9\���A�*L

Lossv�'>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy?�}?<��%Z       o��	�V\���A�*L

Lossi#>

Adam/Loss/rawFx�=

Accuracy/__raw_  �?

Accuracy�)~?����Z       o��	��\���A�*L

LossHN>

Adam/Loss/rawk)=

Accuracy/__raw_  �?

Accuracy�X~?%zZ       o��	5�\���A�*L

LossT�>

Adam/Loss/raw�)=

Accuracy/__raw_  �?

Accuracy�~?9 ��Z       o��	~�\���A�*L

Loss�	>

Adam/Loss/raw2n8=

Accuracy/__raw_  �?

Accuracy�~?�k�KZ       o��	~\���A�*L

Loss���=

Adam/Loss/raw7ގ=

Accuracy/__raw_  �?

AccuracyR�~?��E�Z       o��	�N\���A�*L

Lossw��=

Adam/Loss/rawi{=

Accuracy/__raw_  �?

Accuracy0�~?Zz�Z       o��	Wz\���A�*L

Lossx��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�?^�@VZ       o��	Н\���A�*L

Loss!��=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�?��u�Z       o��	��\���A�*L

Loss�q�=

Adam/Loss/rawl�=

Accuracy/__raw_  �?

Accuracyz5?�G�*Z       o��	@�\���A�*L

Loss���=

Adam/Loss/rawA�~=

Accuracy/__raw_  �?

Accuracy�I?p;`�Z       o��	�\���A�*L

Lossig�=

Adam/Loss/rawOԌ=

Accuracy/__raw_  �?

Accuracy�[?r}�NZ       o��	�*\���A�*L

Loss�X�=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy]l?h��7Z       o��	H\���A�*L

Lossc�=

Adam/Loss/raw�#�=

Accuracy/__raw_  �?

Accuracy!{?M1K�Z       o��	^d\���A�*L

Loss~�=

Adam/Loss/rawD<=

Accuracy/__raw_  �?

Accuracyk�?���Z       o��	c\���A�*L

Loss���=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy`�?�+Z       o��	B�\���A�*L

Loss�Ƕ=

Adam/Loss/raw>v�=

Accuracy/__raw_  �?

Accuracy#�?H{MZ       o��	��\���A�*L

Loss]�=

Adam/Loss/raw�Ux=

Accuracy/__raw_  �?

AccuracyӨ?	��hZ       o��	�\���A�*L

Lossl��=

Adam/Loss/raw�w=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	��\���A�*L

Loss���=

Adam/Loss/raw�tp=

Accuracy/__raw_  �?

Accuracyd�?/
bZ       o��	=\���A�*L

Loss[
�=

Adam/Loss/raw~�=

Accuracy/__raw_  �?

Accuracyt�?#�Z       o��	�.\���A�*L

Loss���=

Adam/Loss/rawg�;=

Accuracy/__raw_  �?

Accuracy��?YX�fZ       o��	�S\���A�*L

LossP�=

Adam/Loss/raw�y{=

Accuracy/__raw_  �?

Accuracy��?E�|Z       o��	�t\���A�*L

Loss�7�=

Adam/Loss/raw'.z=

Accuracy/__raw_  �?

Accuracy��?<9�Z       o��	A�\���A�*L

Loss���=

Adam/Loss/raw�9J=

Accuracy/__raw_  �?

AccuracyO�?�PZ       o��	��\���A�*L

Loss�ڏ=

Adam/Loss/rawwl�=

Accuracy/__raw_  �?

Accuracyz�?�n�"Z       o��	7�\���A�*L

Loss���=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy;�?�}�gZ       o��	��\���A�*L

Lossᘐ=

Adam/Loss/rawi��=

Accuracy/__raw_  �?

Accuracy��?�@�)Z       o��	y \���A�*L

LossU"�=

Adam/Loss/rawm��=

Accuracy/__raw_  �?

Accuracy��?
�;Z       o��	B\���A�*L

Loss��=

Adam/Loss/raw�L�=

Accuracy/__raw_  �?

Accuracyb�?�;*�Z       o��	�^\���A�*L

Lossq�=

Adam/Loss/raw:�==

Accuracy/__raw_  �?

Accuracy��?GL=�Z       o��	�v\���A�*L

Loss���=

Adam/Loss/raw�g`=

Accuracy/__raw_  �?

Accuracy�?!�Z       o��	�\���A�*L

Loss�
�=

Adam/Loss/raw�X >

Accuracy/__raw_  �?

Accuracy�? :Z       o��	d�\���A�*L

Loss�N�=

Adam/Loss/raw� >

Accuracy/__raw_  �?

Accuracy��?�}�Z       o��	h�\���A�*L

Loss�d�=

Adam/Loss/raw,K=

Accuracy/__raw_  �?

Accuracyw�?���Z       o��	��\���A�*L

Loss�ќ=

Adam/Loss/rawd(^=

Accuracy/__raw_  �?

Accuracy��?�kxWZ       o��	�\���A�*L

Loss�>�=

Adam/Loss/rawg�J=

Accuracy/__raw_  �?

Accuracy:�?F-�@Z       o��	�.\���A�*L

Loss1'�=

Adam/Loss/raw��D=

Accuracy/__raw_  �?

Accuracyg�?�t�Z       o��	�T\���A�*L

LossOH�=

Adam/Loss/rawz�C=

Accuracy/__raw_  �?

Accuracyv�?�`T;Z       o��	�s\���A�*L

Loss�ډ=

Adam/Loss/raw��D=

Accuracy/__raw_  �?

Accuracyj�?$~�Z       o��	�\���A�*L

Loss��=

Adam/Loss/raw���=

Accuracy/__raw_  �?

AccuracyF�?�;VZ       o��	L�\���A�*L

Lossh�=

Adam/Loss/raw��m=

Accuracy/__raw_  �?

Accuracy�?�L�@Z       o��	��\���A�*L

Loss��=

Adam/Loss/raw4�>

Accuracy/__raw_  �?

Accuracy��?�:x}Z       o��	��\���A�*L

Loss0C�=

Adam/Loss/raw->

Accuracy/__raw_  �?

Accuracy^�?��~Z       o��	�	\���A�*L

Loss���=

Adam/Loss/raweL�<

Accuracy/__raw_  �?

Accuracy��?S�iZ       o��	H	\���A�*L

Loss��=

Adam/Loss/raw�}b=

Accuracy/__raw_  �?

Accuracyp�?���Z       o��	ro	\���A�*L

Loss��=

Adam/Loss/raw�qB=

Accuracy/__raw_  �?

Accuracy��?���BZ       o��	��	\���A�*L

LossV��=

Adam/Loss/raw1�=

Accuracy/__raw_  �?

AccuracyN�?�[�Z       o��	;�	\���A�*L

Loss�=

Adam/Loss/raw�N�=

Accuracy/__raw_  �?

Accuracy��?�q��Z       o��	@�	\���A�*L

LossGs�=

Adam/Loss/rawX�H=

Accuracy/__raw_  �?

Accuracy�?�ЅZ       o��	H�	\���A�*L

LossDږ=

Adam/Loss/raw,�=

Accuracy/__raw_  �?

AccuracyO�?���Z       o��	H�	\���A�*L

Loss��=

Adam/Loss/raw �Z=

Accuracy/__raw_  �?

Accuracy��?�
Z       o��	U
\���A�*L

LossY�=

Adam/Loss/raw��Y=

Accuracy/__raw_  �?

Accuracy��?@�u�Z       o��	�;
\���A�*L

Loss�h�=

Adam/Loss/raw��X=

Accuracy/__raw_  �?

Accuracy
�?�9�wZ       o��	�]
\���A�*L

Loss|�=

Adam/Loss/raw=

Accuracy/__raw_  �?

Accuracy<�?8��Z       o��	�{
\���A�*L

Loss
=

Adam/Loss/raw ��=

Accuracy/__raw_  �?

Accuracyi�?Y�WZ       o��	6�
\���A�*L

Loss�E�=

Adam/Loss/rawĂL=

Accuracy/__raw_  �?

Accuracy��?��zuZ       o��	��
\���A�*L

Loss�^�=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?��.Z       o��	��
\���A�*L

Loss��=

Adam/Loss/rawH.�=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	2�
\���A�*L

Losst�=

Adam/Loss/raw>u=

Accuracy/__raw_  �?

Accuracy��?S|�6Z       o��	�\���A�*L

Loss{�=

Adam/Loss/raw]�=

Accuracy/__raw_  �?

Accuracy�?Cj�Z       o��	\���A�*L

Loss=

Adam/Loss/raw_=

Accuracy/__raw_  �?

Accuracy)�?6�5;Z       o��	`<\���A�*L

Loss
g�=

Adam/Loss/raw5�i=

Accuracy/__raw_  �?

Accuracy?�?!��Z       o��	�g\���A�*L

Loss���=

Adam/Loss/raw�*i=

Accuracy/__raw_  �?

AccuracyR�?jtZ       o��	W�\���A�*L

Loss��=

Adam/Loss/raw.5=

Accuracy/__raw_  �?

Accuracyc�?1�Z       o��	�\���A�*L

Loss	��=

Adam/Loss/raw-��=

Accuracy/__raw_  �?

Accuracys�?Y��Z       o��	^�\���A�*L

Loss&�=

Adam/Loss/raw)�==

Accuracy/__raw_  �?

Accuracy��?b�Z       o��	.\���A�*L

Loss�=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?��e<Z       o��	�"\���A�*L

Loss��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	�H\���A�*L

Loss\Q�=

Adam/Loss/raw2�L=

Accuracy/__raw_  �?

Accuracy��?r��/Z       o��	o\���A�*L

Loss�l�=

Adam/Loss/raw���A

Accuracy/__raw_    

Accuracy��?d��8Z       o��	-�\���A�*L

Loss*��?

Adam/Loss/raw�M<=

Accuracy/__raw_  �?

Accuracyff?��+Z       o��	�\���A�*L

Loss�2�?

Adam/Loss/raw��'=

Accuracy/__raw_  �?

Accuracy~�h?���Z       o��	��\���A�*L

Loss�ͼ?

Adam/Loss/raw/'=

Accuracy/__raw_  �?

AccuracyXCk?���bZ       o��	�\���A�*L

Lossr�?

Adam/Loss/raw[,=

Accuracy/__raw_  �?

Accuracy6Vm?PۏiZ       o��	}%\���A�*L

Loss��?

Adam/Loss/raw6G�=

Accuracy/__raw_  �?

Accuracy�3o?J�3Z       o��	?\���A�*L

Loss��?

Adam/Loss/raw��q=

Accuracy/__raw_  �?

Accuracy��p?����Z       o��	�]\���A�*L

Loss��}?

Adam/Loss/raw�-:=

Accuracy/__raw_  �?

Accuracy�dr?�D�gZ       o��	Q�\���A�*L

Loss�`e?

Adam/Loss/raw~9=

Accuracy/__raw_  �?

AccuracyJ�s?Z\��Z       o��	��\���A�*L

Loss�O?

Adam/Loss/raw�޿=

Accuracy/__raw_  �?

Accuracy��t?���Z       o��	�\���A�*L

Loss�<=?

Adam/Loss/raw�P=

Accuracy/__raw_  �?

Accuracy�v?1���Z       o��	��\���A�*L

Loss��+?

Adam/Loss/rawb@=

Accuracy/__raw_  �?

Accuracy�w?-�]�Z       o��	$\���A�*L

Loss�?

Adam/Loss/rawÕ�=

Accuracy/__raw_  �?

AccuracyQ�w?�x�TZ       o��	�D\���A�*L

LossG�?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��x?�w�PZ       o��	�b\���A�*L

Loss�s?

Adam/Loss/raw�e=

Accuracy/__raw_  �?

Accuracy~y?_�z�Z       o��	��\���A�*L

Loss�y�>

Adam/Loss/raw
f>=

Accuracy/__raw_  �?

Accuracy�$z?���wZ       o��	 �\���A�*L

LossQ��>

Adam/Loss/rawF�U=

Accuracy/__raw_  �?

Accuracy��z?�d��Z       o��	��\���A�*L

LossJ��>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�A{?�u!Z       o��	��\���A�*L

Loss�k�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��{?��ۇZ       o��	W\���A�*L

Loss���>

Adam/Loss/raw^�B=

Accuracy/__raw_  �?

AccuracyK(|?����Z       o��	B!\���A�*L

LossU�>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��|?�J��Z       o��	X<\���A�*L

Loss�
�>

Adam/Loss/raw�4=

Accuracy/__raw_  �?

Accuracy3�|?ʘZZ       o��	iW\���A�*L

Loss$��>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�2}?O��PZ       o��	�u\���A�*L

LossrLs>

Adam/Loss/rawF��=

Accuracy/__raw_  �?

Accuracy�z}?\��Z       o��	ڑ\���A�*L

Lossjsb>

Adam/Loss/raw�s�=

Accuracy/__raw_  �?

Accuracy"�}?((u�Z       o��	��\���A�*L

LossBGU>

Adam/Loss/raw#U-=

Accuracy/__raw_  �?

Accuracy8�}?��-�Z       o��	��\���A�*L

Loss�HD>

Adam/Loss/raw�z�=

Accuracy/__raw_  �?

Accuracy)~?d�[?Z       o��	��\���A�*L

Loss��:>

Adam/Loss/raw��R=

Accuracy/__raw_  �?

Accuracy�X~?R�GZ       o��	��\���A�*L

Loss�R->

Adam/Loss/rawF�Q=

Accuracy/__raw_  �?

Accuracy�~?�~H�Z       o��	L\���A�*L

Loss�=!>

Adam/Loss/raw�<c=

Accuracy/__raw_  �?

Accuracy �~?д��Z       o��	�3\���A�*L

LossR�>

Adam/Loss/rawr^+=

Accuracy/__raw_  �?

AccuracyM�~?��P
Z       o��	nN\���A�*L

Loss� >

Adam/Loss/raw|I=

Accuracy/__raw_  �?

Accuracy,�~?��|fZ       o��	�i\���A�*L

LossL>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�?����Z       o��	��\���A�*L

Lossį�=

Adam/Loss/raw')=

Accuracy/__raw_  �?

Accuracy�?!�Z       o��	��\���A�*L

Loss? �=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracyv5?�[��Z       o��	f�\���A�*L

Loss�}�=

Adam/Loss/raw�"?=

Accuracy/__raw_  �?

Accuracy�I?StO�Z       o��	E\���A�*L

Loss)f�=

Adam/Loss/rawg4=

Accuracy/__raw_  �?

Accuracy�[?�q&Z       o��	�-\���A�*L

Loss]+�=

Adam/Loss/rawh��=

Accuracy/__raw_  �?

AccuracyZl?ֈ��Z       o��	�G\���A�*L

Loss�;�=

Adam/Loss/rawh�=

Accuracy/__raw_  �?

Accuracy{?>�:Z       o��	Ab\���A�*L

Loss��=

Adam/Loss/rawAg=

Accuracy/__raw_  �?

Accuracyh�?of�Z       o��	�z\���A�*L

Loss�E�=

Adam/Loss/raw�#K=

Accuracy/__raw_  �?

Accuracy^�?��a�Z       o��	��\���A�*L

Loss� �=

Adam/Loss/rawH �=

Accuracy/__raw_  �?

Accuracy!�?/��Z       o��	��\���A�*L

Loss�=

Adam/Loss/rawCR~=

Accuracy/__raw_  �?

AccuracyѨ?*p�Z       o��	+�\���A�*L

Loss�ֵ=

Adam/Loss/raw.�}=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	��\���A�*L

Loss�Z�=

Adam/Loss/raw�
P=

Accuracy/__raw_  �?

Accuracyb�?�'hUZ       o��	I\���A�*L

Loss�=

Adam/Loss/raw<

Accuracy/__raw_  �?

Accuracyr�?h*�6Z       o��	�.\���A�*L

Loss#��=

Adam/Loss/rawS�<

Accuracy/__raw_  �?

Accuracy��?��E�Z       o��	�J\���A�*L

Loss�Ԓ=

Adam/Loss/raw��9=

Accuracy/__raw_  �?

Accuracy��?�G��Z       o��	�e\���A�*L

Loss�m�=

Adam/Loss/raw%�8=

Accuracy/__raw_  �?

Accuracy��?��JZ       o��	�\���A�*L

Loss~��=

Adam/Loss/rawV�C=

Accuracy/__raw_  �?

AccuracyM�?B0�RZ       o��	Z�\���A�*L

Loss¨�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyy�?����Z       o��	Z�\���A�*L

Losscb�=

Adam/Loss/raw�U=

Accuracy/__raw_  �?

Accuracy:�?y���Z       o��	�\���A�*L

Lossm��=

Adam/Loss/raw��!=

Accuracy/__raw_  �?

Accuracy��?&Z       o��	g�\���A�*L

LossHT�=

Adam/Loss/raw9t!=

Accuracy/__raw_  �?

Accuracy��?tU�XZ       o��	�\���A�*L

Loss!�x=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracya�?�?\�Z       o��	S@\���A�*L

Losss��=

Adam/Loss/raw�PFA

Accuracy/__raw_   >

Accuracy��?��@}Z       o��	�a\���A�*L

Loss���?

Adam/Loss/raw�5�=

Accuracy/__raw_  �?

Accuracy��i?`0�Z       o��	�}\���A�*L

Loss���?

Adam/Loss/rawFT=

Accuracy/__raw_  �?

Accuracy�k?8vZ       o��	5�\���A�*L

Losse�?

Adam/Loss/raw�kT=

Accuracy/__raw_  �?

Accuracy��m?�X��Z       o��	�\���A�*L

LossbWv?

Adam/Loss/raw�oW=

Accuracy/__raw_  �?

Accuracy�o?�j�qZ       o��	P�\���A�*L

Loss�_?

Adam/Loss/raw�V1=

Accuracy/__raw_  �?

Accuracy�@q?k��Z       o��	]\���A�*L

LossN�I?

Adam/Loss/raw.(�<

Accuracy/__raw_  �?

Accuracy�r?EnBDZ       o��	�7\���A�*L

Loss�T6?

Adam/Loss/rawM��=

Accuracy/__raw_  �?

Accuracy�t?�HZ       o��	vR\���A�*L

Loss/'?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�?u?tA��Z       o��	�k\���A�*L

LossL�?

Adam/Loss/rawdM!=

Accuracy/__raw_  �?

Accuracy�Rv?��FZ       o��	n�\���A�*L

Losss4?

Adam/Loss/raw��p=

Accuracy/__raw_  �?

Accuracy�Jw?��Z       o��	ϟ\���A�*L

LossD��>

Adam/Loss/raw_"�=

Accuracy/__raw_  �?

Accuracy�)x?���+Z       o��	�\���A�*L

Loss��>

Adam/Loss/raw�xq=

Accuracy/__raw_  �?

Accuracy:�x?�lX�Z       o��	��\���A�*L

Loss7~�>

Adam/Loss/raw�r=

Accuracy/__raw_  �?

AccuracyΦy?�غ�Z       o��	��\���A�*L

LossE�>

Adam/Loss/rawުd=

Accuracy/__raw_  �?

AccuracySIz?m�AZ       o��	�\���A�*L

Lossr��>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��z?W�8�Z       o��	U/\���A�*L

Loss6��>

Adam/Loss/raw@G�=

Accuracy/__raw_  �?

Accuracy<_{?̠��Z       o��	8K\���A�*L

LossxA�>

Adam/Loss/raw-VT=

Accuracy/__raw_  �?

Accuracy��{?�Y�Z       o��	h\���A�*L

Lossf�>

Adam/Loss/raw��S=

Accuracy/__raw_  �?

AccuracyW@|?�S߯Z       o��	��\���A�*L

Loss�{}>

Adam/Loss/rawQ/g=

Accuracy/__raw_  �?

AccuracyN�|?4�nZZ       o��	��\���A�*L

LossT�i>

Adam/Loss/raw�N	=

Accuracy/__raw_  �?

Accuracy��|?r{
!Z       o��	o\���A�*L

Loss��U>

Adam/Loss/raw�f0=

Accuracy/__raw_  �?

AccuracyiD}?���Z       o��	�>\���A�*L

Loss��D>

Adam/Loss/rawi6=

Accuracy/__raw_  �?

Accuracy_�}?^J�pZ       o��	h[\���A�*L

Loss��5>

Adam/Loss/raw��5=

Accuracy/__raw_  �?

AccuracyV�}?��Z       o��	�~\���A�*L

Loss|2(>

Adam/Loss/rawFW�=

Accuracy/__raw_  �?

Accuracy~?p��Z       o��	��\���A�*L

Lossf!>

Adam/Loss/raw��N=

Accuracy/__raw_  �?

Accuracy5~?���CZ       o��	ƾ\���A�*L

Loss>

Adam/Loss/raw�8Z=

Accuracy/__raw_  �?

Accuracy�b~?8�#Z       o��	Q�\���A�*L

Loss��>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy6�~?��Z       o��	j�\���A�*L

Loss�	>

Adam/Loss/rawf��=

Accuracy/__raw_  �?

Accuracyd�~?9�M;Z       o��	\���A�*L

Loss�>

Adam/Loss/raw(�4=

Accuracy/__raw_  �?

Accuracy��~?{DW�Z       o��	�-\���A�*L

LossF�=

Adam/Loss/rawn�=

Accuracy/__raw_  �?

Accuracy��~?^�Z       o��	�K\���A�*L

Loss���=

Adam/Loss/raw"b6=

Accuracy/__raw_  �?

Accuracy?���^Z       o��	0h\���A�*L

LossY��=

Adam/Loss/raw�9)=

Accuracy/__raw_  �?

Accuracyw$?
j�aZ       o��	,�\���A�*L

Loss�%�=

Adam/Loss/raw�(=

Accuracy/__raw_  �?

Accuracyk:?�A�%Z       o��	��\���A�*L

Loss��=

Adam/Loss/raw	�)=

Accuracy/__raw_  �?

Accuracy-N?��Z       o��	o�\���A�*L

Loss�<�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�_?4�UZ       o��	�\���A�*L

Loss͔�=

Adam/Loss/raww7=

Accuracy/__raw_  �?

Accuracy�o?!	��Z       o��	W�\���A�*L

Loss�;�=

Adam/Loss/raw�ݸ=

Accuracy/__raw_  �?

Accuracy]~?���fZ       o��	�
\���A�*L

Loss�e�=

Adam/Loss/raw�;�=

Accuracy/__raw_  �?

AccuracyT�?�zZ       o��	�/\���A�*L

Loss�a�=

Adam/Loss/raw\/K=

Accuracy/__raw_  �?

Accuracy��?��Z       o��	XY\���A�*L

Loss� �=

Adam/Loss/raw8�i=

Accuracy/__raw_  �?

Accuracy�?X��:Z       o��	@�\���A�*L

Loss��=

Adam/Loss/raw�KZ=

Accuracy/__raw_  �?

Accuracy�?K��Z       o��	�\���A�*L

Loss4��=

Adam/Loss/rawW��=

Accuracy/__raw_  �?

Accuracys�?��;Z       o��	H�\���A�*L

Loss��=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�?��efZ       o��	��\���A�*L

Lossf�=

Adam/Loss/raw�d=

Accuracy/__raw_  �?

Accuracy��?��\�Z       o��	8�\���A�*L

LossI��=

Adam/Loss/raw�FM=

Accuracy/__raw_  �?

Accuracy2�?|�3Z       o��	{\���A�*L

Loss~p�=

Adam/Loss/raw$�)=

Accuracy/__raw_  �?

Accuracy��?$"tZ       o��	+4\���A�*L

Loss��=

Adam/Loss/raw:=

Accuracy/__raw_  �?

Accuracy��?M�]�Z       o��	%Y\���A�*L

Loss臆=

Adam/Loss/raw&�=

Accuracy/__raw_  �?

AccuracyR�?�(sZ       o��	Ts\���A�*L

Loss�g=

Adam/Loss/raw�W�=

Accuracy/__raw_  �?

Accuracyc�?q��Z       o��	��\���A�*L

Loss�*�=

Adam/Loss/rawy+A

Accuracy/__raw_    

Accuracy�?�r��Z       o��	�\���A�*L

Loss���?

Adam/Loss/raw^X<=

Accuracy/__raw_  �?

Accuracy�Hf?E�UZ       o��	.�\���A�*L

Lossgׂ?

Adam/Loss/raw6��=

Accuracy/__raw_  �?

Accuracy�h?a8�)Z       o��	��\���A�*L

Loss&Ym?

Adam/Loss/raw�w�=

Accuracy/__raw_  �?

Accuracy�+k?�>)BZ       o��	)\���A�*L

Loss�qW?

Adam/Loss/raw�e*=

Accuracy/__raw_  �?

Accuracy�@m?�a3Z       o��	�&\���A�*L

Loss��B?

Adam/Loss/raw޳�=

Accuracy/__raw_  �?

Accuracy� o?ZNZ       o��	�C\���A�*L

Loss$1?

Adam/Loss/raw�by=

Accuracy/__raw_  �?

Accuracy��p?]�4Z       o��	_\���A�*L

LossX� ?

Adam/Loss/raw��U=

Accuracy/__raw_  �?

AccuracycUr?���?Z       o��	z\���A�*L

LossB1?

Adam/Loss/raw	�W=

Accuracy/__raw_  �?

Accuracy@�s?b�'Z       o��	�\���A�*L

Loss��?

Adam/Loss/raw[1�=

Accuracy/__raw_  �?

Accuracy �t?'��Z       o��	d�\���A�*L

Loss˩�>

Adam/Loss/raw|1=

Accuracy/__raw_  �?

Accuracy�	v?v+�SZ       o��	0�\���A�*L

Loss���>

Adam/Loss/raw��m=

Accuracy/__raw_  �?

Accuracy�w?c�ۭZ       o��		\���A�*L

LossĆ�>

Adam/Loss/raw�|�=

Accuracy/__raw_  �?

Accuracy�w?0Z       o��	�$\���A�*L

Loss�/�>

Adam/Loss/raw)?�=

Accuracy/__raw_  �?

Accuracy��x?����Z       o��	cB\���A�*L

Loss;y�>

Adam/Loss/raw�mR=

Accuracy/__raw_  �?

Accuracy�vy?En'<Z       o��	bh\���A�*L

Lossz�>

Adam/Loss/raw�+=

Accuracy/__raw_  �?

Accuracy�z?M+֐Z       o��	I�\���A�*L

Loss���>

Adam/Loss/raw?E�=

Accuracy/__raw_  �?

Accuracy��z?g=��Z       o��	��\���A�*L

Loss��>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy<{?�>��Z       o��	r�\���A�*L

Loss8<p>

Adam/Loss/raw[� =

Accuracy/__raw_  �?

Accuracy�{?)�Z       o��	��\���A�*L

Loss�m[>

Adam/Loss/rawC}\=

Accuracy/__raw_  �?

Accuracy�#|?����Z       o��	\���A�*L

Loss��J>

Adam/Loss/raw+َ=

Accuracy/__raw_  �?

Accuracy��|?�%�Z       o��	�*\���A�*L

Lossf�=>

Adam/Loss/raw�Na=

Accuracy/__raw_  �?

Accuracy��|?��Z�Z       o��	�K\���A�*L

Lossl}0>

Adam/Loss/raw+�=

Accuracy/__raw_  �?

Accuracy�/}?C<��Z       o��	�n\���A�*L

Loss�o">

Adam/Loss/raw�J=

Accuracy/__raw_  �?

Accuracy�w}?��E8Z       o��	�\���A�*L

Loss��>

Adam/Loss/raw�y�=

Accuracy/__raw_  �?

Accuracy��}?F�\�Z       o��	�\���A�*L

Loss\R>

Adam/Loss/rawp�=

Accuracy/__raw_  �?

Accuracy��}?̂7Z       o��	��\���A�*L

Loss�>

Adam/Loss/raw&�=

Accuracy/__raw_  �?

Accuracyd'~?�w*Z       o��	^�\���A�*L

Loss�*>

Adam/Loss/raw3�3=

Accuracy/__raw_  �?

Accuracy�V~?�ø�Z       o��	�\���A�*L

Loss�|�=

Adam/Loss/rawA3=

Accuracy/__raw_  �?

Accuracy0�~?:���Z       o��	)\���A�*L

LosskJ�=

Adam/Loss/raw�j=

Accuracy/__raw_  �?

Accuracyx�~?x�u$Z       o��	�H\���A�*L

Loss�n�=

Adam/Loss/raw�2F=

Accuracy/__raw_  �?

Accuracy��~?���^Z       o��	�n\���A�*L

Loss�2�=

Adam/Loss/raw�V=

Accuracy/__raw_  �?

Accuracy��~?�j��Z       o��	3�\���A�*L

Loss��=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�?�TZ       o��	`�\���A�*L

LossRf�=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�?� o6Z       o��	��\���A�*L

Loss�ٽ=

Adam/Loss/raw��1=

Accuracy/__raw_  �?

Accuracy�4?�DE�Z       o��	�\���A�*L

Losswó=

Adam/Loss/raw­=

Accuracy/__raw_  �?

Accuracy�H?!ʥ9Z       o��	T\���A�*L

Loss���=

Adam/Loss/raw�ҭ=

Accuracy/__raw_  �?

Accuracy6[?+�y�Z       o��	�7\���A�*L

Loss�t�=

Adam/Loss/raw��@=

Accuracy/__raw_  �?

Accuracy�k?�?�Z       o��	6Y\���A�*L

Loss�#�=

Adam/Loss/raw�	@=

Accuracy/__raw_  �?

Accuracy�z?N,�Z       o��	�|\���A�*L

Loss��=

Adam/Loss/raw�.=

Accuracy/__raw_  �?

Accuracy߇?��Z       o��	��\���A�*L

Loss$��=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�?v��Z       o��	V�\���A�*L

Lossl��=

Adam/Loss/raw�.�=

Accuracy/__raw_  �?

Accuracy��?~e�Z       o��	��\���A�*L

LossB%�=

Adam/Loss/raw1b�<

Accuracy/__raw_  �?

Accuracym�?��\JZ       o��	��\���A�*L

Loss��=

Adam/Loss/raw�'�<

Accuracy/__raw_  �?

Accuracy/�?U"�Z       o��	�\���A�*L

Loss�{=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�?��~Z       o��	�;\���A�*L

Loss��|=

Adam/Loss/raw�8+=

Accuracy/__raw_  �?

Accuracy)�?s}ϗZ       o��	V\���A�*L

Loss�nt=

Adam/Loss/raw,��=

Accuracy/__raw_  �?

Accuracy��?=0 TZ       o��	�w\���A�*L

Loss��=

Adam/Loss/raw��y=

Accuracy/__raw_  �?

AccuracyJ�?�};Z       o��	6�\���A�*L

Loss>%=

Adam/Loss/raw� y=

Accuracy/__raw_  �?

Accuracyv�?.A�=Z       o��	y�\���A�*L

Loss6�~=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�?�x��Z       o��	��\���A�*L

Loss�Ls=

Adam/Loss/raw7��<

Accuracy/__raw_  �?

AccuracyM�?��UcZ       o��	��\���A�*L

Loss`f=

Adam/Loss/raw�Ǟ=

Accuracy/__raw_  �?

Accuracy�?����Z       o��	�" \���A�*L

Lossj�n=

Adam/Loss/raw�^$=

Accuracy/__raw_  �?

Accuracyw�? �PZ       o��	}A \���A�*L

Loss�eg=

Adam/Loss/rawɀ#=

Accuracy/__raw_  �?

Accuracy��?i�x�Z       o��	�\ \���A�*L

LossÛ`=

Adam/Loss/raw?+3=

Accuracy/__raw_  �?

AccuracyE�?=���Z       o��	�w \���A�*L

Loss�\=

Adam/Loss/rawF�3=

Accuracy/__raw_  �?

Accuracy��?ӓ+Z       o��	5� \���A�*L

Loss�X=

Adam/Loss/raw4�P=

Accuracy/__raw_  �?

Accuracy��?T5��Z       o��	'� \���A�*L

Loss�KW=

Adam/Loss/raw �=

Accuracy/__raw_  �?

Accuracy��?�\�3Z       o��	�� \���A�*L

Loss�0g=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�wZ       o��	H� \���A�*L

Losskbu=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracyf�?��Z       o��	L!\���A�*L

Loss��g=

Adam/Loss/rawAb�=

Accuracy/__raw_  �?

Accuracy��?~���Z       o��	{2!\���A�*L

Loss2}o=

Adam/Loss/rawd^:=

Accuracy/__raw_  �?

Accuracy,�?�G2Z       o��	�L!\���A�*L

LossQ-j=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy[�?u~JZ       o��	�f!\���A�*L

Loss��_=

Adam/Loss/rawOF�<

Accuracy/__raw_  �?

Accuracyl�?,%�Z       o��	��!\���A�*L

Loss��U=

Adam/Loss/raw�6D=

Accuracy/__raw_  �?

Accuracya�?���Z       o��	�!\���A�*L

LossP/T=

Adam/Loss/rawPa�=

Accuracy/__raw_  �?

Accuracy>�?�B�6Z       o��	��!\���A�*L

Loss?q]=

Adam/Loss/raw��W=

Accuracy/__raw_  �?

Accuracy�?RvU�Z       o��	��!\���A�*L

Lossz�\=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?ϐ�$Z       o��	��!\���A�*L

Loss�vT=

Adam/Loss/raw�m=

Accuracy/__raw_  �?

AccuracyY�?kx�Z       o��	R"\���A�*L

Loss"�L=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?U^��Z       o��	I*"\���A�*L

Loss�U=

Adam/Loss/raw K*=

Accuracy/__raw_  �?

Accuracyl�?�im�Z       o��	�D"\���A�*L

Loss<�P=

Adam/Loss/raw�J=

Accuracy/__raw_  �?

Accuracy��?2��Z       o��	�`"\���A�*L

Loss�4P=

Adam/Loss/raw�X	=

Accuracy/__raw_  �?

AccuracyK�?��Q]Z       o��	�"\���A�*L

Loss�I=

Adam/Loss/rawk	=

Accuracy/__raw_  �?

Accuracy��?���cZ       o��	1�"\���A�*L

LossʵB=

Adam/Loss/raw��.=

Accuracy/__raw_  �?

Accuracy��?H���Z       o��	��"\���A�*L

Lossh�@=

Adam/Loss/raw�z�=

Accuracy/__raw_  �?

AccuracyL�?qj{Z       o��	�"\���A�*L

Loss�(J=

Adam/Loss/rawp��<

Accuracy/__raw_  �?

Accuracy��?A���Z       o��	7#\���A�*L

LossToB=

Adam/Loss/raw�h�=

Accuracy/__raw_  �?

Accuracy��?��)Z       o��		3#\���A�*L

Loss�EP=

Adam/Loss/raw�ե=

Accuracy/__raw_  �?

Accuracy�?��~>Z       o��	jL#\���A�*L

Loss�\=

Adam/Loss/raw�9<=

Accuracy/__raw_  �?

Accuracy:�?/`�]Z       o��	�f#\���A�*L

Loss�_Y=

Adam/Loss/raw!�A

Accuracy/__raw_   >

Accuracyg�?;d��Z       o��	ǁ#\���A�*L

Loss�s?

Adam/Loss/raw*�&=

Accuracy/__raw_  �?

Accuracy)�i?��Z       o��	��#\���A�*L

Loss�Q\?

Adam/Loss/rawe�,=

Accuracy/__raw_  �?

Accuracy��k?� ��Z       o��	ܺ#\���A�*L

Loss�]G?

Adam/Loss/raw�-=

Accuracy/__raw_  �?

Accuracy��m?����Z       o��	�#\���A�*L

LossԂ4?

Adam/Loss/rawt��=

Accuracy/__raw_  �?

Accuracy��o?���xZ       o��	��#\���A�*L

LossMQ$?

Adam/Loss/rawZ�=

Accuracy/__raw_  �?

Accuracy�Lq?��kZ       o��	|$\���A�*L

Losst�?

Adam/Loss/raw�GV=

Accuracy/__raw_  �?

Accuracy�r?c�Z       o��	�($\���A�*L

Loss�U?

Adam/Loss/raw�E=

Accuracy/__raw_  �?

Accuracy�t?E��Z       o��	�B$\���A�*L

Losst�>

Adam/Loss/rawF=

Accuracy/__raw_  �?

Accuracy�Hu?��.�Z       o��	�]$\���A�*L

Loss���>

Adam/Loss/raw6�[=

Accuracy/__raw_  �?

Accuracy�Zv?$�Z       o��	Ww$\���A�*L

LossUL�>

Adam/Loss/raw�)=

Accuracy/__raw_  �?

Accuracy�Qw?Lx
Z       o��	��$\���A�*L

LossI��>

Adam/Loss/raw:�=

Accuracy/__raw_  �?

Accuracy
0x?���Z       o��	6�$\���A�*L

Lossa�>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy	�x?M6�Z       o��	��$\���A�*L

LossBT�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�y?�[�_Z       o��	��$\���A�*L

Loss�Ȍ>

Adam/Loss/raw��D=

Accuracy/__raw_  �?

AccuracyNz?��RZ       o��	1$%\���A�*L

Loss�)�>

Adam/Loss/raw�`�=

Accuracy/__raw_  �?

Accuracy��z?��MZ       o��	�A%\���A�*L

LossT�o>

Adam/Loss/rawm:5=

Accuracy/__raw_  �?

Accuracyc{?q4��Z       o��	y[%\���A�*L

LossAQ\>

Adam/Loss/raw>�R=

Accuracy/__raw_  �?

Accuracy$�{?�c�Z       o��	u%\���A�*L

Lossh�K>

Adam/Loss/rawm�R=

Accuracy/__raw_  �?

AccuracymC|?�4�Z       o��	�%\���A�*L

LossZw<>

Adam/Loss/rawҚ=

Accuracy/__raw_  �?

Accuracy�|?���Z       o��	��%\���A�*L

LossR\1>

Adam/Loss/rawnE�<

Accuracy/__raw_  �?

Accuracy-�|?��pZ       o��	��%\���A�*L

Loss�#">

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�F}?�%"�Z       o��	��%\���A�*L

Lossz�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracye�}?`�*�Z       o��	7�%\���A�*L

Loss>

Adam/Loss/rawN��=

Accuracy/__raw_  �?

Accuracy(�}?H�TZ       o��	�&\���A�*L

Loss�/>

Adam/Loss/rawf	=

Accuracy/__raw_  �?

Accuracy�~?�d٣Z       o��	j2&\���A�*L

Loss���=

Adam/Loss/raw6U=

Accuracy/__raw_  �?

Accuracyz6~?cs Z       o��	�L&\���A�*L

Loss�w�=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy;d~?v<�Z       o��	f&\���A�*L

Loss�=

Adam/Loss/raw�*=

Accuracy/__raw_  �?

Accuracyh�~?脦IZ       o��	I�&\���A�*L

Loss���=

Adam/Loss/raw�k)=

Accuracy/__raw_  �?

Accuracyw�~?9"LZ       o��	ף&\���A�*L

LossJV�=

Adam/Loss/raw+\>=

Accuracy/__raw_  �?

Accuracy��~?���Z       o��	D�&\���A�*L

Loss�k�=

Adam/Loss/rawp�cA

Accuracy/__raw_    

Accuracy��~?��]bZ       o��	��&\���A�*L

Loss���?

Adam/Loss/raw��)=

Accuracy/__raw_  �?

AccuracyAse?�E��Z       o��	['\���A�*L

Lossԭ?

Adam/Loss/raw� B=

Accuracy/__raw_  �?

Accuracy�h?]���Z       o��	�.'\���A�*L

Loss\�?

Adam/Loss/raw��A=

Accuracy/__raw_  �?

Accuracy�~j?���Z       o��	�S'\���A�*L

Loss��?

Adam/Loss/raw*:=

Accuracy/__raw_  �?

Accuracy,�l?_`	�Z       o��	�w'\���A�*L

LossL=�?

Adam/Loss/rawLɉ=

Accuracy/__raw_  �?

Accuracy��n?֒=Z       o��	�'\���A�*L

Loss��h?

Adam/Loss/raw�b�=

Accuracy/__raw_  �?

Accuracy�Rp?���Z       o��	�'\���A�*L

Loss��R?

Adam/Loss/raw��/=

Accuracy/__raw_  �?

Accuracy��q?8�jkZ       o��	��'\���A�*L

Lossu�>?

Adam/Loss/rawjh/=

Accuracy/__raw_  �?

Accuracy#Ms?g��Z       o��	��'\���A�*L

Loss��,?

Adam/Loss/raw\/*=

Accuracy/__raw_  �?

Accuracy9�t?
���Z       o��	F"(\���A�*L

Lossܶ?

Adam/Loss/raw���@

Accuracy/__raw_  �>

AccuracyͶu?���,Z       o��	�S(\���A�*L

Loss:�?

Adam/Loss/raw�_=

Accuracy/__raw_  �?

Accuracy�f?��s�Z       o��	~p(\���A�*L

Lossg�?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�Di?V/XZ       o��	��(\���A�*L

Loss���?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��k?g^`�Z       o��	ۢ(\���A�*L

Loss��i?

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy`�m?�wHOZ       o��	Ӿ(\���A�*L

Loss(+S?

Adam/Loss/rawhBp=

Accuracy/__raw_  �?

Accuracy�mo?�~��Z       o��	�(\���A�*L

Loss��??

Adam/Loss/raw��:=

Accuracy/__raw_  �?

Accuracy�q?6�ڐZ       o��	,�(\���A�*L

Loss��-?

Adam/Loss/rawVK�<

Accuracy/__raw_  �?

Accuracyœr?S��SZ       o��	^)\���A�*L

Loss��?

Adam/Loss/rawע�<

Accuracy/__raw_  �?

Accuracye�s?t��{Z       o��	�0)\���A�*L

Loss� ?

Adam/Loss/rawl��=

Accuracy/__raw_  �?

Accuracy� u?�'Z       o��	�J)\���A�*L

Loss��?

Adam/Loss/raw��OA

Accuracy/__raw_   >

Accuracy�6v?4I�6Z       o��	�f)\���A�*L

Loss��?

Adam/Loss/raw�-R=

Accuracy/__raw_  �?

Accuracy�`?�@
?Z       o��	I�)\���A�*L

Loss���?

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��c?�z�Z       o��	Й)\���A�*L

Loss8i�?

Adam/Loss/raw[&�=

Accuracy/__raw_  �?

Accuracy��f?��:�Z       o��	��)\���A�*L

Loss#
�?

Adam/Loss/raw_��<

Accuracy/__raw_  �?

Accuracy@i?	�4Z       o��	��)\���A�*L

Loss�˕?

Adam/Loss/raw��c=

Accuracy/__raw_  �?

Accuracyz�k?�<3Z       o��	�*\���A�*L

Lossa��?

Adam/Loss/raw�*=

Accuracy/__raw_  �?

Accuracy��m?�w�hZ       o��	�#*\���A�*L

Loss�u?

Adam/Loss/raw�=�=

Accuracy/__raw_  �?

Accuracy^jo?W*�AZ       o��	�E*\���A�*L

LossQh^?

Adam/Loss/raw1G�=

Accuracy/__raw_  �?

Accuracy�q?�R�Z       o��	�h*\���A�*L

Loss�J?

Adam/Loss/raw"�9=

Accuracy/__raw_  �?

Accuracy	�r?�s� Z       o��	{�*\���A�*L

LossM7?

Adam/Loss/raw!�U=

Accuracy/__raw_  �?

Accuracy��s?X��'Z       o��	�*\���A�*L

Loss&?

Adam/Loss/raw�R:=

Accuracy/__raw_  �?

Accuracyqu?�x�Z       o��	<�*\���A�*L

Lossm�?

Adam/Loss/raw~�R=

Accuracy/__raw_  �?

Accuracy�4v?d&�Z       o��	4�*\���A�*L

Loss.�?

Adam/Loss/raw5�Q=

Accuracy/__raw_  �?

Accuracy�/w?u�k�Z       o��	��*\���A�*L

Loss���>

Adam/Loss/raw.ܒ=

Accuracy/__raw_  �?

AccuracySx?���'Z       o��	J+\���A�*L

Lossտ�>

Adam/Loss/raw��+=

Accuracy/__raw_  �?

Accuracyd�x?�B�Z       o��	�%+\���A�*L

Lossd�>

Adam/Loss/raw@$S=

Accuracy/__raw_  �?

Accuracy'�y?l]}Z       o��	�G+\���A�*L

Loss��>

Adam/Loss/raw0�=

Accuracy/__raw_  �?

Accuracy�7z?�vG�Z       o��	=d+\���A�*L

Loss�_�>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��z?�6*:Z       o��	�~+\���A�*L

Loss>)�>

Adam/Loss/rawö-=

Accuracy/__raw_  �?

Accuracy�P{?Cǔ�Z       o��	�+\���A�*L

Lossg7�>

Adam/Loss/raw�h=

Accuracy/__raw_  �?

Accuracy��{?n.IZ       o��	t�+\���A�*L

Loss,S�>

Adam/Loss/raw�t5=

Accuracy/__raw_  �?

Accuracy�4|?���Z       o��	��+\���A�*L

Loss:Rv>

Adam/Loss/raw�k<=

Accuracy/__raw_  �?

Accuracyܕ|?|J��Z       o��	��+\���A�*L

LossMfb>

Adam/Loss/raw�;=

Accuracy/__raw_  �?

AccuracyF�|?e��qZ       o��	d,\���A�*L

LossuP>

Adam/Loss/rawT�=

Accuracy/__raw_  �?

Accuracy�;}?g�Z       o��	� ,\���A�*L

Loss��B>

Adam/Loss/raw`�<=

Accuracy/__raw_  �?

Accuracy��}?���Z       o��	A,\���A�*L

Loss��3>

Adam/Loss/raw�@	=

Accuracy/__raw_  �?

Accuracyz�}?8���Z       o��	�c,\���A�*L

Loss�Z%>

Adam/Loss/rawz��=

Accuracy/__raw_  �?

Accuracy��}?C��Z       o��	Œ,\���A�*L

Lossk�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyr/~?�$�Z       o��	į,\���A�*L

Loss�>

Adam/Loss/rawZ_4=

Accuracy/__raw_  �?

Accuracy�]~?�j{�Z       o��	B�,\���A�*L

Loss�
>

Adam/Loss/raw5S=

Accuracy/__raw_  �?

Accuracy��~?����Z       o��	��,\���A�*L

Loss�
>

Adam/Loss/raw�:=

Accuracy/__raw_  �?

AccuracyW�~?���yZ       o��	�-\���A�*L

Loss�a�=

Adam/Loss/raw@sd=

Accuracy/__raw_  �?

Accuracy5�~?�XO�Z       o��	�#-\���A�*L

LossJw�=

Adam/Loss/raw��c=

Accuracy/__raw_  �?

Accuracy��~?Ȇ��Z       o��	K<-\���A�*L

Loss��=

Adam/Loss/raw
�=

Accuracy/__raw_  �?

Accuracy	?"��Z       o��	�Y-\���A�*L

LossD�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�!?4LI�Z       o��	�z-\���A�*L

Loss4	�=

Adam/Loss/rawBM=

Accuracy/__raw_  �?

Accuracy8?��@)Z       o��	��-\���A�*L

Loss��=

Adam/Loss/raw��i=

Accuracy/__raw_  �?

AccuracyL?{u�Z       o��	(�-\���A�*L

Loss�>�=

Adam/Loss/rawF)i=

Accuracy/__raw_  �?

Accuracy^?����Z       o��	<�-\���A�*L

Loss�-�=

Adam/Loss/rawNOJ=

Accuracy/__raw_  �?

Accuracy8n?�+'�Z       o��	��-\���A�*L

LossD-�=

Adam/Loss/raw2�x=

Accuracy/__raw_  �?

Accuracy�|?�/�vZ       o��	�.\���A�*L

Loss�/�=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�?�=gZ       o��	Q-.\���A�*L

LossM��=

Adam/Loss/rawGc�=

Accuracy/__raw_  �?

Accuracy��?�W��Z       o��	wH.\���A�*L

Loss��=

Adam/Loss/rawM��=

Accuracy/__raw_  �?

Accuracy[�?���Z       o��	�b.\���A�*L

LossQs�=

Adam/Loss/raw1\=

Accuracy/__raw_  �?

Accuracy�?��8�Z       o��	˄.\���A�*L

Loss=j�=

Adam/Loss/rawe&>=

Accuracy/__raw_  �?

Accuracy��?�ߞ�Z       o��	��.\���A�*L

Loss�G�=

Adam/Loss/rawc$=

Accuracy/__raw_  �?

AccuracyG�?_���Z       o��	o�.\���A�*L

Loss�h�=

Adam/Loss/rawqa=

Accuracy/__raw_  �?

Accuracy@�?�v�4Z       o��	4�.\���A�*L

Loss�=�=

Adam/Loss/raw�0`=

Accuracy/__raw_  �?

Accuracy��?�4ZaZ       o��	>/\���A�*L

Loss�9�=

Adam/Loss/raw$ӌ=

Accuracy/__raw_  �?

Accuracy,�?���Z       o��	\/\���A�*L

LossKI�=

Adam/Loss/raw�=

Accuracy/__raw_  �?

AccuracyA�?= OZ       o��	�?/\���A�*L

Lossj�z=

Adam/Loss/raw�� =

Accuracy/__raw_  �?

Accuracy��?��H�Z       o��	a/\���A�*L

Loss�n=

Adam/Loss/raw��D=

Accuracy/__raw_  �?

Accuracy��?`"$�Z       o��	 }/\���A�*L

Loss�Xj=

Adam/Loss/raw�3D=

Accuracy/__raw_  �?

Accuracy��?}���Z       o��	V�/\���A�*L

Loss"�f=

Adam/Loss/rawS�f=

Accuracy/__raw_  �?

Accuracy��?���(Z       o��	g�/\���A�*L

Loss��f=

Adam/Loss/raw\db=

Accuracy/__raw_  �?

Accuracy��?��/�Z       o��	A�/\���A�*L

Loss�%f=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?pe'vZ       o��	c�/\���A�*L

Lossz9^=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�?�q�Z       o��	�	0\���A�*L

Loss{�a=

Adam/Loss/rawPS�=

Accuracy/__raw_  �?

AccuracyO�?���Z       o��	["0\���A�*L

LossL�d=

Adam/Loss/raw5�4=

Accuracy/__raw_  �?

AccuracyG�?�إ�Z       o��	;0\���A�*L

Lossc`=

Adam/Loss/raw#�@=

Accuracy/__raw_  �?

Accuracy�?��X�Z       o��	�R0\���A�*L

Loss��\=

Adam/Loss/raw��G=

Accuracy/__raw_  �?

Accuracy��?� �cZ       o��	�n0\���A�*L

Lossr�Z=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�?,g� Z       o��	֌0\���A�*L

Loss�N=

Adam/Loss/rawSf�<

Accuracy/__raw_  �?

Accuracy`�?!�R�Z       o��	q�0\���A�*L

Loss��C=

Adam/Loss/rawqq�=

Accuracy/__raw_  �?

Accuracy��?P2��Z       o��	��0\���A�*L

LossaO=

Adam/Loss/raw� =

Accuracy/__raw_  �?

Accuracy��?w~��Z       o��	2�0\���A�*L

Loss�)I=

Adam/Loss/rawV�<

Accuracy/__raw_  �?

Accuracy��?�#aTZ       o��	F1\���A�*L

LossR�>=

Adam/Loss/raw�V�=

Accuracy/__raw_  �?

Accuracy`�?�l�Z       o��	N)1\���A�*L

Lossu�I=

Adam/Loss/raw@Ô=

Accuracy/__raw_  �?

Accuracy#�?̅NcZ       o��	�M1\���A�*L

Loss)CS=

Adam/Loss/raw��6=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	��1\���A�*L

LossihP=

Adam/Loss/rawq�@=

Accuracy/__raw_  �?

Accuracyq�?%^,Z       o��	p�1\���A�*L

Loss��N=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?x��Z       o��	��1\���A�*L

LosskMI=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�?� oZ       o��	��1\���A�*L

LossqbR=

Adam/Loss/raw&��=

Accuracy/__raw_  �?

Accuracy��?��Z       o��	�2\���A�*L

Loss�xZ=

Adam/Loss/rawD	
=

Accuracy/__raw_  �?

AccuracyZ�?����Z       o��	32\���A�*L

Loss~mR=

Adam/Loss/raw�"5=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	�M2\���A�*L

Loss�O=

Adam/Loss/raw�B=

Accuracy/__raw_  �?

Accuracy�?	BF�Z       o��	/j2\���A�*L

Loss'7N=

Adam/Loss/raw��;=

Accuracy/__raw_  �?

AccuracyW�?�+b�Z       o��	f�2\���A�*L

Loss2bL=

Adam/Loss/raw(B;=

Accuracy/__raw_  �?

Accuracy��?�,�LZ       o��	�2\���A�*L

Loss˫J=

Adam/Loss/raw~=

Accuracy/__raw_  �?

Accuracy��?.� Z       o��	|�2\���A�*L

Loss�D=

Adam/Loss/raw]&_=

Accuracy/__raw_  �?

Accuracy�?�h��Z       o��	��2\���A�*L

LossK�F=

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyA�?�LǘZ       o��	��2\���A�*L

Loss�jS=

Adam/Loss/raw�g*=

Accuracy/__raw_  �?

Accuracyn�?!�S�Z       o��	N
3\���A�*L

Loss�PO=

Adam/Loss/raw�*=

Accuracy/__raw_  �?

Accuracy��?��
Z       o��	�$3\���A�*L

Loss�K=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?�WN�Z       o��	%?3\���A�*L

Loss�D=

Adam/Loss/raw��@

Accuracy/__raw_   >

Accuracy��?�Z�Z       o��	�Z3\���A�*L

Loss��L?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��i?�=�Z       o��	�u3\���A�*L

Loss�:?

Adam/Loss/rawZ�*=

Accuracy/__raw_  �?

Accuracy�k?�m�
Z       o��	��3\���A�*L

Loss�{(?

Adam/Loss/raw��+=

Accuracy/__raw_  �?

AccuracyM�m?���Z       o��	ޭ3\���A�*L

Loss8�?

Adam/Loss/rawj=

Accuracy/__raw_  �?

Accuracyߪo?�\�bZ       o��	l�3\���A�*L

Loss{n
?

Adam/Loss/raw�^=

Accuracy/__raw_  �?

Accuracy�Lq?y�U'Z       o��	s�3\���A�*L

Losss��>

Adam/Loss/raw"�=

Accuracy/__raw_  �?

AccuracyI�r?	W�Z       o��	�4\���A�*L

LossT��>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�t?����Z       o��	f.4\���A�*L

Lossʴ�>

Adam/Loss/raw�}=

Accuracy/__raw_  �?

Accuracy�Hu?g���Z       o��	RI4\���A�*L

LossG��>

Adam/Loss/rawB�=

Accuracy/__raw_  �?

Accuracy[v?A��Z       o��	�d4\���A�*L

LossN��>

Adam/Loss/raw�,=

Accuracy/__raw_  �?

Accuracy�Qw?�%Z       o��	I�4\���A�*L

Loss�m�>

Adam/Loss/rawC�=

Accuracy/__raw_  �?

Accuracy.0x?�'�QZ       o��	��4\���A�*L

Loss�d�>

Adam/Loss/rawg'$=

Accuracy/__raw_  �?

Accuracy)�x?�e�0Z       o��	��4\���A�*L

LossV�>

Adam/Loss/raw�$=

Accuracy/__raw_  �?

Accuracy%�y?ŝ��Z       o��	#�4\���A�*L

Loss$p>

Adam/Loss/raw(k=

Accuracy/__raw_  �?

Accuracy!Nz?W���Z       o��	q5\���A�*L

Loss�[>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��z?J��[Z       o��	�5\���A�*L

Loss<;M>

Adam/Loss/raw�� =

Accuracy/__raw_  �?

Accuracy c{?�L�~Z       o��	�95\���A�*L

Loss��<>

Adam/Loss/raw9�=

Accuracy/__raw_  �?

Accuracy6�{?#�wZ       o��	qT5\���A�*L

Loss��0>

Adam/Loss/raw�щ=

Accuracy/__raw_  �?

Accuracy}C|?s�\Z       o��	�n5\���A�*L

Loss��%>

Adam/Loss/rawd�I=

Accuracy/__raw_  �?

Accuracy$�|?���Z       o��	��5\���A�*L

Lossm>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy:�|?+�]�Z       o��	n�5\���A�*L

Loss[�>

Adam/Loss/raw.�=

Accuracy/__raw_  �?

Accuracy�F}?��b%Z       o��	s�5\���A�*L

Loss.J>

Adam/Loss/raw�Q =

Accuracy/__raw_  �?

Accuracyo�}?�RZ       o��	��5\���A�*L

Lossм�=

Adam/Loss/rawG�=

Accuracy/__raw_  �?

Accuracy1�}?|�p�Z       o��	p6\���A�*L

Loss���=

Adam/Loss/raw:�=

Accuracy/__raw_  �?

Accuracy�~?scP&Z       o��	q96\���A�*L

Loss��=

Adam/Loss/raw��==

Accuracy/__raw_  �?

Accuracy�6~?����Z       o��	 X6\���A�*L

Loss���=

Adam/Loss/raw��0=

Accuracy/__raw_  �?

AccuracyAd~?��EiZ       o��	�|6\���A�*L

Loss�M�=

Adam/Loss/rawI.=

Accuracy/__raw_  �?

Accuracyn�~?pX#7Z       o��	��6\���A�*L

Loss�ɵ=

Adam/Loss/raw��-=

Accuracy/__raw_  �?

Accuracy}�~?�$�%Z       o��	��6\���A�*L

Loss>K�=

Adam/Loss/rawH�=

Accuracy/__raw_  �?

Accuracy��~?Ş��Z       o��	%�6\���A�*L

Loss��=

Adam/Loss/raw�h=

Accuracy/__raw_  �?

Accuracy��~?\�i�Z       o��	��6\���A�*L

Loss��=

Adam/Loss/rawh\=

Accuracy/__raw_  �?

Accuracy�?�%�Z       o��	�7\���A�*L

Lossh��=

Adam/Loss/raw4��=

Accuracy/__raw_  �?

Accuracy/%?n��Z       o��	�+7\���A�*L

Loss��=

Adam/Loss/raw�'�=

Accuracy/__raw_  �?

Accuracy;?g��Z       o��	kG7\���A�*L

Loss���=

Adam/Loss/raw=#=

Accuracy/__raw_  �?

Accuracy�N?�&��Z       o��	�c7\���A�*L

Loss���=

Adam/Loss/raw
�==

Accuracy/__raw_  �?

Accuracy|`?Ca�tZ       o��	J}7\���A�*L

Loss�]�=

Adam/Loss/rawڷ#=

Accuracy/__raw_  �?

Accuracypp?L�~Z       o��	,�7\���A�*L

Loss��=

Adam/Loss/raw>�.=

Accuracy/__raw_  �?

Accuracy�~?L9{�Z       o��	��7\���A�*L

Loss��y=

Adam/Loss/raw,.=

Accuracy/__raw_  �?

Accuracy��?P��zZ       o��	��7\���A�*L

Loss�Tr=

Adam/Loss/rawB��<

Accuracy/__raw_  �?

AccuracyX�?�w^�Z       o��	6�7\���A�*L

Losslnf=

Adam/Loss/rawΝ�=

Accuracy/__raw_  �?

Accuracyϡ?4��AZ       o��	�8\���A�*L

Loss�Oi=

Adam/Loss/raw��7=

Accuracy/__raw_  �?

Accuracy:�?�>�0Z       o��	F%8\���A�*L

Loss#_d=

Adam/Loss/rawvt!=

Accuracy/__raw_  �?

Accuracy��?�ѥlZ       o��	d?8\���A�*L

Loss�]=

Adam/Loss/raw�!=

Accuracy/__raw_  �?

AccuracyU�?���Z       o��	�\8\���A�*L

Loss$�W=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy3�?6�S�Z       o��	�y8\���A�*L

Loss+�[=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracya�?QŠ�Z       o��	��8\���A�*L

Loss`�P=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?�GN�Z       o��	��8\���A�*L

Loss�9X=

Adam/Loss/raw�e=

Accuracy/__raw_  �?

Accuracy��?820Z       o��	��8\���A�*L

LossI�P=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyt�?��Z       o��	9\���A�*L

Loss6VJ=

Adam/Loss/raw�9=

Accuracy/__raw_  �?

Accuracy��?��)eZ       o��	�!9\���A�*L

Loss`�D=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy(�?��/�Z       o��	WA9\���A�*L

Loss��==

Adam/Loss/rawnU=

Accuracy/__raw_  �?

Accuracyq�?-8�}Z       o��	�]9\���A�*L

LossXd8=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracyf�?�kZ       o��	�x9\���A�*L

Loss��3=

Adam/Loss/raw}�=

Accuracy/__raw_  �?

Accuracy�?���Z       o��	k�9\���A�*L

Loss.�/=

Adam/Loss/raw��:=

Accuracy/__raw_  �?

Accuracyt�?W�q�Z       o��	��9\���A�*L

Loss�1=

Adam/Loss/raw�Yf=

Accuracy/__raw_  �?

Accuracy��?��8Z       o��	�9\���A�*L

Loss�]6=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?��B�Z       o��	1�9\���A�*L

Loss'�B=

Adam/Loss/rawя:=

Accuracy/__raw_  �?

AccuracyK�?t�jZ       o��	:\���A�*L

LossB=

Adam/Loss/raw��9=

Accuracy/__raw_  �?

Accuracy��?�J#�Z       o��	�!:\���A�*L

Loss�2A=

Adam/Loss/rawT�=

Accuracy/__raw_  �?

AccuracyG�?�BgZ       o��	�F:\���A�*L

Loss(t;=

Adam/Loss/rawݩ<

Accuracy/__raw_  �?

Accuracy��?�a;Z       o��	�a:\���A�*L

Loss�/=

Adam/Loss/rawk��<

Accuracy/__raw_  �?

Accuracy��?��Z       o��	l{:\���A�*L

Loss��(=

Adam/Loss/raw�ˆ=

Accuracy/__raw_  �?

Accuracy��?7P�RZ       o��	��:\���A�*L

Loss��2=

Adam/Loss/raw�U�=

Accuracy/__raw_  �?

Accuracy��?Ye_Z       o��	�:\���A�*L

Loss^�;=

Adam/Loss/raw=�*=

Accuracy/__raw_  �?

Accuracy}�?�d��Z       o��	��:\���A�*L

Loss�1:=

Adam/Loss/rawv�=

Accuracy/__raw_  �?

Accuracy=�?M԰Z       o��	��:\���A�*L

Loss��5=

Adam/Loss/rawȪ=

Accuracy/__raw_  �?

Accuracy��?�|V)Z       o��	��:\���A�*L

Loss��2=

Adam/Loss/raw5^=

Accuracy/__raw_  �?

Accuracy��?�S�Z       o��	�;\���A�*L

Loss� 7=

Adam/Loss/raw�^=

Accuracy/__raw_  �?

Accuracy�?tشZ       o��	}>;\���A�*L

Lossi;=

Adam/Loss/rawYM)=

Accuracy/__raw_  �?

Accuracy��?:�wZ       o��	�c;\���A�*L

Loss�>9=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�?P��Z       o��	-�;\���A�*L

Loss��4=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyh�?��Z       o��	��;\���A�*L

LossOU1=

Adam/Loss/rawe�U=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	x�;\���A�*L

Loss��4=

Adam/Loss/raw�LU=

Accuracy/__raw_  �?

Accuracy�?��[Z       o��	6�;\���A�*L

Losso:8=

Adam/Loss/raw��:=

Accuracy/__raw_  �?

Accuracyb�?Oh��Z       o��	%<\���A�*L

LossCu8=

Adam/Loss/raw�� =

Accuracy/__raw_  �?

Accuracy��?���xZ       o��	)<\���A�*L

Loss��2=

Adam/Loss/raw�m�<

Accuracy/__raw_  �?

Accuracy��?M���Z       o��	�K<\���A�*L

Loss��)=

Adam/Loss/rawg*/=

Accuracy/__raw_  �?

Accuracy�?�E�Z       o��	@m<\���A�*L

Losscg*=

Adam/Loss/rawط.=

Accuracy/__raw_  �?

AccuracyH�?��Z       o��	�<\���A�*L

Loss��*=

Adam/Loss/raw�W =

Accuracy/__raw_  �?

Accuracyt�?0�Z       o��	�<\���A�*L

Loss6�)=

Adam/Loss/rawOn=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	��<\���A�*L

Lossg�0=

Adam/Loss/raw=�=

Accuracy/__raw_  �?

Accuracy��?��+Z       o��	��<\���A�*L

Loss�>,=

Adam/Loss/rawwk<=

Accuracy/__raw_  �?

Accuracy��?j��Z       o��	�<\���A�*L

Loss��-=

Adam/Loss/raw�;=

Accuracy/__raw_  �?

Accuracy��?R\>DZ       o��	j=\���A�*L

Loss�@/=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�?c��Z       o��	�2=\���A�*L

LossL"&=

Adam/Loss/raw�F&A

Accuracy/__raw_   >

Accuracy.�?�0��Z       o��	7P=\���A�*L

Lossn��?

Adam/Loss/raw
�<=

Accuracy/__raw_  �?

Accuracyܘi?�* 5Z       o��	Dn=\���A�*L

Loss�y?

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy`�k?�nG'Z       o��	��=\���A�*L

Loss~�`?

Adam/Loss/raww�<

Accuracy/__raw_  �?

Accuracy��m?��Z       o��	�=\���A�*L

Lossq*K?

Adam/Loss/raw��3=

Accuracy/__raw_  �?

Accuracy�o?]8�[Z       o��	m�=\���A�*L

Loss��7?

Adam/Loss/rawD'"=

Accuracy/__raw_  �?

Accuracy-Mq?���VZ       o��	��=\���A�*L

Loss��&?

Adam/Loss/rawƽP=

Accuracy/__raw_  �?

Accuracyu�r?���Z       o��	�>\���A�*L

Loss�;?

Adam/Loss/raw�'=

Accuracy/__raw_  �?

Accuracyt?ФCjZ       o��	t(>\���A�*L

Loss�'	?

Adam/Loss/raw��&=

Accuracy/__raw_  �?

Accuracy�Hu?��lZ       o��	�C>\���A�*L

Lossv��>

Adam/Loss/raw&}=

Accuracy/__raw_  �?

Accuracy6[v?���Z       o��	�`>\���A�*L

Lossa��>

Adam/Loss/raw2J=

Accuracy/__raw_  �?

AccuracyRw?���Z       o��	�>\���A�*L

Loss+�>

Adam/Loss/raw:k&=

Accuracy/__raw_  �?

AccuracyH0x?��*'Z       o��	:�>\���A�*L

Lossd��>

Adam/Loss/raw.=

Accuracy/__raw_  �?

AccuracyA�x?�Q�Z       o��	��>\���A�*L

Loss��>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy;�y?|���Z       o��	Q�>\���A�*L

Loss�Қ>

Adam/Loss/raw..D=

Accuracy/__raw_  �?

Accuracy5Nz?��5�Z       o��	4?\���A�*L

Loss�ʍ>

Adam/Loss/raw�8=

Accuracy/__raw_  �?

Accuracy��z?��hVZ       o��	0.?\���A�*L

Loss�m�>

Adam/Loss/raw��@=

Accuracy/__raw_  �?

Accuracy1c{?uVw{Z       o��	/O?\���A�*L

Loss��m>

Adam/Loss/raw�G�<

Accuracy/__raw_  �?

AccuracyF�{?vRmGZ       o��	6u?\���A�*L

LossX�X>

Adam/Loss/raw=l�<

Accuracy/__raw_  �?

Accuracy�C|?�R�Z       o��	4�?\���A�*L

LossC<F>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy1�|?��MZ       o��	��?\���A�*L

Loss��5>

Adam/Loss/raw�^=

Accuracy/__raw_  �?

AccuracyF�|?�D0?Z       o��	��?\���A�*L

Loss�(>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�F}?�P�Z       o��	�@\���A�*L

Loss�>

Adam/Loss/raw>z�<

Accuracy/__raw_  �?

Accuracyy�}?���Z       o��	�@\���A�*L

Loss�>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy:�}?s�<"Z       o��	�6@\���A�*L

Loss}�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�~?@��Z       o��	�T@\���A�*L

Loss#��=

Adam/Loss/rawZ'=

Accuracy/__raw_  �?

Accuracy�6~?�jWZ       o��	�m@\���A�*L

Loss���=

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyGd~?s���Z       o��	i�@\���A�*L

LossD��=

Adam/Loss/raw�f=

Accuracy/__raw_  �?

Accuracys�~?֫yZ       o��	��@\���A�*L

Loss���=

Adam/Loss/raw�<f=

Accuracy/__raw_  �?

Accuracy��~?,�%�Z       o��	��@\���A�*L

Loss���=

Adam/Loss/rawO��<

Accuracy/__raw_  �?

Accuracy��~?2T�Z       o��	U�@\���A�*L

Loss���=

Adam/Loss/raw�)=

Accuracy/__raw_  �?

Accuracy��~?s��Z       o��	�A\���A�*L

Loss�,�=

Adam/Loss/raw�<=

Accuracy/__raw_  �?

Accuracy�?A.XZ       o��	�.A\���A�*L

Loss	x�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy2%?���Z       o��	MKA\���A�*L

Loss��=

Adam/Loss/rawNx=

Accuracy/__raw_  �?

Accuracy;?JT�Z       o��	�gA\���A�*L

Loss��=

Adam/Loss/raw�bZ=

Accuracy/__raw_  �?

Accuracy�N?k�sZ       o��	k�A\���A�*L

LossR��=

Adam/Loss/raw#N=

Accuracy/__raw_  �?

Accuracy}`?��^Z       o��	N�A\���A�*L

Loss�@�=

Adam/Loss/raw@��<

Accuracy/__raw_  �?

Accuracyqp?�N;eZ       o��	��A\���A�*L

Loss�~=

Adam/Loss/raw(=

Accuracy/__raw_  �?

Accuracy�~?��PZ       o��	n�A\���A�*L

Loss��s=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	�A\���A�*L

Loss��j=

Adam/Loss/raw��&=

Accuracy/__raw_  �?

AccuracyY�?�+PZ       o��	B\���A�*L

Loss��c=

Adam/Loss/rawb
X=

Accuracy/__raw_  �?

AccuracyС?�ӮZ       o��	�+B\���A�*L

Loss��b=

Adam/Loss/rawxC=

Accuracy/__raw_  �?

Accuracy;�?_�#�Z       o��	�EB\���A�*L

Loss��_=

Adam/Loss/raw)�<

Accuracy/__raw_  �?

Accuracy��?�P��Z       o��	xaB\���A�*L

Loss�Q=

Adam/Loss/rawB�<

Accuracy/__raw_  �?

AccuracyV�?��D!Z       o��	S{B\���A�*L

LossGE=

Adam/Loss/rawO��<

Accuracy/__raw_  �?

Accuracy4�?�)IZ       o��	��B\���A�*L

Loss==

Adam/Loss/rawq�g=

Accuracy/__raw_  �?

Accuracyb�?�q�Z       o��	�B\���A�*L

LossUA=

Adam/Loss/raw��6=

Accuracy/__raw_  �?

Accuracy��?�q�Z       o��	�B\���A�*L

Loss�E@=

Adam/Loss/rawa�=

Accuracy/__raw_  �?

Accuracy��?	���Z       o��	�	C\���A�*L

Loss�:=

Adam/Loss/raw�7=

Accuracy/__raw_  �?

Accuracyt�?��C3Z       o��	�%C\���A�*L

Loss��4=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?�V]Z       o��	d@C\���A�*L

Lossy0=

Adam/Loss/rawj,=

Accuracy/__raw_  �?

Accuracy(�?�`�Z       o��	�ZC\���A�*L

Loss+0=

Adam/Loss/raw�^=

Accuracy/__raw_  �?

Accuracyq�?�8F�Z       o��	dvC\���A�*L

Loss��4=

Adam/Loss/raw��&=

Accuracy/__raw_  �?

Accuracyf�?]/�Z       o��	��C\���A�*L

Loss�F3=

Adam/Loss/raw�Q&=

Accuracy/__raw_  �?

Accuracy�?S��xZ       o��	T�C\���A�*L

Loss4�1=

Adam/Loss/raw�?�<

Accuracy/__raw_  �?

Accuracyt�?~]�Z       o��	)�C\���A�*L

LossFe,=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?S�OtZ       o��	5�C\���A�*L

Loss'�&=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?��U�Z       o��	D\���A�*L

Loss�� =

Adam/Loss/raw�=

Accuracy/__raw_  �?

AccuracyK�?y�p�Z       o��	-&D\���A�*L

Loss�+=

Adam/Loss/raw�r�=

Accuracy/__raw_  �?

Accuracy��?aG�9Z       o��	?D\���A�*L

Loss)y4=

Adam/Loss/raw(�<

Accuracy/__raw_  �?

AccuracyG�?w���Z       o��	�YD\���A�*L

Loss��+=

Adam/Loss/rawS$=

Accuracy/__raw_  �?

Accuracy��?;�Z       o��	yvD\���A�*L

Loss�+=

Adam/Loss/raw$=

Accuracy/__raw_  �?

Accuracy��?�X[Z       o��	h�D\���A�*L

Loss��(=

Adam/Loss/raw�1=

Accuracy/__raw_  �?

Accuracy��?�~�Z       o��	*�D\���A�*L

Loss��)=

Adam/Loss/raw��0=

Accuracy/__raw_  �?

Accuracy��?�sZ       o��	�D\���A�*L

Loss�E*=

Adam/Loss/rawj��<

Accuracy/__raw_  �?

Accuracy}�?�o,Z       o��	~�D\���A�*L

Loss��$=

Adam/Loss/rawXc.=

Accuracy/__raw_  �?

Accuracy=�?�ac�Z       o��	�E\���A�*L

Loss܎%=

Adam/Loss/raw�K�<

Accuracy/__raw_  �?

Accuracy��?s��jZ       o��	�E\���A�*L

Loss�j=

Adam/Loss/rawoF=

Accuracy/__raw_  �?

Accuracy��?t��Z       o��	q;E\���A�*L

Loss�M=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�?u�.Z       o��	3lE\���A�*L

LossW=

Adam/Loss/raw\�&=

Accuracy/__raw_  �?

Accuracy��?/�>Z       o��	׆E\���A�*L

LossͲ=

Adam/Loss/raw8�U=

Accuracy/__raw_  �?

Accuracy�?�Z       o��	��E\���A�*L

Loss>� =

Adam/Loss/raws� =

Accuracy/__raw_  �?

Accuracyh�?���|Z       o��	j�E\���A�*L

Loss*� =

Adam/Loss/raw/��<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	M�E\���A�*L

LossBx=

Adam/Loss/raw^��<

Accuracy/__raw_  �?

Accuracy�?��'�Z       o��	� F\���A�*L

Loss��=

Adam/Loss/raw�b�<

Accuracy/__raw_  �?

Accuracyb�?��hZ       o��	� F\���A�*L

Loss�=

Adam/Loss/raw�5s=

Accuracy/__raw_  �?

Accuracy��?��2�Z       o��	_CF\���A�*L

Lossl�=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?_n,Z       o��	�aF\���A�*L

Loss-q=

Adam/Loss/raw��k=

Accuracy/__raw_  �?

Accuracy�?��@Z       o��	�F\���A�*L

Loss�1=

Adam/Loss/raw�Ck=

Accuracy/__raw_  �?

AccuracyH�?l�XZ       o��	�F\���A�*L

Lossj %=

Adam/Loss/rawՐ=

Accuracy/__raw_  �?

Accuracyt�?�Z       o��	��F\���A�*L

LossB#=

Adam/Loss/raw~~�<

Accuracy/__raw_  �?

Accuracy��?�iZ       o��	��F\���A�*L

Loss`�=

Adam/Loss/raw��U=

Accuracy/__raw_  �?

Accuracy��?�I*�Z       o��	�F\���A�*L

LossJ#$=

Adam/Loss/rawz��<

Accuracy/__raw_  �?

Accuracy��?���wZ       o��	�G\���A�*L

Loss�h=

Adam/Loss/raw�%�<

Accuracy/__raw_  �?

Accuracy��?n{gZ       o��	�*G\���A�*L

Loss# =

Adam/Loss/raw72�<

Accuracy/__raw_  �?

Accuracy�?�HQ�Z       o��	�GG\���A�*L

Loss	9=

Adam/Loss/raw�-/=

Accuracy/__raw_  �?

Accuracy.�?�NZ       o��	�kG\���A�*L

Loss�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyC�?��wZ       o��	e�G\���A�*L

Loss5�=

Adam/Loss/rawz�<

Accuracy/__raw_  �?

AccuracyV�?��_�Z       o��	��G\���A�*L

Loss��=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracyg�?*]��Z       o��	��G\���A�*L

Loss��=

Adam/Loss/raw��^=

Accuracy/__raw_  �?

Accuracyv�?�SP�Z       o��	�H\���A�*L

Loss�$=

Adam/Loss/rawrB�<

Accuracy/__raw_  �?

Accuracy��?��:�Z       o��	�0H\���A�*L

Loss`�=

Adam/Loss/raw�õ<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	�[H\���A�*L

Lossn�=

Adam/Loss/rawFW=

Accuracy/__raw_  �?

Accuracy��?�lc�Z       o��	czH\���A�*L

Loss��
=

Adam/Loss/rawH=

Accuracy/__raw_  �?

Accuracy��?�
Z       o��	ԜH\���A�*L

LossT
=

Adam/Loss/raw��m=

Accuracy/__raw_  �?

Accuracy��?�/�6Z       o��	R�H\���A�*L

Loss�F=

Adam/Loss/raw(��<

Accuracy/__raw_  �?

Accuracy��?��yZ       o��	��H\���A�*L

Loss|=

Adam/Loss/raw�y�<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	��H\���A�*L

Loss�h=

Adam/Loss/raww=

Accuracy/__raw_  �?

Accuracy��?��4Z       o��	�I\���A�*L

LossoE=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?l7YpZ       o��	r7I\���A�*L

Loss�=

Adam/Loss/raw|*9=

Accuracy/__raw_  �?

Accuracy��?�4ƖZ       o��	_I\���A�*L

Loss h=

Adam/Loss/raw�j�<

Accuracy/__raw_  �?

Accuracy��?�{�iZ       o��	�{I\���A�*L

Lossگ=

Adam/Loss/raw��	=

Accuracy/__raw_  �?

Accuracy��?�;��Z       o��	��I\���A�*L

Loss==

Adam/Loss/raw�!=

Accuracy/__raw_  �?

Accuracy��?B7��Z       o��	p�I\���A�*L

LossϜ=

Adam/Loss/rawξ=

Accuracy/__raw_  �?

Accuracy��?�2SmZ       o��	��I\���A�*L

Loss�=

Adam/Loss/raw]l=

Accuracy/__raw_  �?

Accuracy��?��(kZ       o��	��I\���A�*L

Loss�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�.�Z       o��		�I\���A�*L

Loss��=

Adam/Loss/raw�S�<

Accuracy/__raw_  �?

Accuracy��?O�Z�Z       o��	�J\���A�*L

Loss�J=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?蘹Z       o��	X:J\���A�*L

Loss=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?_㣝Z       o��	DjJ\���A�*L

Loss$&=

Adam/Loss/raw��]=

Accuracy/__raw_  �?

Accuracy��?�,ZZ       o��	��J\���A�*L

Loss3=

Adam/Loss/rawL��<

Accuracy/__raw_  �?

Accuracy��?�KEIZ       o��	�J\���A�*L

Loss؅=

Adam/Loss/raw<�3=

Accuracy/__raw_  �?

Accuracy��?s$��Z       o��	x�J\���A�*L

Lossb�=

Adam/Loss/rawW=

Accuracy/__raw_  �?

Accuracy��?	I��Z       o��	E�J\���A�*L

Lossq=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?��uZ       o��	�K\���A�*L

Loss�g=

Adam/Loss/rawb�=

Accuracy/__raw_  �?

Accuracy��?=��\Z       o��	#,K\���A�*L

Loss08=

Adam/Loss/raw�t�<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	#JK\���A�*L

Lossg8	=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?5ɟZ       o��	znK\���A�*L

Loss�R=

Adam/Loss/raw�n�<

Accuracy/__raw_  �?

Accuracy��?��)Z       o��	ѐK\���A�*L

Losskv=

Adam/Loss/raw5��<

Accuracy/__raw_  �?

Accuracy��?!��Z       o��	��K\���A�*L

LossF��<

Adam/Loss/raw�#=

Accuracy/__raw_  �?

Accuracy��?2�٭Z       o��	�K\���A�*L

Lossԡ=

Adam/Loss/rawe�/=

Accuracy/__raw_  �?

Accuracy��?]$8Z       o��	`�K\���A�*L

Loss�#=

Adam/Loss/rawe�<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	}L\���A�*L

LossǓ=

Adam/Loss/rawpc�<

Accuracy/__raw_  �?

Accuracy��?%�R�Z       o��	�"L\���A�*L

Loss_�=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?M0�Z       o��	`?L\���A�*L

Loss\� =

Adam/Loss/rawp{9=

Accuracy/__raw_  �?

Accuracy��?�#�Z       o��	�^L\���A�*L

Loss<=

Adam/Loss/rawX =

Accuracy/__raw_  �?

Accuracy��?�T�Z       o��	<�L\���A�*L

Loss��=

Adam/Loss/raw�L=

Accuracy/__raw_  �?

Accuracy��?b��Z       o��	��L\���A�*L

Loss�=

Adam/Loss/raw�yr=

Accuracy/__raw_  �?

Accuracy��?v���Z       o��	��L\���A�*L

LossE�=

Adam/Loss/raw�r=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	}�L\���A�*L

Loss
I=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?����Z       o��	�M\���A�*L

Lossp=

Adam/Loss/raw�P�<

Accuracy/__raw_  �?

Accuracy��?����Z       o��	�"M\���A�*L

Loss%\=

Adam/Loss/rawb�!=

Accuracy/__raw_  �?

Accuracy��?Ќ��Z       o��	l=M\���A�*L

Lossxc=

Adam/Loss/rawa� =

Accuracy/__raw_  �?

Accuracy��?����Z       o��	�\M\���A�*L

Loss��=

Adam/Loss/rawc� =

Accuracy/__raw_  �?

Accuracy��?v��Z       o��	�{M\���A�*L

LossP�=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?r��Z       o��	��M\���A�*L

Loss��=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?{b�tZ       o��	�M\���A�*L

Lossf5	=

Adam/Loss/rawh=

Accuracy/__raw_  �?

Accuracy��?�|PZ       o��	��M\���A�*L

Loss��	=

Adam/Loss/raw�F�<

Accuracy/__raw_  �?

Accuracy��?"�Z       o��	��M\���A�*L

Loss�Y=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?H�Z       o��	�N\���A�*L

Loss�m�<

Adam/Loss/rawq�'=

Accuracy/__raw_  �?

Accuracy��?���/Z       o��	?5N\���A�*L

Loss��=

Adam/Loss/raw�~
=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	HON\���A�*L

Loss��=

Adam/Loss/raw{�J=

Accuracy/__raw_  �?

Accuracy��?w��Z       o��	+lN\���A�*L

Lossn�	=

Adam/Loss/raw7g�<

Accuracy/__raw_  �?

Accuracy��?��ܭZ       o��	d�N\���A�*L

Loss��=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�/ĘZ       o��	 �N\���A�*L

Loss��=

Adam/Loss/rawZ��<

Accuracy/__raw_  �?

Accuracy��?��A�Z       o��	��N\���A�*L

Loss��=

Adam/Loss/rawh��<

Accuracy/__raw_  �?

Accuracy��?�o�Z       o��	�N\���A�*L

Loss� =

Adam/Loss/raw��A=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	O\���A�*L

Loss&=

Adam/Loss/raw�Q=

Accuracy/__raw_  �?

Accuracy��?�ğ�Z       o��	k-O\���A�*L

Loss�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�X�nZ       o��	|bO\���A�*L

Loss�=

Adam/Loss/rawxI�<

Accuracy/__raw_  �?

Accuracy��?�W�Z       o��	�O\���A�*L

Loss��=

Adam/Loss/raw�-�<

Accuracy/__raw_  �?

Accuracy��?��~cZ       o��	&�O\���A�*L

Loss�m�<

Adam/Loss/rawk�H=

Accuracy/__raw_  �?

Accuracy��?|U�Z       o��	��O\���A�*L

Loss�=

Adam/Loss/raw�+	=

Accuracy/__raw_  �?

Accuracy��?v0EZ       o��	N�O\���A�*L

Loss�>=

Adam/Loss/rawy�=

Accuracy/__raw_  �?

Accuracy��?��G�Z       o��	JP\���A�*L

Loss�g=

Adam/Loss/rawp��<

Accuracy/__raw_  �?

Accuracy��?�>�#Z       o��	�'P\���A�*L

LossH�=

Adam/Loss/raw�}�<

Accuracy/__raw_  �?

Accuracy��?�F��Z       o��	�DP\���A�*L

LossN@�<

Adam/Loss/rawVR�<

Accuracy/__raw_  �?

Accuracy��?=0(
Z       o��	�`P\���A�*L

Loss��<

Adam/Loss/raw2[�<

Accuracy/__raw_  �?

Accuracy��?\uy�Z       o��	�~P\���A�*L

Loss�<�<

Adam/Loss/rawߋ�<

Accuracy/__raw_  �?

Accuracy��?�u�Z       o��	�P\���A�*L

Loss���<

Adam/Loss/raw��$=

Accuracy/__raw_  �?

Accuracy��?kr��Z       o��	��P\���A�*L

Loss$� =

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�f�wZ       o��	��P\���A�*L

Loss�?�<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?_PIZ       o��	�Q\���A�*L

Loss���<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�C<Z       o��	�Q\���A�*L

Loss�0�<

Adam/Loss/rawu�<

Accuracy/__raw_  �?

Accuracy��?d|u�Z       o��	�:Q\���A�*L

Loss��<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?T�SZ       o��	 SQ\���A�*L

Loss���<

Adam/Loss/rawT/+=

Accuracy/__raw_  �?

Accuracy��?�.Z       o��	{kQ\���A�*L

Loss��<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?_	N
Z       o��	n�Q\���A�*L

Lossw��<

Adam/Loss/raw*NL=

Accuracy/__raw_  �?

Accuracy��?�5Z       o��	��Q\���A�*L

LossG�=

Adam/Loss/raw�K=

Accuracy/__raw_  �?

Accuracy��?��6�Z       o��	��Q\���A�*L

Loss��=

Adam/Loss/raw&&�<

Accuracy/__raw_  �?

Accuracy��?T��Z       o��	U�Q\���A�*L

Loss.�=

Adam/Loss/rawi�<

Accuracy/__raw_  �?

Accuracy��?O�Y�Z       o��	MR\���A�*L

Loss�=

Adam/Loss/raw�U�<

Accuracy/__raw_  �?

Accuracy��?�L��Z       o��	r1R\���A�*L

Lossl7=

Adam/Loss/raw�V�<

Accuracy/__raw_  �?

Accuracy��?Z��Z       o��	LR\���A�*L

Lossr��<

Adam/Loss/raw�ʮ<

Accuracy/__raw_  �?

Accuracy��?��,-Z       o��	�fR\���A�*L

Loss�5�<

Adam/Loss/raw�i@=

Accuracy/__raw_  �?

Accuracy��?D��Z       o��	=�R\���A�*L

Loss�"=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?�6��Z       o��	��R\���A�*L

LossŌ�<

Adam/Loss/raw�E=

Accuracy/__raw_  �?

Accuracy��?]q�Z       o��	��R\���A�*L

Loss6��<

Adam/Loss/raw�,=

Accuracy/__raw_  �?

Accuracy��?l�;�Z       o��	��R\���A�*L

Loss�=

Adam/Loss/raw�u,=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	�R\���A�*L

Lossq =

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	�S\���A�*L

Loss�)=

Adam/Loss/raw�o�<

Accuracy/__raw_  �?

Accuracy��?�e�kZ       o��	/S\���A�*L

Loss� =

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?��4�Z       o��	�LS\���A�*L

Loss��=

Adam/Loss/raw瞿<

Accuracy/__raw_  �?

Accuracy��?k ��Z       o��	QgS\���A�*L

Loss٤�<

Adam/Loss/raw�-�<

Accuracy/__raw_  �?

Accuracy��?Q)Z       o��	��S\���A�*L

Loss#L�<

Adam/Loss/raw2W	=

Accuracy/__raw_  �?

Accuracy��?�,%Z       o��	ܛS\���A�*L

Loss���<

Adam/Loss/rawV�`A

Accuracy/__raw_   >

Accuracy��?8���Z       o��	�S\���A�*L

Loss?1�?

Adam/Loss/rawK�%=

Accuracy/__raw_  �?

Accuracy��i?���nZ       o��	8�S\���A�*L

LossPd�?

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�k?joZ       o��	+�S\���A�*L

Loss �?

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy �m?�"�Z       o��	vT\���A�*L

Loss1{�?

Adam/Loss/raw�<

Accuracy/__raw_  �?

Accuracy��o?�e��Z       o��	r3T\���A�*L

Loss��r?

Adam/Loss/raw�~�<

Accuracy/__raw_  �?

Accuracy�Mq?�Y�Z       o��	�VT\���A�*L

Loss�A[?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��r?��9�Z       o��	�pT\���A�*L

Loss�TF?

Adam/Loss/raw�k=

Accuracy/__raw_  �?

Accuracy�t?�-��Z       o��	�T\���A�*L

Lossg^3?

Adam/Loss/raw
=

Accuracy/__raw_  �?

Accuracy@Iu?«�Z       o��	r�T\���A�*L

Loss�N"?

Adam/Loss/raw�ѩ<

Accuracy/__raw_  �?

Accuracy�[v?}./Z       o��	D�T\���A�*L

Lossk�?

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy_Rw?~��Z       o��	<�T\���A�*L

Loss��?

Adam/Loss/rawrA�<

Accuracy/__raw_  �?

Accuracy�0x?P�SCZ       o��	uU\���A�*L

Loss���>

Adam/Loss/rawz%�<

Accuracy/__raw_  �?

Accuracy{�x?����Z       o��	�U\���A�*L

Loss��>

Adam/Loss/raw6��<

Accuracy/__raw_  �?

Accuracyo�y?|�TZ       o��	;U\���A�*L

LossA��>

Adam/Loss/raw*�9=

Accuracy/__raw_  �?

AccuracydNz?&FƺZ       o��	*WU\���A�*L

Loss�5�>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy'�z?���fZ       o��	qU\���A�*L

Loss��>

Adam/Loss/raw��K=

Accuracy/__raw_  �?

AccuracyVc{?�w[WZ       o��	��U\���A�*L

Loss�I�>

Adam/Loss/rawɯ<

Accuracy/__raw_  �?

Accuracyg�{?\��Z       o��	��U\���A�*L

LossSu�>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�C|?��Z       o��	��U\���A�*L

Loss�v>

Adam/Loss/raw��<

Accuracy/__raw_  �?

AccuracyL�|?0tؐZ       o��	�U\���A�*L

Lossl�_>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy^�|?[��'Z       o��	dV\���A�*L

LossSL>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�F}?���3Z       o��	)%V\���A�*L

Loss�9>

Adam/Loss/raw��%=

Accuracy/__raw_  �?

Accuracy��}?��SZ       o��	�AV\���A�*L

Loss$~+>

Adam/Loss/raw�%=

Accuracy/__raw_  �?

AccuracyL�}?��Z       o��	:[V\���A�*L

Loss�x>

Adam/Loss/raw�"�<

Accuracy/__raw_  �?

Accuracy�~?@�Z       o��	�uV\���A�*L

Loss��>

Adam/Loss/raw�&.=

Accuracy/__raw_  �?

Accuracy�6~?�q�Z       o��	K�V\���A�*L

LossY�>

Adam/Loss/rawb�!=

Accuracy/__raw_  �?

AccuracyUd~?���Z       o��	1�V\���A�*L

Loss���=

Adam/Loss/rawȚ=

Accuracy/__raw_  �?

Accuracy��~?yF~LZ       o��	:�V\���A�*L

Loss���=

Adam/Loss/raw�J=

Accuracy/__raw_  �?

Accuracy��~?!�B�Z       o��	S�V\���A�*L

Lossa��=

Adam/Loss/raw8�<

Accuracy/__raw_  �?

Accuracy��~?����Z       o��	)W\���A�*L

Loss���=

Adam/Loss/raw|!�<

Accuracy/__raw_  �?

Accuracy��~?�2b�Z       o��	"W\���A�*L

Loss�=

Adam/Loss/rawж =

Accuracy/__raw_  �?

Accuracy�?����Z       o��	�<W\���A�*L

Loss���=

Adam/Loss/raw&$�<

Accuracy/__raw_  �?

Accuracy9%?�_��Z       o��	�XW\���A�*L

Loss�ϡ=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy;?R�XZ       o��	�rW\���A�*L

LossLL�=

Adam/Loss/raw�5�<

Accuracy/__raw_  �?

Accuracy�N?�3aZ       o��	7�W\���A�*L

Lossh��=

Adam/Loss/raw�e=

Accuracy/__raw_  �?

Accuracy�`?��E�Z       o��	��W\���A�*L

Loss�6�=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracywp?_��\Z       o��	{�W\���A�*L

Loss>�z=

Adam/Loss/raw]��<

Accuracy/__raw_  �?

Accuracy�~?�(�Z       o��	��W\���A�*L

Loss	sl=

Adam/Loss/rawiZ�<

Accuracy/__raw_  �?

Accuracy��?.�`Z       o��	��W\���A�*L

Loss@�_=

Adam/Loss/raw3 =

Accuracy/__raw_  �?

Accuracy]�?�<6Z       o��	�X\���A�*L

LossrDY=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracyԡ?{�XZ       o��	1X\���A�*L

Loss��N=

Adam/Loss/rawj6=

Accuracy/__raw_  �?

Accuracy?�?�>@Z       o��	�LX\���A�*L

Loss�rL=

Adam/Loss/raw�<

Accuracy/__raw_  �?

Accuracy��?�2HiZ       o��	�jX\���A�*L

Lossm�?=

Adam/Loss/raw]��<

Accuracy/__raw_  �?

AccuracyZ�? ݎTZ       o��	�X\���A�*L

LosssL4=

Adam/Loss/raw<��<

Accuracy/__raw_  �?

Accuracy7�?�2� Z       o��	��X\���A�*L

LossO.=

Adam/Loss/rawF��<

Accuracy/__raw_  �?

Accuracye�?#N�YZ       o��	��X\���A�*L

LossmF'=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�h�<Z       o��	��X\���A�*L

Lossv�$=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?ޣ��Z       o��	�X\���A�*L

Loss��=

Adam/Loss/rawA��<

Accuracy/__raw_  �?

Accuracyw�?�t�-Z       o��	�Y\���A�*L

Lossz=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?߁��Z       o��	�+Y\���A�*L

Loss��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy+�?�X��Z       o��	QY\���A�*L

Lossw=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracyt�?F�Z       o��	ToY\���A�*L

Loss�[=

Adam/Loss/raw;�<

Accuracy/__raw_  �?

Accuracyh�?J�y_Z       o��	�Y\���A�*L

Loss��	=

Adam/Loss/rawe��<

Accuracy/__raw_  �?

Accuracy�?�7��Z       o��	�Y\���A�*L

LossJ4=

Adam/Loss/raw: =

Accuracy/__raw_  �?

Accuracyv�?����Z       o��	��Y\���A�*L

Loss|e=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?u�Z       o��	^�Y\���A�*L

Loss��=

Adam/Loss/rawZr�<

Accuracy/__raw_  �?

Accuracy��?�z��Z       o��	o�Y\���A�*L

Lossvs=

Adam/Loss/raw�0=

Accuracy/__raw_  �?

AccuracyL�?x��cZ       o��	wZ\���A�*L

Loss �=

Adam/Loss/raw�>0=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	(,Z\���A�*L

Loss�=

Adam/Loss/raw�S�<

Accuracy/__raw_  �?

AccuracyH�?���Z       o��	�RZ\���A�*L

Loss0	=

Adam/Loss/rawS�<

Accuracy/__raw_  �?

Accuracy��?��Z       o��	�rZ\���A�*L

Loss��=

Adam/Loss/raw!�<

Accuracy/__raw_  �?

Accuracy��?l���Z       o��	��Z\���A�*L

Loss��=

Adam/Loss/raw�4�<

Accuracy/__raw_  �?

Accuracy��?��Z       o��	�Z\���A�*L

Loss
 =

Adam/Loss/raw ��<

Accuracy/__raw_  �?

Accuracy��?T�Z       o��	"�Z\���A�*L

Loss_J�<

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy~�?C��Z       o��	]�Z\���A�*L

LossՕ =

Adam/Loss/raw{�<

Accuracy/__raw_  �?

Accuracy>�?#^��Z       o��	X�Z\���A�*L

Loss�3�<

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?���9Z       o��	[\���A�*L

Loss���<

Adam/Loss/raw�ٶ<

Accuracy/__raw_  �?

Accuracy��?S\�RZ       o��	r4[\���A�*L

Lossvz�<

Adam/Loss/raw{e�<

Accuracy/__raw_  �?

Accuracy�?�/Z       o��	iU[\���A�*L

Loss]��<

Adam/Loss/raw~�<

Accuracy/__raw_  �?

Accuracy��?�8*�Z       o��	{[\���A�*L

Lossz�<

Adam/Loss/raw~�<

Accuracy/__raw_  �?

Accuracy�?=۲RZ       o��	Ԝ[\���A�*L

Loss�7�<

Adam/Loss/raw*N=

Accuracy/__raw_  �?

Accuracyi�?O���Z       o��	��[\���A�*L

Loss���<

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�~�;Z       o��	��[\���A�*L

LossI�<

Adam/Loss/rawh�=

Accuracy/__raw_  �?

Accuracy�?���
Z       o��	S�[\���A�*L

Loss0u�<

Adam/Loss/raw�`�<

Accuracy/__raw_  �?

Accuracyb�?�l�Z       o��	�\\���A�*L

Loss�?�<

Adam/Loss/raw�ź<

Accuracy/__raw_  �?

Accuracy��?�]�jZ       o��	d!\\���A�*L

Loss#��<

Adam/Loss/raw.W�<

Accuracy/__raw_  �?

Accuracy��?��bZ       o��	�<\\���A�*L

Loss�F�<

Adam/Loss/raw��?=

Accuracy/__raw_  �?

Accuracy�?�u��Z       o��	^\\���A�*L

LossTq�<

Adam/Loss/raw�\?=

Accuracy/__raw_  �?

AccuracyH�?$�NZ       o��	�\\���A�*L

LossH|=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracyt�?�{��Z       o��	��\\���A�*L

LossT�=

Adam/Loss/raw*��<

Accuracy/__raw_  �?

Accuracy��?H=��Z       o��	��\\���A�*L

Loss� �<

Adam/Loss/rawz'�<

Accuracy/__raw_  �?

Accuracy��?�Þ�Z       o��	��\\���A�*L

Loss�:�<

Adam/Loss/raw� �<

Accuracy/__raw_  �?

Accuracy��?�.��Z       o��	t�\\���A�*L

Loss`��<

Adam/Loss/raw>t�<

Accuracy/__raw_  �?

Accuracy��?ce��Z       o��	�]\���A�*L

LossC,�<

Adam/Loss/raw<

Accuracy/__raw_  �?

Accuracy�?](iIZ       o��	2!]\���A�*L

LossԂ�<

Adam/Loss/raw��B=

Accuracy/__raw_  �?

Accuracy.�?6*��Z       o��	;]\���A�*L

Loss�n�<

Adam/Loss/rawک<

Accuracy/__raw_  �?

AccuracyC�?>8�.Z       o��	�W]\���A�*L

Lossج�<

Adam/Loss/rawB(�<

Accuracy/__raw_  �?

AccuracyV�?3x��Z       o��	Ts]\���A�*L

Loss��<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracyg�?I�j�Z       o��	��]\���A�*L

Loss��<

Adam/Loss/rawV�*=

Accuracy/__raw_  �?

Accuracyv�?�;s)Z       o��	e�]\���A�*L

Loss���<

Adam/Loss/rawRUHA

Accuracy/__raw_   >

Accuracy��?���Z       o��	�]\���A�*L

Loss���?

Adam/Loss/raw�y�<

Accuracy/__raw_  �?

Accuracy*�i?��mZ       o��	��]\���A�*L

Loss�}�?

Adam/Loss/rawۇ�<

Accuracy/__raw_  �?

Accuracy��k?P<��Z       o��	`^\���A�*L

Loss��?

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��m?�ԣZ       o��	�^\���A�*L

Loss��o?

Adam/Loss/raw@>%=

Accuracy/__raw_  �?

AccuracyO�o?��@Z       o��	T7^\���A�*L

Loss, Y?

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyaMq?uĐ�Z       o��	]P^\���A�*L

Lossh�C?

Adam/Loss/raw�Z�<

Accuracy/__raw_  �?

Accuracy��r?�Z       o��	Dm^\���A�*L

LossY"1?

Adam/Loss/raw9�<

Accuracy/__raw_  �?

AccuracyGt?��wZ       o��	�^\���A�*L

Loss�
 ?

Adam/Loss/raw�[�<

Accuracy/__raw_  �?

AccuracyIu?ފPZ       o��	`�^\���A�*L

Loss,�?

Adam/Loss/raw��c<

Accuracy/__raw_  �?

AccuracyY[v?92Z       o��	!�^\���A�*L

Loss�?

Adam/Loss/rawԤ7=

Accuracy/__raw_  �?

Accuracy7Rw?��G$Z       o��	��^\���A�*L

Loss+K�>

Adam/Loss/rawy
�<

Accuracy/__raw_  �?

Accuracye0x?^�Z       o��	��^\���A�*L

Loss���>

Adam/Loss/raw�7�<

Accuracy/__raw_  �?

Accuracy[�x?o�ZZ       o��	�_\���A�*L

Loss���>

Adam/Loss/rawE��<

Accuracy/__raw_  �?

AccuracyR�y?�Z       o��		6_\���A�*L

Lossg�>

Adam/Loss/rawF4=

Accuracy/__raw_  �?

AccuracyJNz?-q�Z       o��	�Q_\���A�*L

LossQ�>

Adam/Loss/raw�T�<

Accuracy/__raw_  �?

Accuracy�z?]|jrZ       o��	Ym_\���A�*L

LossP1�>

Adam/Loss/raw��&=

Accuracy/__raw_  �?

AccuracyAc{?SaZ       o��	�_\���A�*L

Loss㨅>

Adam/Loss/raw��v<

Accuracy/__raw_  �?

AccuracyT�{?��Z       o��	��_\���A�*L

Lossc!r>

Adam/Loss/rawx�v<

Accuracy/__raw_  �?

Accuracy�C|?D(�Z       o��	�_\���A�*L

Loss�u[>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy<�|?��I$Z       o��	�`\���A�*L

Loss�G>

Adam/Loss/raw�9=

Accuracy/__raw_  �?

AccuracyP�|?��[�Z       o��		5`\���A�*L

Lossx7>

Adam/Loss/raw�6=

Accuracy/__raw_  �?

Accuracy�F}?Y�#EZ       o��	U`\���A�*L

Loss��(>

Adam/Loss/raw+�<

Accuracy/__raw_  �?

Accuracy��}?�ArjZ       o��	:z`\���A�*L

Loss�:>

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyA�}?L��|Z       o��	R�`\���A�*L

Loss�`>

Adam/Loss/raw|�=

Accuracy/__raw_  �?

Accuracy�~?Kl�&Z       o��	��`\���A�*L

Lossp�>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�6~?���BZ       o��	:�`\���A�*L

Lossb��=

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyNd~?%t �Z       o��	�
a\���A�*L

Loss���=

Adam/Loss/rawm�<

Accuracy/__raw_  �?

Accuracyy�~?�ˎZ       o��	�(a\���A�*L

Loss&'�=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��~?:]��Z       o��	[Ba\���A�*L

Loss���=

Adam/Loss/raw�'=

Accuracy/__raw_  �?

Accuracy��~?�wJyZ       o��	�\a\���A�*L

Loss_o�=

Adam/Loss/raw%T�<

Accuracy/__raw_  �?

Accuracy��~?���,Z       o��	Kva\���A�*L

Loss#�=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�?��EZ       o��	)�a\���A�*L

Lossp�=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy5%?4�^)Z       o��	��a\���A�*L

Loss�y�=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy;?q�f�Z       o��	��a\���A�*L

Loss�Ԇ=

Adam/Loss/rawI\�<

Accuracy/__raw_  �?

Accuracy�N?Ǻ@
Z       o��	�a\���A�*L

Loss��{=

Adam/Loss/raw�"&=

Accuracy/__raw_  �?

Accuracy�`?�`[�Z       o��	��a\���A�*L

Loss�as=

Adam/Loss/rawQ�<

Accuracy/__raw_  �?

Accuracysp?w�l�Z       o��	�b\���A�*L

Loss��d=

Adam/Loss/raw�>;=

Accuracy/__raw_  �?

Accuracy�~?A�8Z       o��	/3b\���A�*L

Loss��`=

Adam/Loss/rawη:=

Accuracy/__raw_  �?

Accuracy��?���ZZ       o��	{Lb\���A�*L

LossT�\=

Adam/Loss/raw�0�<

Accuracy/__raw_  �?

AccuracyZ�?��pZ       o��	4gb\���A�*L

Loss��P=

Adam/Loss/raw}�<

Accuracy/__raw_  �?

Accuracyѡ?��3�Z       o��	��b\���A�*L

Loss�D=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy<�?���Z       o��	?�b\���A�*L

Loss==

Adam/Loss/raw�L<

Accuracy/__raw_  �?

Accuracy��?~ܫ�Z       o��	 �b\���A�*L

Loss3�/=

Adam/Loss/raw��K<

Accuracy/__raw_  �?

AccuracyW�?�s�Z       o��	��b\���A�*L

Loss�7#=

Adam/Loss/raw�&=

Accuracy/__raw_  �?

Accuracy5�?O��Z       o��	�c\���A�*L

Loss��#=

Adam/Loss/raw�1�<

Accuracy/__raw_  �?

Accuracyc�?D�Z       o��	V,c\���A�*L

Loss��=

Adam/Loss/rawL�<

Accuracy/__raw_  �?

Accuracy��?��!�Z       o��	(Fc\���A�*L

Loss�H=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?��T�Z       o��	$`c\���A�*L

Loss7�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyu�?��l'Z       o��	zc\���A�*L

Loss=

Adam/Loss/rawV�<

Accuracy/__raw_  �?

Accuracy��?T� �Z       o��	��c\���A�*L

Loss�=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy)�?�<�|Z       o��	��c\���A�*L

Loss�e=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracyr�?N���Z       o��	��c\���A�*L

Loss�	=

Adam/Loss/raw?��<

Accuracy/__raw_  �?

Accuracyg�?�d>�Z       o��	��c\���A�*L

LossTQ=

Adam/Loss/raw�3�<

Accuracy/__raw_  �?

Accuracy�?t��vZ       o��	��c\���A�*L

Lossa%=

Adam/Loss/raw�<

Accuracy/__raw_  �?

Accuracyu�?Fy�Z       o��	Pd\���A�*L

Loss�U=

Adam/Loss/raw>�<

Accuracy/__raw_  �?

Accuracy��?>�_Z       o��	�3d\���A�*L

Lossu=

Adam/Loss/raw�Z=

Accuracy/__raw_  �?

Accuracy��?՟ѝZ       o��	�Od\���A�*L

Loss�%=

Adam/Loss/raw)��<

Accuracy/__raw_  �?

AccuracyL�?,���Z       o��	+id\���A�*L

Loss�P=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�:��Z       o��	Ád\���A�*L

Loss��=

Adam/Loss/rawL�<

Accuracy/__raw_  �?

AccuracyH�?]�-hZ       o��	�d\���A�*L

Loss�m�<

Adam/Loss/raw�r�<

Accuracy/__raw_  �?

Accuracy��?l�0Z       o��	��d\���A�*L

Loss��<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?&�5Z       o��	��d\���A�*L

Loss���<

Adam/Loss/raw
�=

Accuracy/__raw_  �?

Accuracy��?�6�2Z       o��	��d\���A�*L

Loss�<

Adam/Loss/raw{y=

Accuracy/__raw_  �?

Accuracy��?��Z       o��	s.e\���A�*L

Loss٥�<

Adam/Loss/raw�9�<

Accuracy/__raw_  �?

Accuracy~�?$�mZ       o��	F^e\���A�*L

Loss���<

Adam/Loss/raw{Ϻ<

Accuracy/__raw_  �?

Accuracy>�?��6Z       o��	�~e\���A�*L

Loss���<

Adam/Loss/raw�Ev<

Accuracy/__raw_  �?

Accuracy��?�X�Z       o��	F�e\���A�*L

Loss���<

Adam/Loss/rawm=

Accuracy/__raw_  �?

Accuracy��?#�Z       o��	W�e\���A�*L

Loss��<

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�?hw�Z       o��	F�e\���A�*L

Loss���<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?s�#&Z       o��	�e\���A�*L

Loss�d�<

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�?�I��Z       o��	�f\���A�*L

Loss���<

Adam/Loss/raw&�=

Accuracy/__raw_  �?

Accuracyi�?�9��Z       o��	`>f\���A�*L

Loss���<

Adam/Loss/rawE,�<

Accuracy/__raw_  �?

Accuracy��?e�`0Z       o��	�_f\���A�*L

Loss�<

Adam/Loss/raw�p�<

Accuracy/__raw_  �?

Accuracy�?YIqRZ       o��	�~f\���A�*L

Loss���<

Adam/Loss/raw�Q�<

Accuracy/__raw_  �?

Accuracyb�?�N�TZ       o��	#�f\���A�*L

LossQ�<

Adam/Loss/raw�1YA

Accuracy/__raw_   >

Accuracy��?!���Z       o��	�f\���A�*L

Loss��?

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracyz�i?ֱǇZ       o��	��f\���A�*L

Lossc��?

Adam/Loss/raw�<

Accuracy/__raw_  �?

Accuracy!�k?�w��Z       o��	�f\���A�*L

Loss��?

Adam/Loss/raw_s�<

Accuracy/__raw_  �?

Accuracyk�m?���Z       o��	Ig\���A�*L

Loss��?

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�o?q�a�Z       o��	�-g\���A�*L

Loss9�j?

Adam/Loss/rawޟ�<

Accuracy/__raw_  �?

AccuracyELq?ҧdcZ       o��	
Mg\���A�*L

Loss��S?

Adam/Loss/rawX��<

Accuracy/__raw_  �?

Accuracy��r?S}�Z       o��	�gg\���A�*L

Loss�Y??

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracyat?�5��Z       o��	��g\���A�*L

Loss	�,?

Adam/Loss/rawky�<

Accuracy/__raw_  �?

Accuracy>Hu?h)�Z       o��	ۤg\���A�*L

Loss�C?

Adam/Loss/raw.a=

Accuracy/__raw_  �?

Accuracy�Zv?��pZ       o��	/�g\���A�*L

Loss֘?

Adam/Loss/raw`��<

Accuracy/__raw_  �?

Accuracy�Qw?
�5Z       o��	��g\���A�*L

Loss� ?

Adam/Loss/raw3U�<

Accuracy/__raw_  �?

Accuracy�/x?�Z�Z       o��	�h\���A�*L

Loss�u�>

Adam/Loss/raw_��<

Accuracy/__raw_  �?

Accuracy��x?�XO�Z       o��	)%h\���A�*L

Loss���>

Adam/Loss/raw6�<

Accuracy/__raw_  �?

Accuracy׫y?Q�C�Z       o��	$Ch\���A�*L

Lossှ>

Adam/Loss/rawG#�<

Accuracy/__raw_  �?

Accuracy�Mz?�� Z       o��	=`h\���A�*L

Loss6��>

Adam/Loss/raw��vA

Accuracy/__raw_    

Accuracy��z?��h�Z       o��	|h\���A�*L

LossXM�?

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyN�a?�#5Z       o��	ѕh\���A�*L

Lossv��?

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��d?�̕�Z       o��	K�h\���A�*L

Loss�)�?

Adam/Loss/raw=

Accuracy/__raw_  �?

Accuracy�g?���*Z       o��	��h\���A�*L

Loss�q�?

Adam/Loss/rawI|�<

Accuracy/__raw_  �?

Accuracyh�i?1r<�Z       o��	��h\���A�*L

Loss�x�?

Adam/Loss/raw<�SA

Accuracy/__raw_   >

AccuracyD-l?}\nhZ       o��	� i\���A�*L

Loss�@

Adam/Loss/raw�=

Accuracy/__raw_  �?

AccuracyV�W?�XH�Z       o��	�i\���A�*L

Loss��@

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��[?���8Z       o��	�8i\���A�*L

Loss��?

Adam/Loss/raw�"�<

Accuracy/__raw_  �?

Accuracy�g_?�:JSZ       o��	�Ui\���A�*L

Loss���?

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�b?~)�\Z       o��	�oi\���A�*L

LossO��?

Adam/Loss/raw7��<

Accuracy/__raw_  �?

Accuracy�e?A��vZ       o��	�i\���A�*L

Loss���?

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�<h?�	%�Z       o��	Ϥi\���A�*L

Loss�~�?

Adam/Loss/raw�=

Accuracy/__raw_  �?

AccuracyF�j?�+�HZ       o��		�i\���A�*L

Loss�J�?

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��l?K�lZ       o��	n�i\���A�*L

Loss���?

Adam/Loss/rawb5�<

Accuracy/__raw_  �?

Accuracyy�n?$�aZ       o��	j�i\���A�*L

Loss��t?

Adam/Loss/raw��A

Accuracy/__raw_    

Accuracy�hp?6gixZ       o��	Pj\���A�*L

Lossp��?

Adam/Loss/rawt	=

Accuracy/__raw_  �?

Accuracyn^X?����Z       o��	�=j\���A�*L

Loss�?

Adam/Loss/rawB��<

Accuracy/__raw_  �?

Accuracy�T\?���Z       o��	jij\���A�*L

LossC�?

Adam/Loss/raw�4�<

Accuracy/__raw_  �?

Accuracy�_?�I1wZ       o��	��j\���A�*L

Loss|r�?

Adam/Loss/raw��<=

Accuracy/__raw_  �?

Accuracy�c?��4"Z       o��	�j\���A�*L

Lossj��?

Adam/Loss/rawYJA

Accuracy/__raw_  �>

Accuracy�e?�x/�Z       o��	�j\���A�*L

Loss�f@

Adam/Loss/raw,5�<

Accuracy/__raw_  �?

Accuracy�eU?3�Z       o��	��j\���A�*L

Loss��@

Adam/Loss/rawj R=

Accuracy/__raw_  �?

Accuracy��Y?��@�Z       o��	V�j\���A�*L

Loss-��?

Adam/Loss/rawS=

Accuracy/__raw_  �?

Accuracy~]?T�֬Z       o��	�	k\���A�*L

Loss�X�?

Adam/Loss/rawU6�<

Accuracy/__raw_  �?

Accuracy}�`?��zZ       o��	F$k\���A�*L

Loss�?

Adam/Loss/raw�<=

Accuracy/__raw_  �?

Accuracy�d?3�y�Z       o��	�>k\���A�*L

Lossy��?

Adam/Loss/raw�e�<

Accuracy/__raw_  �?

Accuracy�f?�+UZ       o��	�^k\���A�*L

Loss�?

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy\i?��Z       o��	xk\���A�*L

Loss�B�?

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��k?�fZ       o��	��k\���A�*L

Loss�O�?

Adam/Loss/rawi�*=

Accuracy/__raw_  �?

AccuracyN�m?<���Z       o��	ŭk\���A�*L

Loss4�i?

Adam/Loss/rawu]�<

Accuracy/__raw_  �?

Accuracy�~o?�?��Z       o��	v�k\���A�*L

Loss�(S?

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyL%q?����Z       o��	.�k\���A�*L

Loss�>?

Adam/Loss/raw��$=

Accuracy/__raw_  �?

Accuracy��r?���OZ       o��	"�k\���A�*L

Loss,�,?

Adam/Loss/raw�4$=

Accuracy/__raw_  �?

Accuracy��s?4{��Z       o��	�l\���A�*L

Loss�~?

Adam/Loss/rawK�<

Accuracy/__raw_  �?

Accuracy�+u?��tZ       o��	U.l\���A�*L

Loss@~?

Adam/Loss/raw�D=

Accuracy/__raw_  �?

AccuracyAv?��^YZ       o��	sJl\���A�*L

Loss�N ?

Adam/Loss/raw\�=

Accuracy/__raw_  �?

Accuracy�:w?���Z       o��	'jl\���A�*L

Loss+��>

Adam/Loss/rawY��<

Accuracy/__raw_  �?

Accuracyx?��
�Z       o��	��l\���A�*L

Lossզ�>

Adam/Loss/rawE��<

Accuracy/__raw_  �?

Accuracy.�x?�{*8Z       o��	a�l\���A�*L

Loss9�>

Adam/Loss/rawX��<

Accuracy/__raw_  �?

Accuracy�y?U�mxZ       o��	��l\���A�*L

Loss"H�>

Adam/Loss/raw�{0=

Accuracy/__raw_  �?

Accuracy�>z?��UgZ       o��	� m\���A�*L

Loss�(�>

Adam/Loss/raw?=

Accuracy/__raw_  �?

Accuracy�z??A}Z       o��	�m\���A�*L

Loss]"�>

Adam/Loss/raw �b<

Accuracy/__raw_  �?

Accuracy�V{?|6Z       o��	]5m\���A�*L

Loss�m�>

Adam/Loss/raw��b<

Accuracy/__raw_  �?

Accuracy�{?[�O�Z       o��	�Pm\���A�*L

Lossq0l>

Adam/Loss/raw��W=

Accuracy/__raw_  �?

Accuracyh9|?Q>�eZ       o��	�{m\���A�*L

Loss=�Y>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�|?F)o|Z       o��	��m\���A�*L

Loss��F>

Adam/Loss/raw>��<

Accuracy/__raw_  �?

Accuracy�|?�}�Z       o��	�m\���A�*L

Loss m5>

Adam/Loss/rawB^=

Accuracy/__raw_  �?

AccuracyZ?}?4%qPZ       o��	I�m\���A�*L

Loss�*'>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyх}?9j.lZ       o��	��m\���A�*L

LossVS>

Adam/Loss/rawB�$=

Accuracy/__raw_  �?

Accuracy<�}?���Z       o��	 n\���A�*L

Loss�>

Adam/Loss/raw>�<

Accuracy/__raw_  �?

AccuracyP�}?Tn�Z       o��	�$n\���A�*L

Loss��>

Adam/Loss/raw�d=

Accuracy/__raw_  �?

Accuracy�1~?�"�_Z       o��	�>n\���A�*L

Loss�~�=

Adam/Loss/raw�9	=

Accuracy/__raw_  �?

Accuracy�_~?�y�Z       o��	�Xn\���A�*L

Loss��=

Adam/Loss/raw%
	=

Accuracy/__raw_  �?

Accuracy��~?O�Q�Z       o��	�un\���A�*L

Loss�A�=

Adam/Loss/raw�-=

Accuracy/__raw_  �?

Accuracy��~?�6j�Z       o��	y�n\���A�*L

Loss��=

Adam/Loss/raw�iA

Accuracy/__raw_    

Accuracy��~?�KhZ       o��	2�n\���A�*L

Loss���?

Adam/Loss/rawV�"=

Accuracy/__raw_  �?

AccuracygUe?�s1�Z       o��	7�n\���A�*L

Loss���?

Adam/Loss/raw�0=

Accuracy/__raw_  �?

Accuracy h?�ݡ�Z       o��	��n\���A�*L

Loss�^�?

Adam/Loss/raw��0=

Accuracy/__raw_  �?

Accuracyufj?fw�vZ       o��	/�n\���A�*L

Lossɑ?

Adam/Loss/rawJ�<

Accuracy/__raw_  �?

Accuracyi�l?յ��Z       o��	�o\���A�*L

Losss�?

Adam/Loss/rawU�=

Accuracy/__raw_  �?

Accuracy�n?���3Z       o��	�4o\���A�*L

Lossǀm?

Adam/Loss/rawL�=

Accuracy/__raw_  �?

Accuracy�@p??=Z       o��	Xo\���A�*L

Loss��V?

Adam/Loss/raw�� =

Accuracy/__raw_  �?

Accuracy�q?�U�@Z       o��	{o\���A�*L

Loss�B?

Adam/Loss/rawSJ=

Accuracy/__raw_  �?

Accuracy�>s?kYN�Z       o��	�o\���A�*L

Loss(s/?

Adam/Loss/raw�R�<

Accuracy/__raw_  �?

Accuracya�t?���Z       o��	Ǽo\���A�*L

Loss��?

Adam/Loss/rawҰ=

Accuracy/__raw_  �?

Accuracy>�u?E��.Z       o��	��o\���A�*L

Loss"�?

Adam/Loss/rawpt=

Accuracy/__raw_  �?

Accuracy��v?P&�Z       o��	��o\���A�*L

Lossr,?

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��w?���Z       o��	Ap\���A�*L

Loss�v�>

Adam/Loss/rawҷ<

Accuracy/__raw_  �?

Accuracy�wx?f+F�Z       o��	)p\���A�*L

Loss��>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�8y?�j�Z       o��	�Ap\���A�*L

Loss l�>

Adam/Loss/raw�
A

Accuracy/__raw_  �>

AccuracyM�y?;{��Z       o��	�[p\���A�*L

Loss�o�?

Adam/Loss/rawQ�=

Accuracy/__raw_  �?

AccuracyEOg?姍PZ       o��	�up\���A�*L

Loss�f�?

Adam/Loss/raw*}=

Accuracy/__raw_  �?

AccuracyX�i?<��Z       o��	�p\���A�*L

Loss��{?

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy6 l?� "Z       o��	Ȳp\���A�*L

Loss<�c?

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy1 n?�8d�Z       o��	��p\���A�*L

Loss��M?

Adam/Loss/raw
B&=

Accuracy/__raw_  �?

Accuracy��o?o;KJZ       o��	q�p\���A�*L

Loss*:?

Adam/Loss/raw`�-=

Accuracy/__raw_  �?

Accuracy�kq?P��Z       o��	�q\���A�*L

Loss�(?

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��r?\�Z       o��	�q\���A�*L

Loss#�?

Adam/Loss/raw[�=

Accuracy/__raw_  �?

Accuracy�0t?��U�Z       o��	`9q\���A�*L

Loss 9
?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy#_u?�^�Z       o��	 Tq\���A�*L

Loss��>

Adam/Loss/rawp+�<

Accuracy/__raw_  �?

Accuracy9ov?��Z       o��	inq\���A�*L

Loss��>

Adam/Loss/raw�� =

Accuracy/__raw_  �?

Accuracydw?'ߞ�Z       o��	D�q\���A�*L

LossO��>

Adam/Loss/rawȳs=

Accuracy/__raw_  �?

Accuracy~@x?��Z?Z       o��	��q\���A�*L

Loss�_�>

Adam/Loss/raw&4s=

Accuracy/__raw_  �?

Accuracy�y?��1(Z       o��	�q\���A�*L

Loss���>

Adam/Loss/rawD��<

Accuracy/__raw_  �?

Accuracy\�y?/@�Z       o��	��q\���A�*L

Lossۜ>

Adam/Loss/raw}��<

Accuracy/__raw_  �?

AccuracyZz?P�m�Z       o��	�r\���A�*L

Loss�v�>

Adam/Loss/raw�t=

Accuracy/__raw_  �?

Accuracy��z?8|Q�Z       o��	�r\���A�*L

Loss�%�>

Adam/Loss/rawQ�#=

Accuracy/__raw_  �?

Accuracy�l{?iU$eZ       o��	:r\���A�*L

Lossb\n>

Adam/Loss/rawN#=

Accuracy/__raw_  �?

Accuracy��{?��nZ       o��	&Ur\���A�*L

Loss�Z>

Adam/Loss/rawL��<

Accuracy/__raw_  �?

AccuracyKK|?���@Z       o��	amr\���A�*L

Loss@7G>

Adam/Loss/raw�)=

Accuracy/__raw_  �?

Accuracy*�|?���Z       o��	Q�r\���A�*L

Loss��7>

Adam/Loss/raw�a=

Accuracy/__raw_  �?

Accuracy��|?�R�Z       o��	�r\���A�*L

Loss�(>

Adam/Loss/raw6&=

Accuracy/__raw_  �?

AccuracydL}?�'"Z       o��	��r\���A�*L

Loss��>

Adam/Loss/raw &=

Accuracy/__raw_  �?

Accuracy��}?*T�ZZ       o��	h�r\���A�*L

Lossn�>

Adam/Loss/raw<=

Accuracy/__raw_  �?

Accuracy��}?1�)�Z       o��	is\���A�*L

Lossɷ>

Adam/Loss/raw�Z =

Accuracy/__raw_  �?

Accuracy�~?�WO�Z       o��	~s\���A�*L

Loss#�=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy<:~?_O/�Z       o��	"7s\���A�*L

Loss*@�=

Adam/Loss/rawWR=

Accuracy/__raw_  �?

Accuracy�g~?L\�Z       o��	Ps\���A�*L

LossP��=

Adam/Loss/raw�6Q=

Accuracy/__raw_  �?

Accuracys�~?�̀�Z       o��	Yjs\���A�*L

Lossj��=

Adam/Loss/raw�H=

Accuracy/__raw_  �?

Accuracy4�~?��nZ       o��	��s\���A�*L

LossѮ�=

Adam/Loss/rawdw�<

Accuracy/__raw_  �?

AccuracyH�~?׽�	Z       o��	�s\���A�*L

Loss�ٱ=

Adam/Loss/raw��6=

Accuracy/__raw_  �?

Accuracy�~?�6�Z       o��	�s\���A�*L

Loss1�=

Adam/Loss/rawj�=

Accuracy/__raw_  �?

Accuracy�?��Z       o��	��s\���A�*L

Loss�Þ=

Adam/Loss/raw�}=

Accuracy/__raw_  �?

Accuracy�&?����Z       o��	��s\���A�*L

Loss�\�=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�<?���bZ       o��	8t\���A�*L

Loss�r�=

Adam/Loss/rawx.�<

Accuracy/__raw_  �?

Accuracy4P?49�FZ       o��	@4t\���A�*L

LossIȄ=

Adam/Loss/rawU(	=

Accuracy/__raw_  �?

Accuracy�a?	�u�Z       o��	�Nt\���A�*L

LossX�|=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�q?��Z       o��	�mt\���A�*L

Loss'�n=

Adam/Loss/raw� �<

Accuracy/__raw_  �?

Accuracy�?����Z       o��	]�t\���A�*L

Loss��a=

Adam/Loss/raw�C*=

Accuracy/__raw_  �?

Accuracy��?��Z       o��	��t\���A�*L

Loss�Z\=

Adam/Loss/raw}�A

Accuracy/__raw_    

Accuracy1�?�|~Z       o��	7�t\���A�*L

Loss���?

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�f?ޟj1Z       o��	��t\���A�*L

Loss(��?

Adam/Loss/raw~�]=

Accuracy/__raw_  �?

Accuracy��h?��d�Z       o��	T�t\���A�*L

Loss��?

Adam/Loss/raw�5_=

Accuracy/__raw_  �?

Accuracy��j?�J8|Z       o��	 u\���A�*L

Loss���?

Adam/Loss/raw
��<

Accuracy/__raw_  �?

AccuracyQm?Y.�SZ       o��	.=u\���A�*L

Loss㙌?

Adam/Loss/raw�+=

Accuracy/__raw_  �?

Accuracy��n?����Z       o��	GXu\���A�*L

Loss(~?

Adam/Loss/raw�%�<

Accuracy/__raw_  �?

Accuracy �p?��nkZ       o��	2uu\���A�*L

Lossjce?

Adam/Loss/rawקJ=

Accuracy/__raw_  �?

Accuracy�3r?!��mZ       o��	Ԛu\���A�*L

LossR�O?

Adam/Loss/raw�gJ=

Accuracy/__raw_  �?

Accuracy��s?'v�\Z       o��	ػu\���A�*L

Loss�5<?

Adam/Loss/rawZM�<

Accuracy/__raw_  �?

Accuracy��t?t�`�Z       o��	��u\���A�*L

Loss*?

Adam/Loss/raw� =

Accuracy/__raw_  �?

Accuracy��u?남VZ       o��	��u\���A�*L

Lossl?

Adam/Loss/raw�^!=

Accuracy/__raw_  �?

AccuracyT�v?��aZ       o��	�v\���A�*L

Loss��?

Adam/Loss/rawe�=

Accuracy/__raw_  �?

Accuracy�w?"���Z       o��	&6v\���A�*L

Loss�[�>

Adam/Loss/rawe{=

Accuracy/__raw_  �?

Accuracy��x?�{�Z       o��	eQv\���A�*L

Loss���>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracyjfy?�YʋZ       o��	ipv\���A�*L

Loss��>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy_z?��.Z       o��	��v\���A�*L

Loss�@�>

Adam/Loss/raw�V�<

Accuracy/__raw_  �?

Accuracyo�z?�v�Z       o��	+�v\���A�*L

Loss�ǫ>

Adam/Loss/raw��<

Accuracy/__raw_  �?

AccuracyJ0{?��g�Z       o��	0�v\���A�*L

Lossk�>

Adam/Loss/raw#Z�<

Accuracy/__raw_  �?

Accuracyv�{?9�Z       o��	��v\���A�*L

Loss=�>

Adam/Loss/rawV�>=

Accuracy/__raw_  �?

AccuracyQ|?�qZ       o��	Kw\���A�*L

Loss8�>

Adam/Loss/rawI=

Accuracy/__raw_  �?

Accuracy~|?�:7Z       o��	�Aw\���A�*L

Loss�m>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��|?��kZ       o��	$`w\���A�*L

Loss��X>

Adam/Loss/rawI�<

Accuracy/__raw_  �?

Accuracy�(}?9 :Z       o��	�{w\���A�*L

LossF>

Adam/Loss/raw;��<

Accuracy/__raw_  �?

Accuracylq}?���Z       o��	��w\���A�*L

LossF05>

Adam/Loss/raw��)=

Accuracy/__raw_  �?

Accuracy�}?&��Z       o��	)�w\���A�*L

Loss�N'>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��}?�a�0Z       o��	��w\���A�*L

Loss�]>

Adam/Loss/rawM=

Accuracy/__raw_  �?

Accuracy�"~?�4>Z       o��	�w\���A�*L

Loss�g>

Adam/Loss/raw�<

Accuracy/__raw_  �?

Accuracy�R~?�i)rZ       o��	�x\���A�*L

Loss��>

Adam/Loss/rawU�<

Accuracy/__raw_  �?

Accuracyz}~?f�i�Z       o��	�"x\���A�*L

Loss0.�=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy!�~?X9��Z       o��	�?x\���A�*L

Loss#u�=

Adam/Loss/raw�B@=

Accuracy/__raw_  �?

Accuracy��~?\���Z       o��	�\x\���A�*L

Loss'��=

Adam/Loss/rawH�=

Accuracy/__raw_  �?

Accuracy:�~?A
ޙZ       o��	�vx\���A�*L

Loss@��=

Adam/Loss/raw=X=

Accuracy/__raw_  �?

Accuracyg?��IZ       o��	֎x\���A�*L

Loss#��=

Adam/Loss/rawZ�=

Accuracy/__raw_  �?

Accuracy�?����Z       o��	��x\���A�*L

Lossq��=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�2?�K��Z       o��	��x\���A�*L

Loss���=

Adam/Loss/rawP�<

Accuracy/__raw_  �?

Accuracy!G?�-�RZ       o��	X�x\���A�*L

Loss�ԗ=

Adam/Loss/rawb(	=

Accuracy/__raw_  �?

Accuracy�Y?�e�4Z       o��	�y\���A�*L

Loss���=

Adam/Loss/raw�=

Accuracy/__raw_  �?

AccuracyAj?�Z       o��	Fy\���A�*L

Loss��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy;y?�{o�Z       o��	�ey\���A�*L

Loss�%�=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?嚟Z       o��	��y\���A�*L

Loss�yy=

Adam/Loss/raw�2�<

Accuracy/__raw_  �?

Accuracy֒?�M�dZ       o��	j�y\���A�*L

Loss�	k=

Adam/Loss/rawk�=

Accuracy/__raw_  �?

Accuracy��?Ƥ'�Z       o��	f�y\���A�*L

Loss��a=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?��`2Z       o��	b�y\���A�*L

Lossg�W=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracyl�?��Z       o��	��y\���A�*L

Loss�XN=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracya�?�E�*Z       o��	�z\���A�*L

Loss=�F=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?:�4Z       o��	�*z\���A�*L

Loss�%@=

Adam/Loss/raw0 =

Accuracy/__raw_  �?

Accuracy��?��a�Z       o��	;Qz\���A�*L

Loss��;=

Adam/Loss/raw�?=

Accuracy/__raw_  �?

Accuracy��?:r*Z       o��	�lz\���A�*L

Loss��7=

Adam/Loss/raw(�=

Accuracy/__raw_  �?

Accuracy�?���qZ       o��	@�z\���A�*L

Loss.4=

Adam/Loss/raw�j�<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	��z\���A�*L

Loss��-=

Adam/Loss/raw\��<

Accuracy/__raw_  �?

Accuracy��?½��Z       o��	�z\���A�*L

Loss)�'=

Adam/Loss/rawt�<

Accuracy/__raw_  �?

Accuracy��?��SZ       o��	
�z\���A�*L

Loss��"=

Adam/Loss/raw5�#=

Accuracy/__raw_  �?

Accuracy,�?�|l2Z       o��	o�z\���A�*L

Loss�"=

Adam/Loss/raw0m#=

Accuracy/__raw_  �?

AccuracyA�?��6>Z       o��	W
{\���A�*L

LossM�"=

Adam/Loss/raw�*=

Accuracy/__raw_  �?

Accuracy�?���Z       o��	�%{\���A�*L

Loss9�=

Adam/Loss/raw�$�<

Accuracy/__raw_  �?

Accuracy��?�NݳZ       o��	}A{\���A�*L

Loss�=

Adam/Loss/rawB��<

Accuracy/__raw_  �?

Accuracy��?��iaZ       o��	�^{\���A�*L

Loss��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�	��Z       o��	:z{\���A�*L

LossUp=

Adam/Loss/rawC=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	��{\���A�*L

LossS=

Adam/Loss/rawװ<

Accuracy/__raw_  �?

AccuracyA�?�G>�Z       o��	��{\���A�*L

Loss�=

Adam/Loss/raw��+=

Accuracy/__raw_  �?

Accuracy��?P�A�Z       o��	��{\���A�*L

Loss
�=

Adam/Loss/raw �<

Accuracy/__raw_  �?

Accuracy�?��Q)Z       o��	7�{\���A�*L

Loss�4=

Adam/Loss/raw��<

Accuracy/__raw_  �?

AccuracyA�?���|Z       o��	�|\���A�*L

LossHI=

Adam/Loss/raw0��<

Accuracy/__raw_  �?

AccuracyT�?����Z       o��	�7|\���A�*L

Loss��<

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyL�?�p��Z       o��	O]|\���A�*L

Loss���<

Adam/Loss/raw�\S=

Accuracy/__raw_  �?

Accuracy+�?�+"OZ       o��	�|\���A�*L

Lossg_=

Adam/Loss/raw��>=

Accuracy/__raw_  �?

Accuracy��?;��Z       o��	/�|\���A�*L

Loss<�=

Adam/Loss/raw'7 =

Accuracy/__raw_  �?

Accuracy��?J�bZ       o��	I�|\���A�*L

Loss �=

Adam/Loss/raw�u�<

Accuracy/__raw_  �?

AccuracyJ�?�P��Z       o��	
�|\���A�*L

Losst
=

Adam/Loss/raw}ϐ<

Accuracy/__raw_  �?

Accuracy��?�H�Z       o��	o�|\���A�*L

LossE�=

Adam/Loss/raw:��<

Accuracy/__raw_  �?

Accuracy`�?V��Z       o��	�}\���A�*L

Loss'�=

Adam/Loss/rawR�<

Accuracy/__raw_  �?

Accuracy��?���~Z       o��	�(}\���A�*L

LossW0=

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyA�?7�s%Z       o��	�B}\���A�*L

Loss�4�<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?Eǝ�Z       o��	�b}\���A�*L

Loss��<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�Z�Z       o��	9}\���A�*L

Loss�;�<

Adam/Loss/rawR=

Accuracy/__raw_  �?

AccuracyE�?���[Z       o��	�}\���A�*L

Loss��<

Adam/Loss/raw�� =

Accuracy/__raw_  �?

Accuracy��?��G&Z       o��	��}\���A�*L

Loss���<

Adam/Loss/rawo�
=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	[�}\���A�*L

Loss�;�<

Adam/Loss/raw8]
=

Accuracy/__raw_  �?

Accuracy�?.���Z       o��	��}\���A�*L

Loss&��<

Adam/Loss/raw\r�<

Accuracy/__raw_  �?

Accuracy6�?6X�Z       o��	�~\���A�*L

Loss��<

Adam/Loss/raw"=

Accuracy/__raw_  �?

Accuracyd�?�0Z       o��	�,~\���A�*L

Loss�2�<

Adam/Loss/raw�J=

Accuracy/__raw_  �?

Accuracy��?���YZ       o��	<O~\���A�*L

Loss�	�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?b-#eZ       o��	�q~\���A�*L

Loss��<

Adam/Loss/raw׿�<

Accuracy/__raw_  �?

Accuracy��?*�y�Z       o��	�~\���A�*L

Lossi@�<

Adam/Loss/rawr��<

Accuracy/__raw_  �?

Accuracy��?�%jZ       o��	��~\���A�*L

Loss�<

Adam/Loss/rawK
=

Accuracy/__raw_  �?

Accuracy�?�>6Z       o��	6�~\���A�*L

Loss���<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy$�?M��Z       o��	��~\���A�*L

Loss���<

Adam/Loss/raw_�=

Accuracy/__raw_  �?

Accuracy:�?���3Z       o��	C\���A�*L

Loss:g�<

Adam/Loss/raws�=

Accuracy/__raw_  �?

AccuracyN�?��)�Z       o��	T\���A�*L

Loss2K�<

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy`�?4��xZ       o��	�3\���A�*L

Loss� �<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracyp�?`YEZ       o��	�M\���A�*L

Loss���<

Adam/Loss/raw�E�<

Accuracy/__raw_  �?

Accuracy~�?�GOZ       o��	'k\���A�*L

Loss\��<

Adam/Loss/rawS=

Accuracy/__raw_  �?

Accuracy��?�Z       o��	ʊ\���A�*L

Loss:�<

Adam/Loss/raw�!=

Accuracy/__raw_  �?

Accuracy��?��rWZ       o��	��\���A�*L

Loss���<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?���lZ       o��	��\���A�*L

LossK��<

Adam/Loss/raw�0A

Accuracy/__raw_   >

Accuracy��?���~Z       o��	��\���A�*L

Loss�a�?

Adam/Loss/raw�T�<

Accuracy/__raw_  �?

AccuracyM�i?���}Z       o��	/�\���A�*L

Loss�U�?

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��k?��M�Z       o��	w�\���A�*L

Lossik?

Adam/Loss/rawڗ<

Accuracy/__raw_  �?

Accuracy��m?��Z       o��	�,�\���A�*L

Loss�T?

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracyh�o?���cZ       o��	oI�\���A�*L

LossB�??

Adam/Loss/rawBf=

Accuracy/__raw_  �?

AccuracywMq?W� Z       o��	�h�\���A�*L

Loss�i-?

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��r?A�hZ       o��	֌�\���A�*L

Loss��?

Adam/Loss/raw҃�<

Accuracy/__raw_  �?

AccuracyYt?U��{Z       o��	�ɀ\���A�*L

LossO�?

Adam/Loss/rawY��<

Accuracy/__raw_  �?

AccuracyIu?��#GZ       o��	��\���A�*L

LossCx ?

Adam/Loss/raw�X�<

Accuracy/__raw_  �?

Accuracyg[v?QF�
Z       o��	�\���A�*L

Loss��>

Adam/Loss/rawF�<

Accuracy/__raw_  �?

AccuracyCRw?z4�Z       o��	^-�\���A�*L

Loss>��>

Adam/Loss/raw�p�<

Accuracy/__raw_  �?

Accuracyp0x?ʣ�HZ       o��	�L�\���A�*L

Loss���>

Adam/Loss/raw5 =

Accuracy/__raw_  �?

Accuracye�x?�:�Z       o��	g�\���A�*L

Loss�h�>

Adam/Loss/raw�6=

Accuracy/__raw_  �?

Accuracy[�y?��uLZ       o��	A��\���A�*L

Loss�؝>

Adam/Loss/raw�v9=

Accuracy/__raw_  �?

AccuracyRNz?�l�mZ       o��	죁\���A�*L

LossIa�>

Adam/Loss/raw6��<

Accuracy/__raw_  �?

Accuracy�z?�y*Z       o��	;Ł\���A�*L

Loss�-�>

Adam/Loss/rawL=

Accuracy/__raw_  �?

AccuracyHc{?Z*D^Z       o��	���\���A�*L

Loss^yo>

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyZ�{?g��Z       o��	���\���A�*L

Loss�Z>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�C|?@��Z       o��	a�\���A�*L

Loss��F>

Adam/Loss/raw}?&=

Accuracy/__raw_  �?

AccuracyA�|?��D�Z       o��	+5�\���A�*L

Loss��6>

Adam/Loss/raw��<

Accuracy/__raw_  �?

AccuracyT�|?��c�Z       o��	�O�\���A�*L

Loss�'>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�F}?ȿ�Z       o��	�l�\���A�*L

Loss;>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��}?��$mZ       o��	��\���A�*L

Loss;�>

Adam/Loss/raw�G�<

Accuracy/__raw_  �?

AccuracyD�}?�� �Z       o��	몂\���A�*L

Loss�� >

Adam/Loss/raw&�=

Accuracy/__raw_  �?

Accuracy�~?f4��Z       o��	�ɂ\���A�*L

Loss��=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�6~?F�	�Z       o��	��\���A�*L

Loss4��=

Adam/Loss/raw6߸<

Accuracy/__raw_  �?

AccuracyOd~?�_g�Z       o��	�
�\���A�*L

Loss�h�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyz�~?��@AZ       o��	J'�\���A�*L

Loss�i�=

Adam/Loss/rawށ=

Accuracy/__raw_  �?

Accuracy��~?&M��Z       o��	�T�\���A�*L

Lossl��=

Adam/Loss/raw/P0=

Accuracy/__raw_  �?

Accuracy��~?��YZ       o��	Xo�\���A�*L

Loss���=

Adam/Loss/raw|w�<

Accuracy/__raw_  �?

Accuracy��~?�=�FZ       o��	e��\���A�*L

LossQʜ=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�?��ߓZ       o��	D��\���A�*L

Loss"3�=

Adam/Loss/rawE=

Accuracy/__raw_  �?

Accuracy5%?`�@	Z       o��	�ƃ\���A�*L

Loss�=

Adam/Loss/rawC� =

Accuracy/__raw_  �?

Accuracy;?� �Z       o��	y�\���A�*L

Loss��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�N?�~�Z       o��	��\���A�*L

LossGy=

Adam/Loss/raw��A

Accuracy/__raw_  �>

Accuracy�`?(�o�Z       o��	��\���A�*L

Lossh��?

Adam/Loss/raw�U�<

Accuracy/__raw_  �?

Accuracy@=l?�.�4Z       o��	�:�\���A�*L

Loss3s?

Adam/Loss/rawE�=

Accuracy/__raw_  �?

Accuracy 7n?Jr��Z       o��	�T�\���A�*L

Loss�[?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyj�o?��eZ       o��	�o�\���A�*L

Lossa�F?

Adam/Loss/rawrT�<

Accuracy/__raw_  �?

Accuracy,�q?q�[�Z       o��	���\���A�*L

Loss�d3?

Adam/Loss/raw|dpA

Accuracy/__raw_    

Accuracy�s?v�?Z       o��	��\���A�*L

LossB�@

Adam/Loss/raw�4�<

Accuracy/__raw_  �?

AccuracyB�Z?4�$Z       o��	n��\���A�*L

LossX �?

Adam/Loss/raw�=

Accuracy/__raw_  �?

AccuracyUu^?��[�Z       o��	#܄\���A�*L

Loss(��?

Adam/Loss/raw0�=

Accuracy/__raw_  �?

Accuracy �a?x���Z       o��	U��\���A�*L

LossI$�?

Adam/Loss/rawő=

Accuracy/__raw_  �?

Accuracy��d?X$s�Z       o��	��\���A�*L

Loss��?

Adam/Loss/raw?EA

Accuracy/__raw_    

AccuracyR�g?T��tZ       o��	'/�\���A�*L

Loss  @

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�dP?�٭6Z       o��	�H�\���A�*L

Loss�A@

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracyk'U?�.IZ       o��	�b�\���A�*L

Lossd@

Adam/Loss/raw�C!=

Accuracy/__raw_  �?

AccuracyGpY?�L��Z       o��	�}�\���A�*L

Loss���?

Adam/Loss/raw�y=

Accuracy/__raw_  �?

AccuracysK]?#�@Z       o��	���\���A�*L

Loss ��?

Adam/Loss/raw*��<

Accuracy/__raw_  �?

Accuracy��`?H�8kZ       o��	�Ʌ\���A�*L

Loss�ܾ?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��c?v�� Z       o��	�\���A�*L

Loss8C�?

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy*�f?t�Z       o��	��\���A�*L

Loss z�?

Adam/Loss/rawǔ=

Accuracy/__raw_  �?

Accuracy�:i?�C"�Z       o��	w+�\���A�*L

Loss�_�?

Adam/Loss/raw��;=

Accuracy/__raw_  �?

AccuracyÁk?>�>Z       o��	G�\���A�*L

Lossp�}?

Adam/Loss/raw3)�<

Accuracy/__raw_  �?

Accuracyc�m?�r3�Z       o��	0e�\���A�*L

Losse?

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�fo?�"�Z       o��	셆\���A�*L

Loss��N?

Adam/Loss/raw�-=

Accuracy/__raw_  �?

Accuracy~q?7��dZ       o��	Ǡ�\���A�*L

Loss�';?

Adam/Loss/raw.=

Accuracy/__raw_  �?

Accuracy�r?�xXqZ       o��	I��\���A�*L

Loss�)?

Adam/Loss/rawڲ=

Accuracy/__raw_  �?

Accuracy&�s?��Z       o��	cӆ\���A�*L

Loss9t?

Adam/Loss/rawMC=

Accuracy/__raw_  �?

Accuracy�u?��
Z       o��	��\���A�*L

LossHT?

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�2v?��Z       o��	_
�\���A�*L

Loss���>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�-w?s�F�Z       o��	+�\���A�*L

Loss���>

Adam/Loss/rawf��<

Accuracy/__raw_  �?

Accuracy�x?'��YZ       o��	�D�\���A�*L

Loss�j�>

Adam/Loss/raw�r5=

Accuracy/__raw_  �?

Accuracy��x?&�_�Z       o��	�_�\���A�*L

Loss��>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��y?���Z       o��	ty�\���A�*L

LossR�>

Adam/Loss/raw�{�<

Accuracy/__raw_  �?

AccuracyO6z?{��Z       o��	6��\���A�*L

Loss�C�>

Adam/Loss/raw--�<

Accuracy/__raw_  �?

Accuracyz�z?���_Z       o��	��\���A�*L

Loss�&�>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�O{?�LI�Z       o��	�ȇ\���A�*L

Loss�r�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��{?(7[Z       o��	O�\���A�*L

Loss��l>

Adam/Loss/raw�[V=

Accuracy/__raw_  �?

Accuracy�3|?��FBZ       o��	)�\���A�*L

Loss�yZ>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�|?"��Z       o��	�'�\���A�*L

LossDyH>

Adam/Loss/raw�r5=

Accuracy/__raw_  �?

Accuracy��|?_w��Z       o��	�X�\���A�*L

Lossh�8>

Adam/Loss/raw~5=

Accuracy/__raw_  �?

AccuracyO;}?b�Z       o��	�s�\���A�*L

Loss��*>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy.�}?[��,Z       o��	Ŏ�\���A�*L

Loss�i>

Adam/Loss/raw�N =

Accuracy/__raw_  �?

Accuracy��}?���_Z       o��	ҩ�\���A�*L

LossG�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy]�}?�>��Z       o��	�È\���A�*L

Loss�P>

Adam/Loss/raw=�<

Accuracy/__raw_  �?

Accuracy/~?�*BXZ       o��		�\���A�*L

Lossw��=

Adam/Loss/raw׀�<

Accuracy/__raw_  �?

Accuracy�]~?pr��Z       o��	2 �\���A�*L

LossWk�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy_�~?ە�Z       o��	_%�\���A�*L

Losstg�=

Adam/Loss/raw�D?=

Accuracy/__raw_  �?

Accuracy	�~?�74�Z       o��	�L�\���A�*L

LossV��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��~?:)Z       o��	�o�\���A�*L

Loss⪹=

Adam/Loss/raw�	@=

Accuracy/__raw_  �?

Accuracyq�~?�XZ       o��	;��\���A�*L

Loss⳰=

Adam/Loss/raw�?=

Accuracy/__raw_  �?

Accuracy�?�o�.Z       o��	r��\���A�*L

LossF��=

Adam/Loss/rawď�<

Accuracy/__raw_  �?

Accuracy�!?gk\WZ       o��	É\���A�*L

Loss
��=

Adam/Loss/raw6!=

Accuracy/__raw_  �?

Accuracy�7?;RGxZ       o��	�މ\���A�*L

Loss��=

Adam/Loss/raw;�=

Accuracy/__raw_  �?

Accuracy�K?j��Z       o��	���\���A�*L

Loss�q�=

Adam/Loss/raw_�=

Accuracy/__raw_  �?

Accuracy�]?� ��Z       o��	��\���A�*L

LossG��=

Adam/Loss/raw�g=

Accuracy/__raw_  �?

Accuracyn?P�˱Z       o��	I.�\���A�*L

Loss�L�=

Adam/Loss/raw�!�<

Accuracy/__raw_  �?

Accuracy�|?yn~Z       o��	rM�\���A�*L

Losstr=

Adam/Loss/raw|��@

Accuracy/__raw_  �>

AccuracyЉ?解Z       o��	�i�\���A�*L

Loss��G?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracynbl?��Z       o��	���\���A�*L

Loss�4?

Adam/Loss/raw�4=

Accuracy/__raw_  �?

Accuracy�Xn?ڟ�?Z       o��	v��\���A�*L

Loss=�#?

Adam/Loss/raww�4=

Accuracy/__raw_  �?

Accuracy�p?0ԘZ       o��	�ϊ\���A�*L

Loss�l?

Adam/Loss/raw�=

Accuracy/__raw_  �?

AccuracyF�q?�p�Z       o��	6�\���A�*L

Loss�x?

Adam/Loss/raw�b�<

Accuracy/__raw_  �?

AccuracyY!s?�Ơ�Z       o��	�\���A�*L

Loss8��>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�jt?bb%�Z       o��	��\���A�*L

Lossb��>

Adam/Loss/raw�~=

Accuracy/__raw_  �?

AccuracyU�u?�<�8Z       o��	=�\���A�*L

Loss���>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy3�v?�,0�Z       o��	�Z�\���A�*L

LossΔ�>

Adam/Loss/raw�6=

Accuracy/__raw_  �?

Accuracya�w?�I��Z       o��	Jy�\���A�*L

Loss9��>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�fx?�K��Z       o��	1��\���A�*L

Loss�-�>

Adam/Loss/rawg@9=

Accuracy/__raw_  �?

Accuracy)y?���Z       o��	���\���A�*L

Lossv`�>

Adam/Loss/rawk%=

Accuracy/__raw_  �?

Accuracy.�y?;��Z       o��	ϋ\���A�*L

Loss�4}>

Adam/Loss/raw=�$=

Accuracy/__raw_  �?

Accuracy�uz?í�