package DiamonShop.Service.User;

import org.springframework.stereotype.Service;

import DiamonShop.Dto.User.PaginatesDto;

@Service
public interface IPaginatesService {
	public PaginatesDto GetInfoPaginates(int totalData, int limit, int currentPage);
}
