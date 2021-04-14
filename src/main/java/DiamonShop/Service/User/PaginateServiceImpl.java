package DiamonShop.Service.User;

import org.springframework.stereotype.Service;

import DiamonShop.Dto.User.PaginatesDto;

@Service
public class PaginateServiceImpl {
	public PaginatesDto GetInfoPaginates(int totalData, int limit, int currentPage) {
		PaginatesDto paginate = new PaginatesDto();
		paginate.setTotalPage(SetInfoTotalPage(totalData, limit));
		paginate.setCurrentPage(CheckCurrentPage(currentPage, paginate.getTotalPage()));
		paginate.setLimit(limit);
		paginate.setStart(FindStart(currentPage, limit));
		paginate.setEnd(FindEnd(currentPage, limit, totalData));
		return paginate;
	}

	private int FindEnd(int currentPage, int limit, int totalData) {
		if (currentPage * limit <= totalData) {
			return currentPage * limit;
		} else {
			return totalData;
		}
	}

	private int FindStart(int currentPage, int limit) {
		return (currentPage - 1) * limit + 1;
	}

	private int CheckCurrentPage(int currentPage, int totalPage) {
		if (currentPage < 1) {
			return 1;
		} else if (currentPage > totalPage) {
			return totalPage;
		} else {
			return currentPage;
		}
	}

	private Integer SetInfoTotalPage(int totalData, int limit) {
		int totalPage = 0;
		totalPage = totalData / limit;
		totalPage = totalPage * limit < totalData? totalPage + 1: totalPage;
		return totalPage;
	}
}
