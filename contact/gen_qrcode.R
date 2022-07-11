library(qrcode)

ref_url <- "https://www.linkedin.com/in/sam-parmar-/"
code <- qr_code(ref_url)
generate_svg(code, filename = "contact/qrcode.svg", size = 500)
