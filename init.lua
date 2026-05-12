require("frank.core")
require("frank.lazy")

-- load local secrets if present (gitignored)
local ok, _ = pcall(require, "frank.local")
if not ok then end
