package com.in.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.in.model.Entity.Shipping;
import com.in.model.Service.ShippingService;



@Component
public class Demohandler 
{
	@Autowired
	private ShippingService shippingService;
	
	public String add(Shipping shipping)
	{
		shippingService.add(shipping);
		return "success";
	}

	
	public Shipping initFlow()
	{
		return new Shipping();
	}

	public String validateDetails(Shipping shipping,MessageContext messageContext){
		String status = "success";
		/*if(shipping.getNid().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"nid").defaultText("UserId cannot be Empty").build());
			status = "failure";
		}
		*/if(shipping.getEmail().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("Email cannot be Empty").build());
			status = "failure";
		}

		if(shipping.getCity()==null){
			messageContext.addMessage(new MessageBuilder().error().source(
					"city").defaultText("City cannot be Empty").build());
			status = "failure";
		}
		if(shipping.getState()==null){
			messageContext.addMessage(new MessageBuilder().error().source(
					"state").defaultText("State cannot be Empty").build());
			status = "failure";
		}
		if(shipping.getPn()==null)
		{
			messageContext.addMessage(new MessageBuilder().error().source(
					"pn").defaultText("Pin number cannot be Empty").build());
			status = "failure";
		}
	return status;
	}
}