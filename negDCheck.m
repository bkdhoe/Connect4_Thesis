function gWinDn = negDCheck(boardArr,startRow,startCol,playNum)
    k = startRow;
    l = startCol;
    BsizeDn = size(boardArr);
    colsDn = BsizeDn(2);
    rowsDn = BsizeDn(1);
    countDn = 0;
    gWinDn =false;
    while(k < rowsDn && l > colsDn)
        if( boardArr(k,l)==playNum && boardArr(k+1,l+1)==playNum)
                countDn = countDn +1;
                if (countDn >= 3)
                    gWinDn = true;
                end
            else
                countDn = 0;
        end
        k = k+1;
        l = l+1;
    end
end