package com.system.po;

/**
 *  Paging VO
 */
public class PagingVO {

    // default: page 1
    private int currentPageNo = 1;
    // total page
    private int totalCount;
    // max volume
    private int pageSize = 5;
    // last page
    private int upPageNo;
    // next page
    private int nextPageNo;
    // go to page, default 0
    private int toPageNo = 0;

    public void setToPageNo(Integer toPageNo) {
        //new page
        this.toPageNo = (toPageNo-1) * pageSize ;
        //renew current page
        setCurrentPageNo(toPageNo);
    }

    public Integer getTopageNo() {
        return toPageNo;
    }

    public int getCurrentPageNo() {
        return currentPageNo;
    }

    public void setCurrentPageNo(int currentPageNo) {
        if (currentPageNo != 1) {
            this.upPageNo = currentPageNo -1;
        }
        this.nextPageNo = currentPageNo + 1;
        this.currentPageNo = currentPageNo;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        if (totalCount%pageSize > 0) {
            this.totalCount = (totalCount/pageSize)+1;
        } else {
            this.totalCount = totalCount/pageSize;
        }

    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getUpPageNo() {
        return upPageNo;
    }

    public void setUpPageNo(int upPageNo) {
        this.upPageNo = upPageNo;
    }

    public int getNextPageNo() {
        return nextPageNo;
    }

    public void setNextPageNo(int nextPageNo) {
        this.nextPageNo = nextPageNo;
    }
}
