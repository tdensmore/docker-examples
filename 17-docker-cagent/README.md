the only thing you need to run the mcp (if you don’t care about seeing it in the catalog) is the image.  Since you don’t have secrets or config, most of your entry is providing UI properties.

docker mcp catalog create my-catalog

docker mcp catalog show my-catalog

docker mcp gateway run --catalog my-catalog --servers mcp-chess

docker mcp gateway run run --catalog my-catalog --enable-all-servers
