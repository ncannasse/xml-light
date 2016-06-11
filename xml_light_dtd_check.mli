open Xml_light_types

type 'a map = 'a Map.Make(String).t

type checked = private {
	c_elements : dtd_element_type map;
	c_attribs : (dtd_attr_type * dtd_attr_default) map map;
}

val check : dtd -> checked
