package food.Service.User;

import org.springframework.stereotype.Service;

import food.Dto.User.PaginatesDto;

@Service
public interface IPaginatesService {
	public PaginatesDto GetInfoPaginates(int totalData, int limit, int currentPage);
}
