#!/bin/bash
echo
read -p "QT Wallet and raptoreumd need to be killed to run this script, I will now kill it if running. Continue? Y/y (or cntrl-c to exit) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
pkill -f raptoreum
fi
sleep 5

echo

echo "Starting the raptoreum daemon, this will take a few minutes"
./raptoreumd --daemon
sleep 60

echo "Checking if you are owner of a lucky block address...."

echo

: '
./raptoreum-cli validateaddress "RTDhddSmxjqzHtdoTrPHmZS5NB9h12w1WH" | grep ismine
./raptoreum-cli validateaddress "RBHcZF8UwHjRwwSmKfYPKtbmcNeFQAy9Yw" | grep ismine
./raptoreum-cli validateaddress "RJbShmxU79x7tTciJTNwU6rgQfZqwneXH7" | grep ismine
./raptoreum-cli validateaddress "RBJS8VPAoi4kw8r56dqN8uvov7PF7V94nz" | grep ismine
./raptoreum-cli validateaddress "RHnXvpkbpRwykThtRopUuE7ZVcoMbBSiuT" | grep ismine
./raptoreum-cli validateaddress "RBEg8CV6cF2C4HMSm61V5VtvfPsjqCmtPZ" | grep ismine
./raptoreum-cli validateaddress "RLQg8cCn7XFq3QhGCisLyQfPuR6eQC1Jff" | grep ismine
./raptoreum-cli validateaddress "RLFvJKb6unLLe9YxbDYiS84t6xP5M7khP4" | grep ismine
./raptoreum-cli validateaddress "RJSXYBAdfL5AKG7Tp5omHQHfP3yM9y4SCq" | grep ismine
./raptoreum-cli validateaddress "RQXCvnpLrB8VLYzmioMvTMvUMWuYD9FXMR" | grep ismine
./raptoreum-cli validateaddress "RXgZf7kWEukvxXBjd3tVyGazBhGhyrw954" | grep ismine
./raptoreum-cli validateaddress "RNDbDy3MGMLgFNrVdNVSUZWhtpJKh1rr28" | grep ismine
./raptoreum-cli validateaddress "RUxDDAm5KcoNP3bTLadSVByW7GhqeaiZkN" | grep ismine
./raptoreum-cli validateaddress "RUbZv8ymHyBfLZYxtAKasUqBFNMPb4EVfA" | grep ismine
./raptoreum-cli validateaddress "RTVrNXQN6toSTMkCkwqwxtNNY5sdqhMksC" | grep ismine
./raptoreum-cli validateaddress "RTmGDSqANSUgqBUSDMZg7TxqFUUkNnBAYw" | grep ismine
./raptoreum-cli validateaddress "RTRKv7i9S1J3YoNsvTWecFbz28uB9oSzGy" | grep ismine
./raptoreum-cli validateaddress "RDV6aR79oKGmRZDgnd3cuFoSFhd8vRFZxD" | grep ismine
./raptoreum-cli validateaddress "RSHe1fhXVpPCjWyPRDdoEoKmSeCXn6q4ic" | grep ismine
./raptoreum-cli validateaddress "RWiJac25iVn55U49KgLGQzqWPR7hi6p7Gh" | grep ismine
./raptoreum-cli validateaddress "RQ9i1EMb2LizrnMiKNwHYCUAChNjdtUr2g" | grep ismine
./raptoreum-cli validateaddress "RM4fhsJDVSJKFofHbiWh3gsF9YgBx4DfuJ" | grep ismine
./raptoreum-cli validateaddress "RF8yi3UdfUucgWRJnrfrSeYqgdmewQfZC6" | grep ismine
./raptoreum-cli validateaddress "RKB5aZeHUcfpiGUpEabTfQgBaCgngTAvkn" | grep ismine
./raptoreum-cli validateaddress "RKC1ZrXcLQ4jmAQgzcXrANezfBZDqLXnfD" | grep ismine
./raptoreum-cli validateaddress "RLSr8SoKXoUnY4rtgJDRoBzo1JQAqswQ8z" | grep ismine
./raptoreum-cli validateaddress "RFATDPYiEwpu79RbVqnoftmNLT7NQjBynR" | grep ismine
./raptoreum-cli validateaddress "RWr4YQNLbiKqcPCNDvGxyGMTFtiY3yK16S" | grep ismine
./raptoreum-cli validateaddress "RXG3vpJesSaPz326EEN36mHJot7zznazpN" | grep ismine
./raptoreum-cli validateaddress "RWNH1vTMb9SFeKxub9RGeVyK3znBmFG9Qp" | grep ismine
./raptoreum-cli validateaddress "RSbKrqniufqQTVBzcgB7BPMUT2st96PtDx" | grep ismine
./raptoreum-cli validateaddress "RJWnjQ9B6Zh8eCTWwYBFTmtYTgae81g4uP" | grep ismine
./raptoreum-cli validateaddress "RUHeHP66Xb4qYpFx9SftyihGY8rGLLnFZb" | grep ismine
./raptoreum-cli validateaddress "RR97k1CXCyQoaR5jM3fZWGER1FTTta7PSk" | grep ismine
./raptoreum-cli validateaddress "RHSXgR3RZ9bR2QCfNN8XdFSzcnBeLnBUQK" | grep ismine
./raptoreum-cli validateaddress "RL3HqyUfUqMZBhaeyCgAj45uGh44cxH8hz" | grep ismine
./raptoreum-cli validateaddress "RPmY1quWKsb9pPnZMDKZJfxhVXUAaHVBUb" | grep ismine
./raptoreum-cli validateaddress "RHbH7VVeFhKnZQNmgTmF6GPYLNKFezZLib" | grep ismine
./raptoreum-cli validateaddress "RVrrwZuZFUCfHtxrxKbVzhd5oXZ6ADgpJf" | grep ismine
./raptoreum-cli validateaddress "RR5PFxfgMG6QfmFdkSW6PURLcTkFVc1qns" | grep ismine
./raptoreum-cli validateaddress "RSsGeLXd8X911L1V1fW9xVAYt5npWaSvXb" | grep ismine
./raptoreum-cli validateaddress "RMxTCBhdr3uT88sStDAfvjc47T5G1ZCUPp" | grep ismine
./raptoreum-cli validateaddress "RAAYRUNSQbYX6ZXDNf5VyPd1YshpDZ12Nh" | grep ismine
./raptoreum-cli validateaddress "RGYfU4BAM9yirueFt2U6jeVJ3MzVBE6F4r" | grep ismine
./raptoreum-cli validateaddress "RFDwMpMjo5kR4oEoX69wYVUwc6g8WT2WYg" | grep ismine
./raptoreum-cli validateaddress "RMz493aX3WdXkVepKNWercsJhdds2F7Btm" | grep ismine
./raptoreum-cli validateaddress "RS8vW8QqTMfwQSyT1d8Sp5QWeEUnAGob3t" | grep ismine
./raptoreum-cli validateaddress "RQDz7p2wrBV7kYc6fGEKxedS36628QCtxr" | grep ismine
./raptoreum-cli validateaddress "RHRni9z673yTLRT2fXwpccwHb4aqEd2NFg" | grep ismine
./raptoreum-cli validateaddress "RGzxJwVot746JtQNGLo3RSh3jr8whYcj8L" | grep ismine
./raptoreum-cli validateaddress "RLwH38yBgu6MnW7fpzYPWm1B51Nr3G12Hs" | grep ismine
./raptoreum-cli validateaddress "RHfJQqVmbK6cCHhMZBVbpSU2QR4sH7oA4i" | grep ismine
./raptoreum-cli validateaddress "RCiX3R1ovWCWTZGyk3b974y4m7ycZvGLG7" | grep ismine
./raptoreum-cli validateaddress "RNatVckhwihfhwfbWgAMv31iwPFWxufMuD" | grep ismine
./raptoreum-cli validateaddress "RSiqjcZtktAaYczshs1hLPk9zad5NyRsQW" | grep ismine
./raptoreum-cli validateaddress "RASBMDavH7ig5dnz44Pt5AojdAm9oZYtsB" | grep ismine
./raptoreum-cli validateaddress "RMM7xzZrjhjotniqqS5TXvWc4atcp4usJi" | grep ismine
./raptoreum-cli validateaddress "RLoHG2TBqxeuKHrSJ2CvWEkuP5qHQGP83J" | grep ismine
./raptoreum-cli validateaddress "RF32xk8N5KYGD9WKotBKoSNQZ7gYTxqu3Z" | grep ismine
./raptoreum-cli validateaddress "RECBCQNqGrC11iz8Y4WXV9sHWeiDPZYZp8" | grep ismine
./raptoreum-cli validateaddress "RGkuCiBTDCDy7qcZGwmMUYyLJNHkCf8mJs" | grep ismine
./raptoreum-cli validateaddress "RMBQ4gtnRRuetRRa6vaNG9ygtuzwLnvPje" | grep ismine
./raptoreum-cli validateaddress "RDFzR2BkLXhLVKaG6sVLdqYySL5V48Wn3s" | grep ismine
./raptoreum-cli validateaddress "RAY5H3TeNqCw9ZZaDjrovwits7no2cSoQb" | grep ismine
./raptoreum-cli validateaddress "RSmFw6xC3xrkYPVipZTF4Vk6qvbw1VMan9" | grep ismine
./raptoreum-cli validateaddress "RQgTcWVCoypHx62douWeiN2NhefcLTBJCV" | grep ismine
./raptoreum-cli validateaddress "RMDMnHoonSXEe97ssohKhoNn4eQycQ21ge" | grep ismine
./raptoreum-cli validateaddress "RC93B5pPTtXQznAgK7cBxtkUyYYR5ejAyE" | grep ismine
./raptoreum-cli validateaddress "R9p1bzXCNzujizwHBr8RrYRnuq7qm4jszN" | grep ismine
./raptoreum-cli validateaddress "RPqAMd3hoV8n9ube1YeAc28Pecq7yfvJEd" | grep ismine
./raptoreum-cli validateaddress "RX5CL5tukjwmFBqbeCo3fJdKQtduyAvJbu" | grep ismine
./raptoreum-cli validateaddress "RBGfTB23g8XFVgLiTE2b4k2hahuujPXHh6" | grep ismine
./raptoreum-cli validateaddress "RNqkG1YH6ByEsr8kX9636VKJX2buAzBKRw" | grep ismine
./raptoreum-cli validateaddress "RBP7PL292UC3tzdiHiZn4UeYS1mQ9RRzTo" | grep ismine
./raptoreum-cli validateaddress "RLiGxQnv7icZcuddaLDpiL9s6PAM2Jw56Z" | grep ismine
./raptoreum-cli validateaddress "RMgoq2oQV7zhBq9jU4n55xfc4smgJeFaDn" | grep ismine
./raptoreum-cli validateaddress "RKuLRrB2H98ETPrNk8vof12xNdVEEGptGa" | grep ismine
./raptoreum-cli validateaddress "RA6iAewvLmzFvvMXrKMNHWrBu4aAPCDstz" | grep ismine
./raptoreum-cli validateaddress "RGn9mLpiZGx5jJopLTDQHQT5cyaFcbxGa5" | grep ismine
./raptoreum-cli validateaddress "RTnwZgy7nuqcPze6wYb13PaY18GNXB1oj2" | grep ismine
./raptoreum-cli validateaddress "RAZXo5b2uDZGx1zLDdzPcGzaSy2sZ96aoP" | grep ismine
./raptoreum-cli validateaddress "RBzmLcEq8wFiNfoGtuLUcfpj1mHgRiRo7E" | grep ismine
./raptoreum-cli validateaddress "RMQbo9X3wY9XCLTLqRrn9xioEGxLiGHR5f" | grep ismine
./raptoreum-cli validateaddress "RACdrQraUL4mgJ41dbr2pLphe1vqj3iWxy" | grep ismine
./raptoreum-cli validateaddress "RSieWSxeCTXE1FFxqjFzsgHZCKU1wDKc9C" | grep ismine
./raptoreum-cli validateaddress "RX5CL5tukjwmFBqbeCo3fJdKQtduyAvJbu" | grep ismine
./raptoreum-cli validateaddress "RBGfTB23g8XFVgLiTE2b4k2hahuujPXHh6" | grep ismine
./raptoreum-cli validateaddress "RNqkG1YH6ByEsr8kX9636VKJX2buAzBKRw" | grep ismine
./raptoreum-cli validateaddress "RBP7PL292UC3tzdiHiZn4UeYS1mQ9RRzTo" | grep ismine
./raptoreum-cli validateaddress "RLiGxQnv7icZcuddaLDpiL9s6PAM2Jw56Z" | grep ismine
./raptoreum-cli validateaddress "RMgoq2oQV7zhBq9jU4n55xfc4smgJeFaDn" | grep ismine
./raptoreum-cli validateaddress "RKuLRrB2H98ETPrNk8vof12xNdVEEGptGa" | grep ismine
./raptoreum-cli validateaddress "RA6iAewvLmzFvvMXrKMNHWrBu4aAPCDstz" | grep ismine
./raptoreum-cli validateaddress "RGn9mLpiZGx5jJopLTDQHQT5cyaFcbxGa5" | grep ismine
./raptoreum-cli validateaddress "RTnwZgy7nuqcPze6wYb13PaY18GNXB1oj2" | grep ismine
./raptoreum-cli validateaddress "RFAEwBc6EeVoRLRuZjJKK37yNJDdbaL4VP" | grep ismine
./raptoreum-cli validateaddress "RMu91wo3LTrMwpKTBakbzcN2ZbdfmrYk1h" | grep ismine
./raptoreum-cli validateaddress "RNdgeuYRoG828gnoKmbZyB361PtvS7fkyW" | grep ismine
./raptoreum-cli validateaddress "RD8x8AfjHnNP3vE31gCCq5hdj74NcpxdLu" | grep ismine
./raptoreum-cli validateaddress "RNoR2He5bQQB92pNAyj3C3d5aTSakYASiV" | grep ismine
./raptoreum-cli validateaddress "RN7nFVYRwHGnBvvB1MtTDHaXv4D98dqTwj" | grep ismine
./raptoreum-cli validateaddress "RHk55obSjor6o9dPnz53KvCcKJTt6vL1wS" | grep ismine
./raptoreum-cli validateaddress "RHSc5VVRGFXtcRmMJhSpWAbi6NrvvfkbwY" | grep ismine
./raptoreum-cli validateaddress "RVyBYHEVKuHWWtc7D34EGyuytkcLGXuLCV" | grep ismine
./raptoreum-cli validateaddress "RFqwa4cKrDuo8tr6piCTKVbSryazADupWH" | grep ismine
'

