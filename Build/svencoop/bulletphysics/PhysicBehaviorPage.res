"bulletphysics/PhysicBehaviorPage.res"
{
	"PhysicBehaviorPage"
	{
		"ControlName"		"PropertyPage"
		"fieldName"		"PhysicBehaviorPage"
		"xpos"		"0"
		"ypos"		"28"
		"wide"		"624"
		"tall"		"278"
		"AutoResize"	"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
	}
	"PhysicBehaviorListPanel"
	{
		"ControlName"		"ListPanel"
		"fieldName"		"PhysicBehaviorListPanel"
		"xpos"		"0"
		"ypos"		"8"
		"wide"		"624"
		"tall"		"226"
		"AutoResize"		"3"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
	}
	"ShiftUpPhysicBehavior"
	{
		"ControlName"		"Button"
		"fieldName"		"ShiftUpPhysicBehavior"
		"xpos"		"120"  // 原 xpos=240，向左移动120单位
		"ypos"		"244"
		"wide"		"120"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"3"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"1"
		"paintbackground"		"1"
		"labelText"		"#BulletPhysics_ShiftUp"
		"textAlignment"		"west"
		"wrap"		"0"
		"command"		"ShiftUpPhysicBehavior"
	}
	"ShiftDownPhysicBehavior"
	{
		"ControlName"		"Button"
		"fieldName"		"ShiftDownPhysicBehavior"
		"xpos"		"240"  // 原 xpos=360，向左移动120单位
		"ypos"		"244"
		"wide"		"120"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"3"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"2"
		"paintbackground"		"1"
		"labelText"		"#BulletPhysics_ShiftDown"
		"textAlignment"		"west"
		"wrap"		"0"
		"command"		"ShiftDownPhysicBehavior"
	}
	"CreatePhysicBehavior"
	{
		"ControlName"		"Button"
		"fieldName"		"CreatePhysicBehavior"
		"xpos"		"360"  // 原 xpos=480，向左移动120单位
		"ypos"		"244"
		"wide"		"120"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"3"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"3"
		"paintbackground"		"1"
		"labelText"		"#BulletPhysics_CreatePhysicBehavior"
		"textAlignment"		"west"
		"wrap"		"0"
		"command"		"CreatePhysicBehavior"
	}

	// 新增 DeleteSelectedPhysicBehavior 按钮，位置为 CreatePhysicBehavior 原先的地方 (xpos=480)
	"DeleteSelectedPhysicBehavior"
	{
		"ControlName"		"Button"
		"fieldName"		"DeleteSelectedPhysicBehavior"
		"xpos"		"480"  // 这是 CreatePhysicBehavior 原先的位置
		"ypos"		"244"
		"wide"		"120"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"3"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"4"
		"paintbackground"		"1"
		"labelText"		"#BulletPhysics_DeleteSelectedPhysicBehavior"
		"textAlignment"		"west"
		"wrap"		"0"
		"command"		"DeleteSelectedPhysicBehavior"
	}
}
