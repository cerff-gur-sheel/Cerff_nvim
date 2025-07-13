local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local rep = require("luasnip.extras").rep

ls.add_snippets("gdscript", {
	s("###", {
		t("###   "),
		i(1, "block name"),
		t("   ###"),
	}),
	s("connect", {
		t("var _on_"),
		rep(1),
		t(" = func("),
		i(2, "args"),
		t("):"),
		t({ "", "\t" }),
		i(3, "pass"),
		t({ "", "\t" }),
		t("_on_"),
		rep(1),
		t(".connect("),
		i(1, "signal"),
		t(")"),
		f(function()
			vim.cmd("normal! jj<<")
		end),
	}),
	s("if_valid", {
		t("if is_instance_valid("),
		i(1, "node"),
		t(")"),
		t(":"),
		t({ "", "\t" }),
		i(2, "pass"),
	}),
	s("await_ready", {
		t("if not is_node_ready(): await ready"),
	}),

	s("test", {
		t("func test_"),
		i(1, "method_to_test"),
		t("():"),
		t({ "", "\t" }),
		t("pass"),
	}),
})