echo "Lucky Blocks from block 120024 to 140185"
set -v
./raptoreum-cli validateaddress "RDPHYDTBYhKgaMBwhFuAoAXRuYZ2pkE123" | grep ismine
./raptoreum-cli validateaddress "RGNbpGSL8S1LLY7BSthfxfNiFjyCEWcdZ1" | grep ismine
./raptoreum-cli validateaddress "RB66gtYusjr9eMfiTkvvD7L8c1gXbiTmRs" | grep ismine
./raptoreum-cli validateaddress "RLMUqwrtitTWGMcgyge3zjBE9YkGumSFf9" | grep ismine
./raptoreum-cli validateaddress "RFpQy5gafW6SWJcz2VvhZeVkLHxXxK2GTG" | grep ismine
./raptoreum-cli validateaddress "RVEzBY4nCqsc9ePpjHn1cqT6mhnbWFaucB" | grep ismine
./raptoreum-cli validateaddress "RSgKVCzX6TvQ2VAdj5n3wXiEaJ6ut6WL8M" | grep ismine
./raptoreum-cli validateaddress "RC6ydQiN9SPtWzBiXCVyL9eNJpE5TBMMqC" | grep ismine
./raptoreum-cli validateaddress "RFRnXfAuGDnhkcPMjkGeob9hHKEKgC1HQx" | grep ismine
./raptoreum-cli validateaddress "RK4d42H9Bst8hSR8rFaNxNmSvvE5mYCP4V" | grep ismine
set +v
echo
echo "Address verification complete! If you see:"
echo "ismine: true"
echo "It means you are a lucky block winner! To claim your Raptoreum IOU you must sign a message with your winning address, once done send Charlie the address, message, and signature on Discord."
sleep 5
echo "Now checking if you are the owner of any of the regular winning addresses...."

