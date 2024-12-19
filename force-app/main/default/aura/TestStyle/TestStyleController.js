({
	myAction : function(component, event, helper) {
		var objtBox = component.find("txtName");
        var objtBoxValue = objtBox.get("v.value");
        component.set("v.cmpMessage",objtBoxValue);
	}
})