import           Data.List
import qualified Data.Text as T

main = interact $  intercalate "\n" . map sort_elem . lines
sort_elem = intercalate "," . sort . map T.unpack . T.split (==',') . T.pack