echo

: '
./raptoreum-cli validateaddress "R9b3YgFDfS8HWc9oMqZopa7na5PYmSCeQk" | grep ismine
./raptoreum-cli validateaddress "RD3965LUh4X82Lkts8bRyp4dDdzvCLWFfA" | grep ismine
./raptoreum-cli validateaddress "RSxq9o7TkTHC8bjirbSJb27jdNPT5kcd91" | grep ismine
./raptoreum-cli validateaddress "RFiv3eTQ18vn71RRsqT7S1r8Yhj5Hj8t4D" | grep ismine
./raptoreum-cli validateaddress "RJRPaPjqkZziWyKpjQsm3VvgKnNcioAvJ4" | grep ismine
./raptoreum-cli validateaddress "RCiX4JMkGDCF87TbAeHwEhrPFXzz6FpvKb" | grep ismine
./raptoreum-cli validateaddress "RCD3PVyn7nzoWYEnZzWGffB6gh5WSTedsZ" | grep ismine
./raptoreum-cli validateaddress "RJMMMcvDXAQSfKKKDMso4gYDK31ZCvYYDY" | grep ismine
./raptoreum-cli validateaddress "RHaiGEkzgeYr2toMo4jcFVRJQ9jwBPHZ1x" | grep ismine
./raptoreum-cli validateaddress "RXmbFjuRJBD6yoXfEBWFa5RT7k95f9dn2B" | grep ismine
./raptoreum-cli validateaddress "REHkt5AtQGNrp4n7TrG6c3gaRtvBxqRq7L" | grep ismine
./raptoreum-cli validateaddress "R9WL2sNXHmacxvCusZSDMgaiWJrYZJX5ts" | grep ismine
./raptoreum-cli validateaddress "RW5rvh1pgr3efXUaQzYnjyufWnY9VV7oyw" | grep ismine
./raptoreum-cli validateaddress "RBankZekxmn2xYi3qUdNZYMzKT7AE9XT2b" | grep ismine
./raptoreum-cli validateaddress "RWoCCNsKPEUaUERsvtQotjTJpa6Jt8mryg" | grep ismine
./raptoreum-cli validateaddress "RXbs5EGjyQ5VNKApjWRBNUDg1HQGwvg4kX" | grep ismine
./raptoreum-cli validateaddress "RVXh7msb8weK7JPuKcPQzQA7P8LrsKh17p" | grep ismine
./raptoreum-cli validateaddress "RWqexfM1HdCNVfCYoiPX2E2bLCyncKnCwY" | grep ismine
./raptoreum-cli validateaddress "RH8CzT9coKduL4ftHT5skavUEZeKtYG6zm" | grep ismine
./raptoreum-cli validateaddress "RAh6ynBjqWSb7DWTaeBeHXbkKywp4xKAyT" | grep ismine
./raptoreum-cli validateaddress "RLQCERL3rqT3vCkeHykbggxeUG7wHctzFZ" | grep ismine
./raptoreum-cli validateaddress "RWtAGoZivNfiu7DFM3hEiDFtxH7rtNA2he" | grep ismine
./raptoreum-cli validateaddress "RL2nNwbTFRcvqrU1WY1byzgDxaavcCb1Qv" | grep ismine
./raptoreum-cli validateaddress "RK8DzYusPGAkwvAR1xM4yrdxaDbq5mEFzk" | grep ismine
./raptoreum-cli validateaddress "RRJANjVnLFnyAFuW63vR7vHYTpHEszHYWM" | grep ismine
./raptoreum-cli validateaddress "RJUuwqvoNvwnfM8agkfkEFvkKFfSsszRon" | grep ismine
./raptoreum-cli validateaddress "RSJjuRhGSaJJpVFMsXypd3xkHNTFQxoCz9" | grep ismine
./raptoreum-cli validateaddress "RB5XL5814ruuKseA9LwPWgezCsS3Qk9gG6" | grep ismine
./raptoreum-cli validateaddress "RQcYMS1Y8kN88DeUq4sxUaryDgtqZSWFVr" | grep ismine
./raptoreum-cli validateaddress "R9n2vH24yKSgHtiy7pxmzQdC3KZU7xgLc5" | grep ismine
./raptoreum-cli validateaddress "RNzheo3TFJ25yZtwqoJTkuvitHGui3zrPZ" | grep ismine
./raptoreum-cli validateaddress "RMJiV7gPAFM7dW4DKh7TCxhLEE6FJKpoNB" | grep ismine
./raptoreum-cli validateaddress "R9oVJX94XuiuUVpEvC8QdYVrpYQ3QpgSPZ" | grep ismine
./raptoreum-cli validateaddress "RBGQcSommU9UXi9VS3Bf2L2xyG7jMLg8Bk" | grep ismine
./raptoreum-cli validateaddress "RLN3fSnB6g8oRNPqpqbLbK6Vexoca6yBjE" | grep ismine
./raptoreum-cli validateaddress "R9oteZeac43f1UVhtm3hM4rF3CueivWFm7" | grep ismine
./raptoreum-cli validateaddress "RCZARr8VjyLZn89Sjz6NjcttBUiwFMJzDT" | grep ismine
./raptoreum-cli validateaddress "RRNUDXavLkP3gW8HVKjKLjVziTcEp2bTp6" | grep ismine
./raptoreum-cli validateaddress "RQEdAWnYBTqfnit7XZLbTrqApqJzDVgCXD" | grep ismine
./raptoreum-cli validateaddress "RPfV2PPReU8Xdec7o3fUerjYsnKZT4T6zr" | grep ismine
./raptoreum-cli validateaddress "RTUHyUrgg6vjw1RukTbM8VYMPhmxdozffq" | grep ismine
./raptoreum-cli validateaddress "RDwZpJw8WaRVFHXBqdqv7dBcQogjifH8cT" | grep ismine
./raptoreum-cli validateaddress "RT7FCWACfLyEvWgzf9zzBRbt4mgCU4aHsP" | grep ismine
./raptoreum-cli validateaddress "RDDBJ33dHo6pWNhdKaG8gWjT5s1mRLWiEU" | grep ismine
./raptoreum-cli validateaddress "RDynjU1ne74SP3piQF278w9cwGfNDHWQcM" | grep ismine
./raptoreum-cli validateaddress "RQGcuw4VPCUTRuMTYZh63sfFvKQgTywqAd" | grep ismine
./raptoreum-cli validateaddress "RAayhSFPMqzx9J7S1Q8izZp54ft4mABwto" | grep ismine
./raptoreum-cli validateaddress "RBeT3LyNHYr8xr8TWnsFpn8uJkFBVa5ULb" | grep ismine
./raptoreum-cli validateaddress "R9LsL4XHd9kLRNj5L5fbxEVTj45cyLdB77" | grep ismine
./raptoreum-cli validateaddress "RMuWBym4xeYm9nqEeunN4Znk79tFECW83f" | grep ismine
./raptoreum-cli validateaddress "RTEUZoFeKzVqUuFhS9Pbjpgx7Tdinsah8v" | grep ismine
./raptoreum-cli validateaddress "RS9wrintVuwTYBBusTxfy46QCcQacdNaWk" | grep ismine
./raptoreum-cli validateaddress "RJRPaPjqkZziWyKpjQsm3VvgKnNcioAvJ4" | grep ismine
./raptoreum-cli validateaddress "RGLBRQKiizcEZfE76Yo35UYqnGC3sMJ3kF" | grep ismine
./raptoreum-cli validateaddress "RFwKcM8fh2kDobNyQ8e68JKURTZvHk5Uhp" | grep ismine
./raptoreum-cli validateaddress "RDY8rdS8GPXqdBYM1AqMpfjTRPgn5hXzhH" | grep ismine
./raptoreum-cli validateaddress "RWyKvD6oPoa766YexKTLpr4xePXJxyoftv" | grep ismine
./raptoreum-cli validateaddress "RTCfHW4a2o2QHsN8qFCZhieZMHDdBRL3nC" | grep ismine
./raptoreum-cli validateaddress "RFojojmAn33p1r3R2epQYzpZV9kUdU2VMC" | grep ismine
./raptoreum-cli validateaddress "RMpYKy7vB2tLS3h3yb2U2BgM2RBxNHivHu" | grep ismine
./raptoreum-cli validateaddress "RFojojmAn33p1r3R2epQYzpZV9kUdU2VMC" | grep ismine
./raptoreum-cli validateaddress "RKtpriabbYQBRBbx5Fs1wvX2QU5qxhU5D2" | grep ismine
./raptoreum-cli validateaddress "RFUaNDxmwKstHUSDnN7nXHin4jT9uNn2RS" | grep ismine
./raptoreum-cli validateaddress "RBJ3mvxZgJ9gHLyXLiqhWCbMJpGub5nyJa" | grep ismine
./raptoreum-cli validateaddress "RFfRkSebbngUBa6rSfagt2LRsnvGMiWX87" | grep ismine
./raptoreum-cli validateaddress "RF4L8Cgqn62Cxxt4u9wNSkXrwatioYiz92" | grep ismine
./raptoreum-cli validateaddress "RGxHrQRZXGqberAGuH9NuWAG4c6TTBRefZ" | grep ismine
./raptoreum-cli validateaddress "RQYwupUbffDhfpqqV7aRXw7xA4cxhJJMUq" | grep ismine
./raptoreum-cli validateaddress "RKtCJJXPPvtZccZKhiANfsWz4ReuuCQe5s" | grep ismine
./raptoreum-cli validateaddress "REFYP4EVuM9WUEEDr2PTGWLmwCAn3dZRgd" | grep ismine
./raptoreum-cli validateaddress "RTAj5ocUJ4khCnWNDLXhbsDd2tofTfH3tG" | grep ismine
./raptoreum-cli validateaddress "RY69cpzB6HaDZZoJaQVzCZk4FobiR4JEhq" | grep ismine
./raptoreum-cli validateaddress "RPtToQjm6wH3BeSeTue5K5cbdUJ8zVFMFW" | grep ismine
./raptoreum-cli validateaddress "RJHBjoses1EhycLEAfHsRM42FVaGRL2QWP" | grep ismine
./raptoreum-cli validateaddress "RGquXhSn2UKzbARhUDtpZehNLiC2axLSHK" | grep ismine
./raptoreum-cli validateaddress "RWcg5DLAiVgjHPgPBvzxruC86tbyDGPzCF" | grep ismine
./raptoreum-cli validateaddress "R9zenN2B3hXtqzSEXU6RP88qcBUFen5yJR" | grep ismine
./raptoreum-cli validateaddress "RAwHTZQk7qMvhWHHzV5f3dAeZMuh6QGXYJ" | grep ismine
./raptoreum-cli validateaddress "RYLovgDRZUKpfVFsmC8EXjeTjrn71jqG7Y" | grep ismine
./raptoreum-cli validateaddress "RFjmefYXiSVrogpKS4K15EYAan3842Cfh9" | grep ismine
./raptoreum-cli validateaddress "RRX3FH9izSUwUSHDWE2DVBjY5VfcXqJBPS" | grep ismine
./raptoreum-cli validateaddress "RS8MAEjazaPa5RssTsn7cocX8cMpTQP9GR" | grep ismine
./raptoreum-cli validateaddress "RTLVmysCHpfmW6MVqnv58d61QaA5vojCb4" | grep ismine
./raptoreum-cli validateaddress "R9zenN2B3hXtqzSEXU6RP88qcBUFen5yJR" | grep ismine
./raptoreum-cli validateaddress "RAwHTZQk7qMvhWHHzV5f3dAeZMuh6QGXYJ" | grep ismine
./raptoreum-cli validateaddress "RYLovgDRZUKpfVFsmC8EXjeTjrn71jqG7Y" | grep ismine
./raptoreum-cli validateaddress "RLDwEgrwXJC4Kxupo5v2Qz4S1swxKcNUhx" | grep ismine
./raptoreum-cli validateaddress "RST1Y2MARJkQGdPWZdJGt5JmTxRECXj31H" | grep ismine
./raptoreum-cli validateaddress "RJp9UbseC5JY5UoFEZn3G9sm8c6hwkZRbM" | grep ismine
./raptoreum-cli validateaddress "RVSwqEAD38H9xnjoQghKXQsW2HvuGZB7Y2" | grep ismine
./raptoreum-cli validateaddress "RERSEm8Lt7JegMWdc51fTEudSH4o5dQuHJ" | grep ismine
./raptoreum-cli validateaddress "RE3au7fvN9DySmMHy2xiTXjFkL2Di2fZMY" | grep ismine
./raptoreum-cli validateaddress "RA74R7j13A6pzY5uKmBtjsLu3bKKFBDh9s" | grep ismine
./raptoreum-cli validateaddress "RCu4YdT1D6Ya8twuVGipZgN6ANPmcJKrSp" | grep ismine
./raptoreum-cli validateaddress "RDYqSHm8QuVKr5aski9nxm99krFTqGSmDe" | grep ismine
./raptoreum-cli validateaddress "RGCsuwa64h38Mpe19pmXUwVXDrUtEgorPN" | grep ismine
./raptoreum-cli validateaddress "RJjtr4Y28gzfqS26b8agwvzdw6wveqMTSp" | grep ismine
./raptoreum-cli validateaddress "RJaRNUBWKPitQRrys8H9En5WvN92iEP7yL" | grep ismine
./raptoreum-cli validateaddress "RGkuCiBTDCDy7qcZGwmMUYyLJNHkCf8mJs" | grep ismine
./raptoreum-cli validateaddress "RLh1YjsuQjvD6mDTcqVstXW8YyddRSZVfZ" | grep ismine
./raptoreum-cli validateaddress "RUxjRABjkHWCRefd6XnRDyGMJe8jcoxxv1" | grep ismine
./raptoreum-cli validateaddress "RWJ6ut4D7G46z8MgdCoJ958xRCzAKG3biB" | grep ismine
./raptoreum-cli validateaddress "R9p1bzXCNzujizwHBr8RrYRnuq7qm4jszN" | grep ismine
./raptoreum-cli validateaddress "RC4KZjSUJ2TPjQqobHgfKbw5K2XrD31XjA" | grep ismine
./raptoreum-cli validateaddress "RSbA8Pru7cxt7CSUG4gGAxS9hN8yqZSybN" | grep ismine
./raptoreum-cli validateaddress "RQ2Zo6ncgyZS8PFNkJKtDGBGwsf8YPbpi3" | grep ismine
./raptoreum-cli validateaddress "RGHghyKe9kTcy5SWxzNxBUvnZo432aFt6V" | grep ismine
./raptoreum-cli validateaddress "RG9DNpqJCniMhGmSjpkUXMFyxeKPZA4R85" | grep ismine
./raptoreum-cli validateaddress "RBqXPdgKhjqDCMCSXn1esZoLVUWPa8go1n" | grep ismine
./raptoreum-cli validateaddress "RGkuCiBTDCDy7qcZGwmMUYyLJNHkCf8mJs" | grep ismine
./raptoreum-cli validateaddress "R9fsmmCqKNZkVBrroBwzALtpXKf9Y6pNdL" | grep ismine
./raptoreum-cli validateaddress "RHmir7m2cUwej3dhfigmr93URv4rodHm3T" | grep ismine
./raptoreum-cli validateaddress "RXNoDu6yaPLoveZVhono9eVe4S6VzUQAkY" | grep ismine
./raptoreum-cli validateaddress "RN5DPRLHRAueNoiuszWxxvfFBYEL2cUqSE" | grep ismine
./raptoreum-cli validateaddress "RVh6aWzkEhnMsawmt2pUj4vZomiByXyHLP" | grep ismine
./raptoreum-cli validateaddress "RPdb7VyErnCYns94vcqYxyBEBD8Df9vgdw" | grep ismine
./raptoreum-cli validateaddress "RRDruea12XZUdVcKVyokHio51aB7ZoQ2qd" | grep ismine
./raptoreum-cli validateaddress "RGWDprqJ7uobMkTbsrTLRtf87saadduhep" | grep ismine
./raptoreum-cli validateaddress "RJaRNUBWKPitQRrys8H9En5WvN92iEP7yL" | grep ismine
./raptoreum-cli validateaddress "RGkuCiBTDCDy7qcZGwmMUYyLJNHkCf8mJs" | grep ismine
./raptoreum-cli validateaddress "RLh1YjsuQjvD6mDTcqVstXW8YyddRSZVfZ" | grep ismine
./raptoreum-cli validateaddress "RUxjRABjkHWCRefd6XnRDyGMJe8jcoxxv1" | grep ismine
./raptoreum-cli validateaddress "RWJ6ut4D7G46z8MgdCoJ958xRCzAKG3biB" | grep ismine
./raptoreum-cli validateaddress "R9p1bzXCNzujizwHBr8RrYRnuq7qm4jszN" | grep ismine
./raptoreum-cli validateaddress "RC4KZjSUJ2TPjQqobHgfKbw5K2XrD31XjA" | grep ismine
./raptoreum-cli validateaddress "RSbA8Pru7cxt7CSUG4gGAxS9hN8yqZSybN" | grep ismine
./raptoreum-cli validateaddress "RQ2Zo6ncgyZS8PFNkJKtDGBGwsf8YPbpi3" | grep ismine
./raptoreum-cli validateaddress "RGHghyKe9kTcy5SWxzNxBUvnZo432aFt6V" | grep ismine
./raptoreum-cli validateaddress "RG9DNpqJCniMhGmSjpkUXMFyxeKPZA4R85" | grep ismine
./raptoreum-cli validateaddress "RBqXPdgKhjqDCMCSXn1esZoLVUWPa8go1n" | grep ismine
./raptoreum-cli validateaddress "RGkuCiBTDCDy7qcZGwmMUYyLJNHkCf8mJs" | grep ismine
./raptoreum-cli validateaddress "R9fsmmCqKNZkVBrroBwzALtpXKf9Y6pNdL" | grep ismine
./raptoreum-cli validateaddress "RRYMAV4Xsx2v8BpDH6wXjRZA4Gj197D9vu" | grep ismine
./raptoreum-cli validateaddress "RE9ehaxqDbxSNvvwoLcq6knftKYbLkQEoT" | grep ismine
./raptoreum-cli validateaddress "RVRATdHi8xcpLT1bsRgV2onQSovfHebo66" | grep ismine
./raptoreum-cli validateaddress "RY6feg3uwFoD9DvvFwswmcXVu6Vub7WH3a" | grep ismine
./raptoreum-cli validateaddress "RUTBZEvhuF8fuvqokuvxCWnPscNr4Sci7v" | grep ismine
./raptoreum-cli validateaddress "RW5jS7Dko61u6L8m6K4v5TzmZm3w9YLptW" | grep ismine
./raptoreum-cli val "QmPCxayFnFxtiTiHb5xuUv7RC63XdhVuLvgqGkf5U4xkAT" | grep ismine
./raptoreum-cli validateaddress "RNvPUQjh5bgHrsABTsb1pod4qDshAZDnwR" | grep ismine
./raptoreum-cli validateaddress "RAP2LbAx6BKDrgEXFoVhfn8teZhPZ3zJix" | grep ismine
./raptoreum-cli validateaddress "RFjHX5aw4pHq1p6DJYTd5cTnpZBpgwJNZa" | grep ismine
./raptoreum-cli validateaddress "RRPpdXvV2inEVsiznL19vDif7xdMoTBkap" | grep ismine
./raptoreum-cli validateaddress "REF9s2khC3mZ4ntX51st8cpRtAjEurZbqj" | grep ismine
./raptoreum-cli validateaddress "RWMNTBF6dEBFpyuHdU5qYi6RBe8jDJ84Br" | grep ismine
./raptoreum-cli validateaddress "RW3GRJvtNjwp2F2XSWYcQUXGK4Nhstct4s" | grep ismine
./raptoreum-cli validateaddress "RA6bZihofjJZdW6bWWgoecmuaY5wsMCSen" | grep ismine
./raptoreum-cli validateaddress "RJc6TkWcLGMBTZHhoZhMYv5WMzZbpmaMaQ" | grep ismine
./raptoreum-cli validateaddress "RJLuuRtAPu86oFqynrxDwxWaB5PWdwRHp6" | grep ismine
./raptoreum-cli validateaddress "R9tGoFxWJo4eX5Kmq4zzRSC6TeN7y7GxVW" | grep ismine
./raptoreum-cli validateaddress "RMAS9Eghdu8BFnrTWR2NtKr1WksS78ZMJq" | grep ismine
./raptoreum-cli validateaddress "R9UybUMpsUX2vFwkJvzqDBhPcCyueN7uFy" | grep ismine
./raptoreum-cli validateaddress "RUBbjFoVPEwbf7iYDPXdGjGVkfG6PGXV2c" | grep ismine
./raptoreum-cli validateaddress "RGu7dBNvoBCy7oPrDFZJgonEKbyjgEcFtS" | grep ismine
./raptoreum-cli validateaddress "RF76nmyro6QpHE1AUJD6LBWkDbHFPk77Pq" | grep ismine
./raptoreum-cli validateaddress "RA3TCWBMyenZBcJFxnMam4WqpJ8LmkcHzC" | grep ismine
./raptoreum-cli validateaddress "RNBzdCDup3dvWFx424ighasN63gp1tGwx1" | grep ismine
./raptoreum-cli validateaddress "RF2xrzE1mE2KarGrbMWrirW2nJ5H9fmmj5" | grep ismine
./raptoreum-cli validateaddress "RWkPSJormSGEAsbhBN6pL27SXHwLSXvnRw" | grep ismine
./raptoreum-cli validateaddress "RNhQkzAZ4DVLXbg7UVGDJpVPLrvrZz5njH" | grep ismine
'

