package PVZ.Cmd
{
   import com.tencent.protobuf.Message;
   import com.tencent.protobuf.ReadUtils;
   import com.tencent.protobuf.WireType;
   import com.tencent.protobuf.WriteUtils;
   import com.tencent.protobuf.WritingBuffer;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.tencent.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class Dto_Adventure_Route extends Message
   {
      
      public static const $MessageID:String = "PVZ.Cmd.Dto_Adventure_Route";
      
      public static const ROUTEID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Dto_Adventure_Route.routeId","routeId",1 << 3 | WireType.VARINT);
      
      public static const FIRSTPLACE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Dto_Adventure_Route.firstPlace","firstPlace",2 << 3 | WireType.VARINT);
      
      public static const SECONDPLACE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Dto_Adventure_Route.secondPlace","secondPlace",3 << 3 | WireType.VARINT);
      
      public static const THIRDPLACE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Dto_Adventure_Route.thirdPlace","thirdPlace",4 << 3 | WireType.VARINT);
      
      public static const EXTRAREWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("PVZ.Cmd.Dto_Adventure_Route.extraReward","extraReward",5 << 3 | WireType.LENGTH_DELIMITED,Dto_IdNum);
       
      
      private var routeId$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var firstPlace$field:uint;
      
      private var secondPlace$field:uint;
      
      private var thirdPlace$field:uint;
      
      public var extraReward:Array;
      
      public function Dto_Adventure_Route()
      {
         this.extraReward = [];
         super();
      }
      
      override public function get $messageID() : String
      {
         return Dto_Adventure_Route.$MessageID;
      }
      
      public function clearRouteId() : void
      {
         this.hasField$0 &= 4294967294;
         this.routeId$field = new uint();
      }
      
      public function get hasRouteId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set routeId(param1:uint) : void
      {
         this.hasField$0 |= 1;
         this.routeId$field = param1;
      }
      
      public function get routeId() : uint
      {
         return this.routeId$field;
      }
      
      public function clearFirstPlace() : void
      {
         this.hasField$0 &= 4294967293;
         this.firstPlace$field = new uint();
      }
      
      public function get hasFirstPlace() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set firstPlace(param1:uint) : void
      {
         this.hasField$0 |= 2;
         this.firstPlace$field = param1;
      }
      
      public function get firstPlace() : uint
      {
         return this.firstPlace$field;
      }
      
      public function clearSecondPlace() : void
      {
         this.hasField$0 &= 4294967291;
         this.secondPlace$field = new uint();
      }
      
      public function get hasSecondPlace() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set secondPlace(param1:uint) : void
      {
         this.hasField$0 |= 4;
         this.secondPlace$field = param1;
      }
      
      public function get secondPlace() : uint
      {
         return this.secondPlace$field;
      }
      
      public function clearThirdPlace() : void
      {
         this.hasField$0 &= 4294967287;
         this.thirdPlace$field = new uint();
      }
      
      public function get hasThirdPlace() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set thirdPlace(param1:uint) : void
      {
         this.hasField$0 |= 8;
         this.thirdPlace$field = param1;
      }
      
      public function get thirdPlace() : uint
      {
         return this.thirdPlace$field;
      }
      
      override public final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasRouteId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.routeId$field);
         }
         if(this.hasFirstPlace)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.firstPlace$field);
         }
         if(this.hasSecondPlace)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.secondPlace$field);
         }
         if(this.hasThirdPlace)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.thirdPlace$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.extraReward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.extraReward[_loc2_]);
            _loc2_++;
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
         }
      }
      
      override public final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         var _loc7_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         while(param1.bytesAvailable > param2)
         {
            _loc7_ = ReadUtils.read$TYPE_UINT32(param1);
            switch(_loc7_ >> 3)
            {
               case 1:
                  if(_loc3_ != 0)
                  {
                     throw new IOError("Bad data format: Dto_Adventure_Route.routeId cannot be set twice.");
                  }
                  _loc3_++;
                  this.routeId = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               case 2:
                  if(_loc4_ != 0)
                  {
                     throw new IOError("Bad data format: Dto_Adventure_Route.firstPlace cannot be set twice.");
                  }
                  _loc4_++;
                  this.firstPlace = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               case 3:
                  if(_loc5_ != 0)
                  {
                     throw new IOError("Bad data format: Dto_Adventure_Route.secondPlace cannot be set twice.");
                  }
                  _loc5_++;
                  this.secondPlace = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               case 4:
                  if(_loc6_ != 0)
                  {
                     throw new IOError("Bad data format: Dto_Adventure_Route.thirdPlace cannot be set twice.");
                  }
                  _loc6_++;
                  this.thirdPlace = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               case 5:
                  this.extraReward.push(ReadUtils.read$TYPE_MESSAGE(param1,new Dto_IdNum()));
                  break;
               default:
                  super.readUnknown(param1,_loc7_);
                  break;
            }
         }
      }
   }
}
