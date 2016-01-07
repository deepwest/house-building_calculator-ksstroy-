package ua.ksstroy.converter;

import ua.ksstroy.logic.work.Adjustment;
import ua.ksstroy.logic.work.AdjustmentImpl;
import ua.ksstroy.models.work.AdjustmentModel;

public class AdjusmentModelToAdjustmentConverter implements Converter<AdjustmentModel, Adjustment> {
    @Override
    public Adjustment convert(AdjustmentModel adjustmentModel) {
        Adjustment adjustment = new AdjustmentImpl();
        adjustment.setId(adjustmentModel.getId());
        adjustment.setValue(adjustmentModel.getValue());
        adjustment.setAbsolute(adjustmentModel.isAbsolute());

        return adjustment;
    }
}