echo "Regular Blocks from block 120024 to 140185"
set -v
./raptoreum-cli validateaddress "RT1LyfJcKF9aVBNd547TXbCDdwVN9wbqZa" | grep ismine
./raptoreum-cli validateaddress "RYRYpXH5NKE57pDwBvNbUHnRAWUoDJaXgF" | grep ismine
./raptoreum-cli validateaddress "RGXN1nEXhUD95gwwSYda8xDFByuTvqTcvL" | grep ismine
./raptoreum-cli validateaddress "RRADRGQXUmw3ibAJgStpVMazsYBH4Jt3Zh" | grep ismine
./raptoreum-cli validateaddress "RBmSueeRWey3MBUfjgJjpcJxZ7dtJPKCM2" | grep ismine
./raptoreum-cli validateaddress "RRTXAUZeERTkqQwXpMPTXnucbnA2DCNZSy" | grep ismine
./raptoreum-cli validateaddress "RGu7dBNvoBCy7oPrDFZJgonEKbyjgEcFtS" | grep ismine
./raptoreum-cli validateaddress "RR9QDb1x5jfp9ZU1gs7jNWeiDNgkxXW2sB" | grep ismine
./raptoreum-cli validateaddress "RXomjxv3AMAknr6FCnPanEqDanTvjCaEuk" | grep ismine
./raptoreum-cli validateaddress "RFZUK8A5BXFuSAhEzsjhAtXoLcbJLePLea" | grep ismine
./raptoreum-cli validateaddress "RXrXy7CQSuu1EBPHAt3FvqgaMP9SXuph5o" | grep ismine
./raptoreum-cli validateaddress "RA3gYth4d2mybQrVdZbpp84m4iLScJfF3N" | grep ismine
./raptoreum-cli validateaddress "RQJTLsV63kcM1AEJxk8FF1P1A5npUykwXP" | grep ismine
./raptoreum-cli validateaddress "RAVwC1LuVS7V7KWNoFhAnLwrSWysyf4mfA" | grep ismine
set +v

echo "Address verification complete! If you see:"
echo "ismine: true"
echo "It means you are a lucky block winner! To claim your Raptoreum IOU you must sign a message with your winning address, once done send Charlie the address, message, and signature on Discord."

exit 0
