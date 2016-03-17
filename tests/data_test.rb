require "minitest/autorun"

require "matchQ2A"

# Replace content in this test case to cross check the data i/p o/p
class DataTest < Minitest::Test
  def test_version
    assert_equal "South Asia;1947;Mahatma Gandhi;poverty, corruption, malnutrition, inadequate public healthcare, and terrorism;29 states and 7 union territories.", MatchQ2A::DataReceiver.validateAndprocess(["India, officially the Republic of India (IAST: Bhārat Gaṇarājya), is a country in South Asia. It is the seventh-largest country by area, the second-most populous country with over 1.2 billion people, and the most populous democracy in the world. Bounded by the Indian Ocean on the south, the Arabian Sea on the south-west, and the Bay of Bengal on the south-east, it shares land borders with Pakistan to the west;[d] China, Nepal, and Bhutan to the north-east; and Myanmar (Burma) and Bangladesh to the east. In the Indian Ocean, India is in the vicinity of Sri Lanka and the Maldives; in addition, India's Andaman and Nicobar Islands share a maritime border with Thailand and Indonesia.Home to the ancient Indus Valley Civilisation and a region of historic trade routes and vast empires, the Indian subcontinent was identified with its commercial and cultural wealth for much of its long history. Four religions—Hinduism, Buddhism, Jainism, and Sikhism—originated here, whereas Zoroastrianism, Judaism, Christianity, and Islam arrived in the 1st millennium CE and also shaped the region's diverse culture. Gradually annexed by and brought under the administration of the British East India Company from the early 18th century and administered directly by the United Kingdom after the Indian Rebellion of 1857, India became an independent nation in 1947 after a struggle for independence that was marked by non-violent resistance led by Mahatma Gandhi.Economists estimate India to have been the most populous and wealthiest region of the world throughout the first millennium CE. This advantage was lost in the 18th century as other regions edged forward. Currently, the Indian economy is the world's seventh-largest by nominal GDP and third-largest by purchasing power parity (PPP). Following market-based economic reforms in 1991, India became one of the fastest-growing major economies; it is considered a newly industrialised country. However, it continues to face the challenges of poverty, corruption, malnutrition, inadequate public healthcare, and terrorism. A nuclear weapons state and a regional power, it has the third-largest standing army in the world and ranks sixth in military expenditure among nations. India is a federal republic governed under a parliamentary system consisting of 29 states and 7 union territories. India is a pluralistic, multilingual, and a multi-ethnic society. It is also home to a diversity of wildlife in a variety of protected habitats","Where is India located?","Which year did India became a Independent nation?","Who led the Struggle for Independence?","What are the challenges faced by india?","How many States and Union Territories are there in India?","South Asia;poverty, corruption, malnutrition, inadequate public healthcare, and terrorism;29 states and 7 union territories.;1947;Mahatma Gandhi"])
  end
end
