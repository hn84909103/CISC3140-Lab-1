(define myList '(a b c d e f e d c b a)) ;input list

(define (isPalindrome ls)
  (define reS (reverseL myList))
  ;call function reverseL and asign the result to reS
  
  (equal? ls reS ) ;return #t if the input is palindrome
)

;fuction to reverse the list
(define (reverseL ls)
   (if (null? ls) ;check if the list is empty
     '()
     (append (reverseL (cdr ls)) (list (car ls)))
     ;call reverseL recursively to get to the last element
     ;append joints [last element] [second last] [third last] ... [first element]
  )
)

(isPalindrome myList)
