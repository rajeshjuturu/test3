({
	mul : function(component) {
		var total= component.get("v.a1")*component.get("v.a2");
        component.set("v.result",total);
	}
})