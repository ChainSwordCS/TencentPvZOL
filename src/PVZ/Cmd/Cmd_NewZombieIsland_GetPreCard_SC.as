package PVZ.Cmd
{
   import com.tencent.protobuf.Message;
   import com.tencent.protobuf.ReadUtils;
   import com.tencent.protobuf.WireType;
   import com.tencent.protobuf.WriteUtils;
   import com.tencent.protobuf.WritingBuffer;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.tencent.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_INT64;
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class Cmd_NewZombieIsland_GetPreCard_SC extends Message
   {
      
      public static const $MessageID:String = "PVZ.Cmd.Cmd_NewZombieIsland_GetPreCard_SC";
      
      public static const CARDLIST:RepeatedFieldDescriptor$TYPE_INT64 = new RepeatedFieldDescriptor$TYPE_INT64("PVZ.Cmd.Cmd_NewZombieIsland_GetPreCard_SC.cardList","cardList",1 << 3 | WireType.VARINT);
      
      public static const HASSET:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("PVZ.Cmd.Cmd_NewZombieIsland_GetPreCard_SC.hasSet","hasSet",2 << 3 | WireType.VARINT);
       
      
      public var cardList:Array;
      
      private var hasSet$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      public function Cmd_NewZombieIsland_GetPreCard_SC()
      {
         this.cardList = [];
         super();
      }
      
      override public function get $messageID() : String
      {
         return Cmd_NewZombieIsland_GetPreCard_SC.$MessageID;
      }
      
      public function clearHasSet() : void
      {
         this.hasField$0 &= 4294967294;
         this.hasSet$field = new Boolean();
      }
      
      public function get hasHasSet() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set hasSet(param1:Boolean) : void
      {
         this.hasField$0 |= 1;
         this.hasSet$field = param1;
      }
      
      public function get hasSet() : Boolean
      {
         return this.hasSet$field;
      }
      
      override public final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.cardList.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT64(param1,this.cardList[_loc2_]);
            _loc2_++;
         }
         if(this.hasHasSet)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_BOOL(param1,this.hasSet$field);
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
         }
      }
      
      override public final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         var _loc4_:uint = 0;
         var _loc3_:uint = 0;
         while(param1.bytesAvailable > param2)
         {
            _loc4_ = ReadUtils.read$TYPE_UINT32(param1);
            switch(_loc4_ >> 3)
            {
               case 1:
                  if((_loc4_ & 7) == WireType.LENGTH_DELIMITED)
                  {
                     ReadUtils.readPackedRepeated(param1,ReadUtils.read$TYPE_INT64,this.cardList);
                  }
                  else
                  {
                     this.cardList.push(ReadUtils.read$TYPE_INT64(param1));
                  }
                  break;
               case 2:
                  if(_loc3_ != 0)
                  {
                     throw new IOError("Bad data format: Cmd_NewZombieIsland_GetPreCard_SC.hasSet cannot be set twice.");
                  }
                  _loc3_++;
                  this.hasSet = ReadUtils.read$TYPE_BOOL(param1);
                  break;
               default:
                  super.readUnknown(param1,_loc4_);
                  break;
            }
         }
      }
   }
}
