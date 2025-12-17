import zlib
import sys

filename = sys.argv[1] if len(sys.argv) > 1 else 0 
print('The file name is ',filename)
compressed_contents = open(filename, 'rb').read() 
decompressed_contents = zlib.decompress(compressed_contents) 
print(decompressed_contents)
