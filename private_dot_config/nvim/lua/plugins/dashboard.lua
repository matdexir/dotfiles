-- Let's give it a shot
local new_header = {
    "███╗░░░███╗░█████╗░████████╗██████╗░███████╗██╗░░██╗██╗██████╗░",
    "████╗░████║██╔══██╗╚══██╔══╝██╔══██╗██╔════╝╚██╗██╔╝██║██╔══██╗",
    "██╔████╔██║███████║░░░██║░░░██║░░██║█████╗░░░╚███╔╝░██║██████╔╝",
    "██║╚██╔╝██║██╔══██║░░░██║░░░██║░░██║██╔══╝░░░██╔██╗░██║██╔══██╗",
    "██║░╚═╝░██║██║░░██║░░░██║░░░██████╔╝███████╗██╔╝╚██╗██║██║░░██║",
    "╚═╝░░░░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░╚═════╝░╚══════╝╚═╝░░╚═╝╚═╝╚═╝░░╚═╝"
}
local footer = {"Powered by Matdexir"}

vim.g.dashboard_custom_header = new_header
vim.g.dashboard_custom_footer = footer
vim.g.dashboard_default_executive = 'telescope'